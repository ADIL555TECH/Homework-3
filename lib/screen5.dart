import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {

  int _krapfen = 0;
  void _incrementKrapfen() {
    setState(() {
      _krapfen++;
    });
  }
  void _decrementKrapfen() {
    setState(() {
      _krapfen--;
    });
  }

  int _sauerkraut = 0;
  void _incrementSauerkraut() {
    setState(() {
      _sauerkraut++;
    });
  }
  void _decrementSauerkraut() {
    setState(() {
      _sauerkraut--;
    });
  }

  int _smorrebrod = 0;
  void _incrementSmorrebrod() {
    setState(() {
      _smorrebrod++;
    });
  }
  void _decrementSmorrebrod() {
    setState(() {
      _smorrebrod--;
    });
  }

  int _amatriciana = 0;
  void _incrementAmatriciana() {
    setState(() {
      _amatriciana++;
    });
  }
  void _decrementAmatriciana() {
    setState(() {
      _amatriciana--;
    });
  }

  int _tortelli = 0;
  void _incrementTortelli() {
    setState(() {
      _tortelli++;
    });
  }
  void _decrementTortelli() {
    setState(() {
      _tortelli--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('European Kitchen'),
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
                  "images/european.jpg",
                  width: 360,
                  height: 270,
                ),
              ],
            ),
          ),
          const Text("European Menu"),
          const SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("Krapfen", style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: _decrementKrapfen,
                        child: const Text(' - '),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '$_krapfen',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _incrementKrapfen,
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
                  const Text("Sauerkraut", style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: _decrementSauerkraut,
                        child: const Text(' - '),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '$_sauerkraut',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _incrementSauerkraut,
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
                  const Text("Smorrebrod", style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: _decrementSmorrebrod,
                        child: const Text(' - '),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '$_smorrebrod',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _incrementSmorrebrod,
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
                  const Text("Amatriciana", style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: _decrementAmatriciana,
                        child: const Text(' - '),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '$_amatriciana',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _incrementAmatriciana,
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
                  const Text("Tortelli", style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: _decrementTortelli,
                        child: const Text(' - '),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '$_tortelli',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _incrementTortelli,
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
