import 'package:audio_service/audio_service.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radio_abia/common/widgets/custom_app_bar.dart';
import 'package:radio_abia/common/widgets/input_text.dart';
import 'package:radio_abia/core/constants/color.dart';
import 'package:radio_abia/core/constants/size.dart';
import 'package:radio_abia/services/page_manager.dart';
import 'package:radio_abia/services/service_locator.dart';
import 'package:transparent_image/transparent_image.dart';

class MainPlayerView extends StatelessWidget {
  const MainPlayerView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final pageManager = getIt<PageManager>();
    return Dismissible(
      key: const Key('Podcast Detail'),
      direction: DismissDirection.down,
      background: const ColoredBox(color: Colors.transparent),
      onDismissed: (direction) {
        Navigator.pop(context);
      },
      child: Scaffold(
        appBar:
            const CustomAppBar(title: "Podcast Detail", showBackButton: true),
        body: ValueListenableBuilder<MediaItem?>(
            valueListenable: pageManager.currentSongNotifier,
            builder: (context, mediaItem, child) {
              if (mediaItem == null) return const SizedBox();
              return Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppSize.generalPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: AppSize.searchSpace),
                    Hero(
                      tag: "currentArtWork",
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: CachedNetworkImage(
                          imageUrl: mediaItem.artUri.toString(),
                          placeholder: (context, url) => Container(
                            width: 342.w,
                            height: 137.h,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: MemoryImage(kTransparentImage),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          cacheManager: CacheManager(Config(
                            'customCacheKey',
                            stalePeriod: const Duration(days: 2),
                          )),
                          errorWidget: (context, url, error) => Container(
                            width: 342.w,
                            height: 344.h,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: MemoryImage(kTransparentImage),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          imageBuilder: (context, imageProvider) => Container(
                            width: 342.w,
                            height: 344.h,
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
                    ),
                    SizedBox(height: 40.h),
                    InputText(
                      fontSize: 18,
                      text: mediaItem.title,
                      fontWeight: FontWeight.w600,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    InputText(
                      fontSize: 12,
                      text: (mediaItem.extras?['date'] ?? ''),
                      fontWeight: FontWeight.w500,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 24.h),
                    ValueListenableBuilder<ProgressBarState>(
                      valueListenable: pageManager.progressNotifier,
                      builder: (context, value, child) {
                        return ProgressBar(
                          progress: value.current,
                          total: value.total,
                          buffered: value.buffered,
                          onSeek: pageManager.seek,
                          barHeight: 5,
                          thumbRadius: 2.5,
                          thumbGlowRadius: 5,
                          timeLabelLocation: TimeLabelLocation.below,
                          timeLabelPadding: 10,
                        );
                      },
                    ),
                    SizedBox(height: 24.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ValueListenableBuilder<bool>(
                          valueListenable: pageManager.isFirstSongNotifier,
                          builder: (context, isFirst, child) {
                            return IconButton(
                                onPressed:
                                    isFirst ? null : pageManager.previous,
                                icon: SvgPicture.asset(
                                  'assets/svg/previous.svg',
                                  colorFilter: ColorFilter.mode(
                                      isFirst
                                          ? AppColors.fadedColor
                                          : AppColors.textColor,
                                      BlendMode.srcIn),
                                ));
                          },
                        ),
                        ValueListenableBuilder<ProgressBarState>(
                          valueListenable: pageManager.progressNotifier,
                          builder: (context, value, child) => IconButton(
                              onPressed: () {
                                final currentPosition = value.current;

                                // Ensure the new position is within the audio duration
                                final newPosition = currentPosition -
                                    const Duration(seconds: 10);
                                if (newPosition >= Duration.zero) {
                                  pageManager.seek(newPosition);
                                } else {
                                  pageManager.seek(Duration
                                      .zero); // Move to the start if exceeding duration
                                }
                              },
                              icon: SvgPicture.asset(
                                  'assets/svg/skip_backwards.svg')),
                        ),
                        ValueListenableBuilder<ButtonState>(
                            valueListenable: pageManager.playButtonNotifier,
                            builder: (context, value, child) {
                              return SizedBox(
                                width: 75,
                                height: 75,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    if (value == ButtonState.loading)
                                      const SizedBox(
                                        width: 70,
                                        height: 70,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                  AppColors.textColor),
                                        ),
                                      ),
                                    value == ButtonState.playing
                                        ? IconButton(
                                            onPressed: pageManager.pause,
                                            icon: SvgPicture.asset(
                                                'assets/svg/pause.svg'))
                                        : IconButton(
                                            onPressed: pageManager.play,
                                            icon: SvgPicture.asset(
                                                'assets/svg/play.svg')),
                                  ],
                                ),
                              );
                            }),
                        ValueListenableBuilder<ProgressBarState>(
                          valueListenable: pageManager.progressNotifier,
                          builder: (context, value, child) => IconButton(
                              onPressed: () {
                                final currentPosition = value.current;
                                final duration = value.total;

                                // Ensure the new position is within the audio duration
                                final newPosition = currentPosition +
                                    const Duration(seconds: 10);
                                if (newPosition <= duration) {
                                  pageManager.seek(newPosition);
                                } else {
                                  pageManager.seek(
                                      duration); // Move to the end if exceeding duration
                                }
                              },
                              icon: SvgPicture.asset(
                                  'assets/svg/skip_forward.svg')),
                        ),
                        ValueListenableBuilder<bool>(
                          valueListenable: pageManager.isLastSongNotifier,
                          builder: (context, isLast, child) {
                            return IconButton(
                                onPressed: isLast ? null : pageManager.next,
                                icon: SvgPicture.asset(
                                  'assets/svg/next.svg',
                                  colorFilter: ColorFilter.mode(
                                      isLast
                                          ? AppColors.fadedColor
                                          : AppColors.textColor,
                                      BlendMode.srcIn),
                                ));
                          },
                        ),
                      ],
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
