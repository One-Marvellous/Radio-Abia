import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:radio_abia/podcast/presentation/widgets/player_deck.dart';

class BottomNav extends ConsumerStatefulWidget {
  const BottomNav({
    super.key,
    required this.navigationShell,
    required this.children,
  });
  final StatefulNavigationShell navigationShell;
  final List<Widget> children;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BottomNavState();
}

class _BottomNavState extends ConsumerState<BottomNav>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final List _bottomComp = [
    {
      'name': 'Listen Live',
      'icon': 'assets/svg/live_listen.svg',
    },
    {
      'name': 'Podcast Library',
      'icon': 'assets/svg/podcast_library.svg',
    },
  ];

  void _goToBranch(int index) {
    widget.navigationShell.goBranch(index,
        initialLocation: index == widget.navigationShell.currentIndex);
  }

  @override
  void initState() {
    tabController = TabController(
      length: _bottomComp.length,
      vsync: this,
      initialIndex:
          widget.navigationShell.currentIndex, // sync with router index
    );

    // Listen to tab changes and trigger navigation
    tabController.addListener(() {
      if (!tabController.indexIsChanging) {
        _goToBranch(tabController.index);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                  controller: tabController, children: widget.children),
            ),
            const PlayerDeck()
          ],
        ),
        bottomNavigationBar: TabBar(
            controller: tabController,
            indicatorColor: Colors.transparent,
            indicatorWeight: 1,
            labelColor: const Color(0XFF15411F),
            labelStyle: const TextStyle(fontSize: 10),
            unselectedLabelColor: const Color(0XFF757575),
            unselectedLabelStyle: const TextStyle(fontSize: 10),
            tabs: List.generate(
                _bottomComp.length,
                (index) => Tab(
                      text: _bottomComp[index]['name'],
                      icon: SvgPicture.asset(
                        _bottomComp[index]['icon'],
                        colorFilter: ColorFilter.mode(
                            (widget.navigationShell.currentIndex == index)
                                ? const Color(0XFF15411F)
                                : const Color(0XFF757575),
                            BlendMode.srcIn),
                      ),
                    ))));
  }
}
