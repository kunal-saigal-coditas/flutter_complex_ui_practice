import 'package:flutter/material.dart';
import '../../premium_screen/premium_page.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45),
            gradient: const LinearGradient(
                colors: [Color.fromARGB(216, 249, 124, 0), Colors.amber],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft),
          ),
        ),
        Positioned(
          top: 20,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(height: 10),
              const Text(
                "Enjoy All Benefits!",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                width: 245,
                child: Text(
                  "Enjoy listening songs with better audio quality, without restrictions,and without ads.",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PremiumPage(),
                    ),
                  );
                },
                child: const Text(
                  "Get Premium",
                  style: TextStyle(
                    color: Color.fromARGB(216, 249, 124, 0),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 170,
          top: 10,
          bottom: 0.2,
          child: SizedBox(
            height: 200,
            width: 300,
            child: Image.asset("assets/images/image1.png"),
          ),
        )
      ],
    );
  }
}
