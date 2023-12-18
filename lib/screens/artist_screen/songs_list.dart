import 'package:flutter/material.dart';

class SongsList extends StatelessWidget {
  const SongsList(
      {super.key,
      required this.imageUrl,
      required this.musicName,
      required this.artistName});
  final String imageUrl;
  final String musicName;
  final String artistName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
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
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(artistName),
              ],
            ),
          ),
          Container(
            width: 30.0,
            height: 30.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.orange,
            ),
            child: const CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(
                Icons.play_arrow,
                size: 20.0,
                color: Colors.white,
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
