import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radio_abia/common/widgets/custom_app_bar.dart';
import 'package:radio_abia/core/constants/size.dart';
import 'package:radio_abia/core/presentation/widgets/search_bar.dart';
import 'package:radio_abia/live/presentation/widgets/listen_live_empty_state.dart';

class LiveScreen extends ConsumerStatefulWidget {
  const LiveScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LiveScreenState();
}

class _LiveScreenState extends ConsumerState<LiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Listen Live"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.generalPadding),
        child: Column(
          children: [
            SizedBox(height: AppSize.searchSpace),
            const CustomSearchBar(),
            SizedBox(height: AppSize.smallSpace),
            Expanded(
                child: RefreshIndicator(
              child: const EmptyLiveWidget(),
              onRefresh: () async {},
            ))
          ],
        ),
      ),
    );
  }
}
