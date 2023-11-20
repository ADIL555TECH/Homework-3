import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  Screen5State createState() => Screen5State();
}

class Screen5State extends State<Screen5> {
  String message = 'Initial Message';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Central Asian Kitchen'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, message);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Message: $message'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                var newMessage = await Navigator.pushNamed(context, '/screen5_update', arguments: message);
                if (newMessage != null) {
                  setState(() {
                    message = newMessage.toString();
                  });
                }
              },
              child: const Text('Update Message'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.next_week),
            label: 'Screen 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Screen 3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Screen 4',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 1:
              Navigator.pushNamed(context, '/screen2');
              break;
            case 2:
              Navigator.pushNamed(context, '/screen3');
              break;
            case 3:
              Navigator.pushNamed(context, '/screen4');
              break;
          }
        },
      ),
    );
  }
}
