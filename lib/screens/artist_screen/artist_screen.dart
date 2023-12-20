import 'package:complex_ui_assignment/core/constants/dummy_data.dart';
import 'package:complex_ui_assignment/core/theme/buildcontext_extension.dart';
import 'package:complex_ui_assignment/screens/artist_screen/songs_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArtistScreen extends StatelessWidget {
  final String imageUrl;
  final String artistName;
  final List songs;

  const ArtistScreen(
      {Key? key,
      required this.imageUrl,
      required this.artistName,
      required this.songs})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.background,
      appBar: AppBar(
        backgroundColor: context.appColors.background,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Set the custom icon here
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(
              CupertinoIcons.search,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 20.0,
              top: 10,
              left: 10,
              bottom: 10,
            ),
            child: Icon(
              CupertinoIcons.ellipsis_circle,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Image.asset(
                  imageUrl,
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                artistName,
                style: context.appTextTheme.headingTextStyle,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                '1 Album  |  20 Songs  |  01:25:43 mins',
                style: context.appTextTheme.subtextStyle,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: context.appColors.onPrimary,
                        backgroundColor: context.appColors.primary,
                        elevation: 0,
                        shadowColor: context.appColors.primary.withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Flexible(
                              flex: 1,
                              child: Icon(Icons.shuffle),
                            ),
                            const SizedBox(width: 8.0),
                            Flexible(
                              flex: 4,
                              child: Text(
                                "Shuffle",
                                style: context.appTextTheme.mediumTextStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: context.appColors.onSecondary,
                        backgroundColor: context.appColors.secondary,
                        elevation: 0,
                        shadowColor: context.appColors.primary.withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 15.0,
                            height: 15.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: context.appColors.primary,
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Icon(
                                Icons.play_arrow,
                                size: 10.0,
                                color: context.appColors.onPrimary,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            "Play",
                            style:
                                context.appTextTheme.mediumTextStyle.copyWith(
                              color: context.appColors.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Divider(
                color: context.appColors.secondary,
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Songs',
                    style: context.appTextTheme.mediumTextStyle,
                  ),
                  Text(
                    'See All',
                    style: context.appTextTheme.labelTextStyle,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 400,
                child: ListView.builder(
                  itemCount: DummyData.artistsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SongsList(
                      artistName: artistName,
                      imageUrl: songs[index].imageUrl,
                      musicName: songs[index].musicName,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
