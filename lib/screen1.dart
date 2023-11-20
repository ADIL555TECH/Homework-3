import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Barvikha Restaurant!'),
        centerTitle: true,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Choose cuisines from all around the globe!'),
              SizedBox(height: 30),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/restaurant.jpg",
                  width: 360,
                  height: 270,
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/screen2');
                  },
                  style: ElevatedButton.styleFrom(fixedSize: const Size(200, 30)),
                  child: const Text('Asian Kitchen'),
                ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/screen3');
                    },
                    style: ElevatedButton.styleFrom(fixedSize: const Size(200, 30)),
                    child: const Text('American Kitchen'),
                  ),],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/screen4');
                    },
                    style: ElevatedButton.styleFrom(fixedSize: const Size(200, 30)),
                    child: const Text('Thai Kitchen'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/screen5');
                    },
                    style: ElevatedButton.styleFrom(fixedSize: const Size(200, 30)),
                    child: const Text('European Kitchen'),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/screen6');
                    },
                    style: ElevatedButton.styleFrom(fixedSize: const Size(200, 30)),
                    child: const Text('Central Asian Kitchen'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/screen7');
                    },
                    style: ElevatedButton.styleFrom(fixedSize: const Size(200, 30)),
                    child: const Text('Japanese Kitchen'),
                  ),
                ],
              ),

            ],
          ),
        ],
      )

    );
  }
}
