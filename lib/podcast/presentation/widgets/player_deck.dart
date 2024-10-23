import 'dart:ui' as ui;

import 'package:audio_service/audio_service.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:radio_abia/common/widgets/control_buttons.dart';
import 'package:radio_abia/core/presentation/main_player_view.dart';
import 'package:radio_abia/services/page_manager.dart';
import 'package:radio_abia/services/service_locator.dart';

class PlayerDeck extends StatelessWidget {
  const PlayerDeck({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final pageManager = getIt<PageManager>();

    return ValueListenableBuilder<AudioProcessingState>(
      valueListenable: pageManager.playbackStatNotifier,
      builder: (context, processingState, __) {
        if (processingState == AudioProcessingState.idle) {
          return const SizedBox();
        }

        return ValueListenableBuilder<MediaItem?>(
            valueListenable: pageManager.currentSongNotifier,
            builder: (context, mediaItem, __) {
              if (mediaItem == null) return const SizedBox();

              return Dismissible(
                key: const Key('mini_player'),
                direction: DismissDirection.down,
                onDismissed: (direction) {
                  Feedback.forLongPress(context);
                  pageManager.stop();
                },
                child: Dismissible(
                  key: Key(mediaItem.id),
                  confirmDismiss: (direction) {
                    if (direction == DismissDirection.startToEnd) {
                      pageManager.previous();
                    } else {
                      pageManager.next();
                    }
                    return Future.value(false);
                  },
                  child: Card(
                    margin: const EdgeInsets.symmetric(horizontal: 0.0),
                    elevation: 0,
                    color: Colors.black12,
                    child: SizedBox(
                      height: 77.0,
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ui.ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                          child: ListTile(
                            dense: false,
                            onTap: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  opaque: false,
                                  pageBuilder: (_, ___, __) =>
                                      const MainPlayerView(),
                                ),
                              );
                            },
                            title: Text(
                              mediaItem.title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: Text(
                              mediaItem.artist ?? '',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            leading: Hero(
                              tag: 'currentArtWork',
                              child: Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                clipBehavior: Clip.antiAlias,
                                child: SizedBox.square(
                                  dimension: 40.0,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: CachedNetworkImage(
                                          cacheManager: CacheManager(Config(
                                            'customCacheKey',
                                            stalePeriod:
                                                const Duration(days: 2),
                                          )),
                                          imageUrl: mediaItem.artUri.toString(),
                                          fit: BoxFit.cover,
                                          errorWidget: (context, url, error) {
                                            return Image.asset(
                                              "assets/images/logo.png",
                                              fit: BoxFit.cover,
                                            );
                                          },
                                          placeholder: (context, url) {
                                            return Image.asset(
                                              "assets/images/logo.png",
                                              fit: BoxFit.cover,
                                            );
                                          },
                                          width: 40,
                                          height: 40,
                                        ),
                                      ),
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white
                                                  .withOpacity(0.3)),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      Container(
                                        width: 15,
                                        height: 15,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff181B2C),
                                          borderRadius:
                                              BorderRadius.circular(7.5),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            trailing: const ControlButtons(
                              miniPlayer: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            });
      },
    );
  }
}
