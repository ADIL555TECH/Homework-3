import 'package:flutter/material.dart';

class Screen6 extends StatefulWidget {
  const Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {

  int _gurtik = 0;
  void _incrementGurtik() {
    setState(() {
      _gurtik++;
    });
  }
  void _decrementGurtik() {
    setState(() {
      _gurtik--;
    });
  }

  int _aqsaulaq = 0;
  void _incrementSAqsaulaq() {
    setState(() {
      _aqsaulaq++;
    });
  }
  void _decrementAqsaulaq() {
    setState(() {
      _aqsaulaq--;
    });
  }

  int _naurizgoje = 0;
  void _incrementNaurizgoje() {
    setState(() {
      _naurizgoje++;
    });
  }
  void _decrementNaurizgoje() {
    setState(() {
      _naurizgoje--;
    });
  }

  int _qarma = 0;
  void _incrementQarma() {
    setState(() {
      _qarma++;
    });
  }
  void _decrementQarma() {
    setState(() {
      _qarma--;
    });
  }

  int _baliqquwirdaq = 0;
  void _incrementBaliqquwirdaq() {
    setState(() {
      _baliqquwirdaq++;
    });
  }
  void _decrementBaliqquwirdaq() {
    setState(() {
      _baliqquwirdaq--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Central Asian Kitchen'),
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
                  "images/casian.jpg",
                  width: 360,
                  height: 270,
                ),
              ],
            ),
          ),
          const Text("Central Asian Menu"),
          const SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("Gurtik", style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: _decrementGurtik,
                        child: const Text(' - '),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '$_gurtik',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _incrementGurtik,
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
                  const Text("Aqsaulaq", style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: _decrementAqsaulaq,
                        child: const Text(' - '),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '$_aqsaulaq',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _incrementSAqsaulaq,
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
                  const Text("Nauriz Goje", style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: _decrementNaurizgoje,
                        child: const Text(' - '),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '$_naurizgoje',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _incrementNaurizgoje,
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
                  const Text("Qarma", style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: _decrementQarma,
                        child: const Text(' - '),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '$_qarma',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _incrementQarma,
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
                  const Text("Baliq Quwirdaq", style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: _decrementBaliqquwirdaq,
                        child: const Text(' - '),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '$_baliqquwirdaq',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _incrementBaliqquwirdaq,
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
