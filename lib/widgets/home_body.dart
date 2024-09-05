import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) counter--;
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Counter App',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Display the counter value
          Text(
            '$counter',
            style: const TextStyle(
              fontSize: 64,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 50),
          // Increment and Decrement buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.green[600],
                heroTag: "increment",
                elevation: 5,
                shape: const CircleBorder(),
                onPressed: incrementCounter,
                child: const Icon(
                  Icons.add,
                  size: 32,
                ),
              ),
              const SizedBox(width: 70),
              FloatingActionButton(
                onPressed: decrementCounter,
                backgroundColor: Colors.red[600],
                heroTag: "decrement",
                elevation: 5,
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.remove,
                  size: 32,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
