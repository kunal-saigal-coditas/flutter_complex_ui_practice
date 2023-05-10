import 'package:flutter/material.dart';

class ListDisplayWidget extends StatelessWidget {
  const ListDisplayWidget({super.key, required this.category});
  final List category;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 115.0,
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 115.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage(category[index].imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  category[index].musicName,
                  style: const TextStyle(
                      fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
