import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, required this.categoryName});
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            categoryName,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              fontFamily: '',
            ),
          ),
          const Text(
            'See All',
            style: TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
