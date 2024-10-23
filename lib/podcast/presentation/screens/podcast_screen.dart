import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radio_abia/common/widgets/custom_app_bar.dart';
import 'package:radio_abia/core/constants/size.dart';
import 'package:radio_abia/core/presentation/widgets/search_bar.dart';
import 'package:radio_abia/podcast/presentation/widgets/media_list.dart';
import 'package:radio_abia/podcast/shared/providers.dart';
import 'package:radio_abia/services/media_handler.dart';
import 'package:radio_abia/services/request_audio_permissions.dart';

class PodcastScreen extends ConsumerStatefulWidget {
  const PodcastScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PodcastScreenState();
}

class _PodcastScreenState extends ConsumerState<PodcastScreen> {
  late MediaHandler mediaHandler;

  @override
  void initState() {
    Future.microtask(() => fetchPodcast());
    requestAudioPermission();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var podcastState = ref.watch(podcastStateNotifierProvider);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: const CustomAppBar(title: "Podcast Library"),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: AppSize.generalPadding),
        child: Column(
          children: [
            SizedBox(height: AppSize.searchSpace),
            const CustomSearchBar(),
            SizedBox(height: AppSize.smallSpace),
            Expanded(
              child: podcastState.maybeWhen(
                orElse: () {
                  return const SizedBox();
                },
                failure: (failure) => const Center(
                  child: Text("Error occurred"),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(
                    strokeCap: StrokeCap.round,
                  ),
                ),
                success: (media) => MediaList(
                  mediaItemList: media,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  fetchPodcast() {
    ref.read(podcastStateNotifierProvider.notifier).fetchPodcast();
  }
}
