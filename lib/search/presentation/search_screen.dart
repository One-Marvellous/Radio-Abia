import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radio_abia/common/widgets/custom_app_bar.dart';
import 'package:radio_abia/core/constants/size.dart';
import 'package:radio_abia/core/presentation/widgets/search_bar.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({
    super.key,
    required this.navigateToResult,
    required this.query,
  });

  final String query;

  final void Function(String searchTerm) navigateToResult;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: const CustomAppBar(title: "Search"),
      body: Column(
        children: [
          SizedBox(height: AppSize.searchSpace),
          const CustomSearchBar(),
          SizedBox(height: AppSize.smallSpace),
          Text("Found 3 Found 3 results for ${widget.query}"),
          Expanded(child: ListView.builder(
            // TODO itemCount, widget...
            itemBuilder: (context, index) {
              return const SizedBox();
            },
          ))
        ],
      ),
    );
  }
}
