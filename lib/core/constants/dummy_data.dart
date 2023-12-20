import 'package:complex_ui_assignment/data/models/music_model.dart';

import '../../data/models/artists_model.dart';

abstract class DummyData {
  static List recentlyPlayed = [
    MusicModel(
      imageUrl: 'assets/images/shades-of-love.jpeg',
      musicName: 'Shades of Love - Anna Szarmach',
    ),
    MusicModel(
      imageUrl: 'assets/images/without-you.jpeg',
      musicName: 'Without You - The Kid LAROI',
    ),
    MusicModel(
      imageUrl: 'assets/images/save-your-tears.jpeg',
      musicName: 'Save Your Tears - The Weeknd',
    ),
  ];

  static List artistsList = [
    ArtistsModel(
      '01:25:43 mins',
      imageUrl: 'assets/images/ariana.jpeg',
      artistName: 'Ariana Galande',
      songs: [
        MusicModel(
          imageUrl: 'assets/images/shades-of-love.jpeg',
          musicName: 'Bang Bang',
        ),
        MusicModel(
          imageUrl: 'assets/images/without-you.jpeg',
          musicName: 'God is a Woman',
        ),
        MusicModel(
          imageUrl: 'assets/images/save-your-tears.jpeg',
          musicName: 'Dangerous Woman',
        ),
      ],
    ),
    ArtistsModel(
      '01:25:43 mins',
      imageUrl: 'assets/images/the-weeknd.jpeg',
      artistName: 'The Weeknd',
      songs: [
        MusicModel(
          imageUrl: 'assets/images/shades-of-love.jpeg',
          musicName: 'StarBoy',
        ),
        MusicModel(
          imageUrl: 'assets/images/without-you.jpeg',
          musicName: 'Reminder',
        ),
        MusicModel(
          imageUrl: 'assets/images/save-your-tears.jpeg',
          musicName: 'Save Your Tears',
        ),
      ],
    ),
    ArtistsModel(
      '01:25:43 mins',
      imageUrl: 'assets/images/acidrap.jpeg',
      artistName: 'Chance the Rapper',
      songs: [
        MusicModel(
          imageUrl: 'assets/images/shades-of-love.jpeg',
          musicName: 'No Brainer',
        ),
        MusicModel(
          imageUrl: 'assets/images/without-you.jpeg',
          musicName: 'Acid Rain',
        ),
        MusicModel(
          imageUrl: 'assets/images/save-your-tears.jpeg',
          musicName: 'No Problem',
        ),
      ],
    ),
  ];
}
