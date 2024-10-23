import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radio_abia/common/widgets/input_text.dart';
import 'package:radio_abia/core/constants/color.dart';
import 'package:transparent_image/transparent_image.dart';

class ListenLiveTile extends StatelessWidget {
  const ListenLiveTile(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.description});
  final String imageUrl;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              placeholder: (context, url) => Container(
                width: 342.w,
                height: 137.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: MemoryImage(kTransparentImage), fit: BoxFit.cover),
                ),
              ),
              cacheManager: CacheManager(Config(
                'customCacheKey',
                stalePeriod: const Duration(days: 2),
              )),
              errorWidget: (context, url, error) => Container(
                width: 342.w,
                height: 137.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: MemoryImage(kTransparentImage), fit: BoxFit.cover),
                ),
              ),
              imageBuilder: (context, imageProvider) => Container(
                width: 342.w,
                height: 137.h,
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
          Container(
            width: 342.w,
            height: 137.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.2),
                  const Color(0xFF15411F),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0XFFEC4F3C),
                            borderRadius: BorderRadius.circular(10)),
                        child: InputText(
                          fontSize: 10.sp,
                          text: 'Live',
                          fontWeight: FontWeight.w600,
                          color: AppColors.white,
                          textScaler: TextScaler.noScaling,
                        ),
                      ),
                      InputText(
                        fontSize: 12.sp,
                        text: "Tap to listen live",
                        textScaler: TextScaler.noScaling,
                        fontStyle: FontStyle.italic,
                      )
                    ],
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          InputText(
                            fontSize: 14.sp,
                            text: "text",
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          InputText(
                            fontSize: 10.sp,
                            text: description,
                            fontWeight: FontWeight.w400,
                          )
                        ],
                      )),
                      SvgPicture.asset("assets/svg/play_white.svg")
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
