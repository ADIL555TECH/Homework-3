import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  int _padthai = 0;
  void _incrementPadthai() {
    setState(() {
      _padthai++;
    });
  }
  void _decrementPadthai() {
    setState(() {
      _padthai--;
    });
  }
  int _tomyumgoong = 0;
  void _incrementTomyumgoong() {
    setState(() {
      _tomyumgoong++;
    });
  }
  void _decrementTomyumgoong() {
    setState(() {
      _tomyumgoong--;
    });
  }
  int _yellowcurry = 0;
  void _incrementYellowcurry() {
    setState(() {
      _yellowcurry++;
    });
  }
  void _decrementYellowcurry() {
    setState(() {
      _yellowcurry--;
    });
  }
  int _redcurry = 0;
  void _incrementRedcurry() {
    setState(() {
      _redcurry++;
    });
  }
  void _decrementRedcurry() {
    setState(() {
      _redcurry--;
    });
  }
  int _greencurry = 0;
  void _incrementGreencurry() {
    setState(() {
      _greencurry++;
    });
  }
  void _decrementGreencurry() {
    setState(() {
      _greencurry--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thai Kitchen'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/thai.jpg",
                  width: 360,
                  height: 270,
                ),
              ],
            ),
          ),
          const Text("Thai Menu"),
          const SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("Pad Thai", style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: _decrementPadthai,
                        child: const Text(' - '),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '$_padthai',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _incrementPadthai,
                        child: const Text(' + '),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("Tom Yum Goong", style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: _decrementTomyumgoong,
                        child: const Text(' - '),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '$_tomyumgoong',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _incrementTomyumgoong,
                        child: const Text(' + '),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("Yellow Curry", style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: _decrementYellowcurry,
                        child: const Text(' - '),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '$_yellowcurry',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _incrementYellowcurry,
                        child: const Text(' + '),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("Green Curry", style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: _decrementGreencurry,
                        child: const Text(' - '),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '$_greencurry',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _incrementGreencurry,
                        child: const Text(' + '),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("Red Curry", style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: _decrementRedcurry,
                        child: const Text(' - '),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '$_redcurry',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _incrementRedcurry,
                        child: const Text(' + '),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),

    );
  }
}
