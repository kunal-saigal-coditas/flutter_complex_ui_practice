import './widgets/artist_display_widget.dart';
import './widgets/header_widget.dart';
import './widgets/list_display_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../data_and_constants/constants.dart';
import '../../data_and_constants/dummy_data.dart';

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
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              CupertinoIcons.music_note_2,
              color: primaryColor,
            ),
            const SizedBox(
              width: 15,
            ),
            const Text(
              "Mume",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Toronto Subway'),
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
                // indicatorColor: Colors.white,
                isScrollable: true,
                controller: _tabController,
                tabs: const [
                  Tab(text: 'Suggested'),
                  Tab(text: 'Songs'),
                  Tab(text: 'Artist'),
                  Tab(text: 'Albums'),
                  Tab(text: 'Favorites'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const HeaderWidget(categoryName: "Recently Played"),
              const SizedBox(height: 10.0),
              ListDisplayWidget(category: DummyData.recentlyPlayed),
              const SizedBox(
                height: 20,
              ),
              const HeaderWidget(categoryName: "Artists"),
              const SizedBox(height: 10.0),
              ArtistDisplay(artistList: DummyData.artistsList),
              const HeaderWidget(categoryName: "Most Played"),
              const SizedBox(height: 10.0),
              ListDisplayWidget(category: DummyData.recentlyPlayed),
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
