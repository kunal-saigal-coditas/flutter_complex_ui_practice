import 'package:complex_ui_assignment/core/constants/dummy_data.dart';
import 'package:complex_ui_assignment/core/theme/buildcontext_extension.dart';
import 'package:complex_ui_assignment/screens/home_screen/widgets/artist_display_widget.dart';
import 'package:complex_ui_assignment/screens/home_screen/widgets/header_widget.dart';
import 'package:complex_ui_assignment/screens/home_screen/widgets/list_display_widget.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 5,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.background,
      appBar: AppBar(
        // bottom: PreferredSize(
        //   preferredSize: Size(MediaQuery.of(context).size.width, 0),
        //   child: const Divider(
        //     thickness: 2,
        //   ),
        // ),
        backgroundColor: context.appColors.background,
        automaticallyImplyLeading: false,
        // elevation: 0,
        // shadowColor: context.appColors.background,
        forceMaterialTransparency: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              CupertinoIcons.music_note_2,
              color: context.appColors.primary,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              "Mume",
              style: context.appTextTheme.titleTextStyle,
            )
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              CupertinoIcons.search,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
          ),
          child: Column(
            children: [
              TabBar(
                isScrollable: true,
                controller: _tabController,
                indicatorColor: context.appColors.primary,
                labelColor: context.appColors.primary,
                unselectedLabelColor:
                    context.appColors.onBackground.withOpacity(0.5),
                tabs: const [
                  Tab(
                    text: 'Suggested',
                  ),
                  Tab(
                    text: 'Songs',
                  ),
                  Tab(
                    text: 'Artist',
                  ),
                  Tab(
                    text: 'Albums',
                  ),
                  Tab(
                    text: 'Favorites',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const HeaderWidget(
                categoryName: "Recently Played",
              ),
              const SizedBox(
                height: 10.0,
              ),
              ListDisplayWidget(
                category: DummyData.recentlyPlayed,
              ),
              const SizedBox(
                height: 20,
              ),
              const HeaderWidget(
                categoryName: "Artists",
              ),
              const SizedBox(
                height: 10.0,
              ),
              ArtistDisplay(
                artistList: DummyData.artistsList,
              ),
              const HeaderWidget(
                categoryName: "Most Played",
              ),
              const SizedBox(
                height: 10.0,
              ),
              ListDisplayWidget(
                category: DummyData.recentlyPlayed,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
