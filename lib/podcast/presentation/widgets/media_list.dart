// SongsList class to display a list of songs
import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radio_abia/common/widgets/input_text.dart';
import 'package:radio_abia/podcast/presentation/widgets/audio_item.dart';
import 'package:radio_abia/services/player_invoke.dart';

class MediaList extends ConsumerWidget {
  final List<MediaItem> mediaItemList;

  const MediaList({
    super.key,
    required this.mediaItemList,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Display a message if there are no songs
    return mediaItemList.isEmpty
        ? RefreshIndicator(
            onRefresh: () async {
              //  TODO: Refresh logic
            },
            child: Column(
              children: [
                SvgPicture.asset("assets/svg/warning.svg"),
                SizedBox(height: 14.h),
                InputText(
                  fontSize: 18.sp,
                  text: "No Podcast found in library",
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          )
        : ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: mediaItemList.length,
            itemBuilder: (context, index) {
              MediaItem mediaItem = mediaItemList[index];

              // Build the SongItem based on the playback state
              return Padding(
                padding: EdgeInsets.only(bottom: 24.h),
                child: AudioItem(
                    mediaItem: mediaItem,
                    onPlayButtonPressed: () => playerPlayProcessDebounce(
                        index: index, songsList: mediaItemList)),
              );
            },
          );
  }
}
