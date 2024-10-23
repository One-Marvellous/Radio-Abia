import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radio_abia/core/constants/color.dart';
import 'package:radio_abia/services/page_manager.dart';
import 'package:radio_abia/services/service_locator.dart';

class ControlButtons extends StatelessWidget {
  final bool shuffle;
  final bool miniPlayer;
  final List<String> buttons;

  const ControlButtons(
      {super.key,
      this.shuffle = false,
      this.miniPlayer = false,
      this.buttons = const ['Previous', 'Play/Pause', 'Next']});

  @override
  Widget build(BuildContext context) {
    final pageManager = getIt<PageManager>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: buttons.map((e) {
        switch (e) {
          case "Previous":
            return ValueListenableBuilder<bool>(
                valueListenable: pageManager.isFirstSongNotifier,
                builder: (context, isFirst, __) {
                  return IconButton(
                      onPressed: isFirst ? null : pageManager.previous,
                      icon: SvgPicture.asset(
                        'assets/svg/previous.svg',
                        width: miniPlayer ? 20 : 50,
                        height: miniPlayer ? 20 : 50,
                        colorFilter: ColorFilter.mode(
                            isFirst
                                ? AppColors.fadedColor
                                : AppColors.textColor,
                            BlendMode.srcIn),
                      ));
                });
          case 'Play/Pause':
            return SizedBox(
              width: miniPlayer ? 40 : 70,
              height: miniPlayer ? 40 : 70,
              child: ValueListenableBuilder<ButtonState>(
                valueListenable: pageManager.playButtonNotifier,
                builder: (context, value, __) {
                  return Stack(
                    children: [
                      if (value == ButtonState.loading)
                        Center(
                          child: SizedBox(
                            width: miniPlayer ? 40 : 70,
                            height: miniPlayer ? 40 : 70,
                            child: const CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  AppColors.textColor),
                            ),
                          ),
                        ),
                      if (miniPlayer)
                        Center(
                          child: value == ButtonState.playing
                              ? IconButton(
                                  onPressed: pageManager.pause,
                                  icon: const Icon(
                                    Icons.pause_rounded,
                                    color: AppColors.textColor,
                                  ),
                                )
                              : IconButton(
                                  onPressed: pageManager.play,
                                  icon: const Icon(
                                    Icons.play_arrow,
                                    color: AppColors.textColor,
                                  ),
                                ),
                        )
                      else
                        Center(
                          child: value == ButtonState.playing
                              ? IconButton(
                                  onPressed: pageManager.pause,
                                  icon: const Icon(
                                    Icons.pause_rounded,
                                    color: AppColors.textColor,
                                    size: 50,
                                  ),
                                )
                              : IconButton(
                                  onPressed: pageManager.play,
                                  icon: const Icon(
                                    Icons.play_arrow,
                                    color: AppColors.textColor,
                                    size: 50,
                                  ),
                                ),
                        )
                    ],
                  );
                },
              ),
            );
          case "Next":
            return ValueListenableBuilder<bool>(
                valueListenable: pageManager.isLastSongNotifier,
                builder: (context, isLast, __) {
                  return IconButton(
                      onPressed: isLast ? null : pageManager.next,
                      icon: SvgPicture.asset(
                        'assets/svg/next.svg',
                        width: miniPlayer ? 20 : 50,
                        height: miniPlayer ? 20 : 50,
                        colorFilter: ColorFilter.mode(
                            isLast
                                ? AppColors.fadedColor
                                : AppColors.textColor,
                            BlendMode.srcIn),
                      ));
                });
          default:
            return Container();
        }
      }).toList(),
    );
  }
}
