import 'package:flutter/material.dart';

class Neo extends StatefulWidget {
  const Neo({super.key});

  @override
  State<Neo> createState() => _NeoState();
}

class _NeoState extends State<Neo> {
  changeState(Color texture) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: texture,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-5.0, -5.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
            ),
            BoxShadow(
              color: texture,
              offset: const Offset(5.0, 5.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
            ),
          ]),
      child: const Icon(
        Icons.interests_outlined,
        size: 50,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text("Neomorphism"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              changeState(Colors.purple.shade200),
              const SizedBox(width: 20),
              changeState(Colors.pink.shade400),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              changeState(Colors.blue.shade800),
              const SizedBox(width: 20),
              changeState(Colors.lightGreen),
            ],
          ),
        ],
      ),
    );
  }
}
