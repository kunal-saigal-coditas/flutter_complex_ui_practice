import 'package:flutter/material.dart';

<<<<<<< HEAD
import '../../../core/constants/dummy_data.dart';
=======
import '../../../data_and_constants/dummy_data.dart';
>>>>>>> 46b88fc140875fac28dfdfb0bf9056818e1d0c7b
import '../../artist_screen/artist_screen.dart';

class ArtistDisplay extends StatelessWidget {
  const ArtistDisplay({super.key, required this.artistList});
  final List artistList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: DummyData.artistsList.length,
        itemBuilder: (BuildContext context, int index) {
          final artist = artistList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ArtistScreen(
                        songs: artist.songs,
                        imageUrl: artist.imageUrl,
                        artistName: artist.artistName)),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 55.0,
                    backgroundImage: AssetImage(artist.imageUrl),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    artist.artistName,
                    style: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
