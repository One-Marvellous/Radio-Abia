import 'package:audio_service/audio_service.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radio_abia/common/widgets/input_text.dart';
import 'package:radio_abia/core/utils/formatted_text.dart';

class AudioItem extends StatelessWidget {
  final String? searchedWord;

  final MediaItem mediaItem;
  final VoidCallback onPlayButtonPressed;

  const AudioItem({
    super.key,
    this.searchedWord,
    required this.mediaItem,
    required this.onPlayButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListTile(
          contentPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          trailing: IconButton(
              onPressed: onPlayButtonPressed,
              icon: SvgPicture.asset('assets/svg/play_button_default.svg')),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: CachedNetworkImage(
              imageUrl: mediaItem.artUri.toString(),
              cacheManager: CacheManager(Config(
                'customCacheKey',
                stalePeriod: const Duration(days: 2),
              )),
              errorWidget: (context, url, error) {
                return SizedBox(
                    width: 56.w,
                    height: 56.h,
                    child: Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.cover,
                    ));
              },
              placeholder: (context, url) {
                return SizedBox(
                    width: 56.w,
                    height: 56.h,
                    child: Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.cover,
                    ));
              },
              imageBuilder: (context, imageProvider) => Container(
                width: 56.w,
                height: 56.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              fadeInDuration: const Duration(milliseconds: 700),
            ),
          ),
          title: searchedWord != null
              ? formattedText(
                  corpus: mediaItem.title,
                  searchedWord: searchedWord!,
                  context: context,
                )
              : InputText(
                  fontSize: 12.sp,
                  text: mediaItem.title,
                  fontWeight: FontWeight.w600,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
          subtitle: InputText(
              fontSize: 10.sp,
              textScaler: TextScaler.noScaling,
              text:
                  "${mediaItem.extras?['date']} | ${mediaItem.extras?['time']} | ${mediaItem.extras?['duration']}"),
          onTap: onPlayButtonPressed),
    );
  }
}
