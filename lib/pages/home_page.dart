import 'package:flutter/material.dart';
import 'package:nft_app_ui/components/my_appbar.dart';

import '../components/my_tabbar.dart';
import '../tabs/recent_tab.dart';
import '../tabs/top_tab.dart';
import '../tabs/trending_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _searchButtonTapped() {}

  List tabOptions = const [
    ['Recent', RecentTab()],
    ['Trending', TrendingTab()],
    ['Top', TopTab],
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabOptions.length,
        child: Scaffold(
          backgroundColor: Colors.grey[300],
          body: ListView(
            children: [
              MyAppBar(
                title: 'Explore Collections',
                onTap: _searchButtonTapped(),
                onSearchTap: () {},
              ),
              SizedBox(
                height: 600,
                child: MyTabBar(
                  tabOptions: tabOptions,
                ),
              )
            ],
          ),
        ));
  }
}
