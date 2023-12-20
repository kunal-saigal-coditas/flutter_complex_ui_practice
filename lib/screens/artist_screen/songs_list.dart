import 'package:complex_ui_assignment/core/theme/buildcontext_extension.dart';
import 'package:flutter/material.dart';

class SongsList extends StatelessWidget {
  const SongsList({
    super.key,
    required this.imageUrl,
    required this.musicName,
    required this.artistName,
  });
  final String imageUrl;
  final String musicName;
  final String artistName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
        bottom: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imageUrl,
              width: 64.0,
              height: 64.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  musicName,
                  style: context.appTextTheme.mediumTextStyle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  artistName,
                  style: context.appTextTheme.subtextStyle,
                ),
              ],
            ),
          ),
          Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.appColors.primary,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(
                Icons.play_arrow,
                size: 20.0,
                color: context.appColors.onPrimary,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
