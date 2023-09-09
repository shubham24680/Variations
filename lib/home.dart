import 'package:flutter/material.dart';
import 'package:variations/neomorphism.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool darkMode = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.grey[850] : Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                darkMode = !darkMode;
              });
            },
            icon: Icon(
              darkMode ? Icons.light_mode : Icons.dark_mode,
              color: darkMode ? Colors.white70 : Colors.black45,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Center(
        child: InkWell(
          onTap: () =>
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Neo();
          })),
          splashColor: Colors.transparent,
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                color: darkMode ? Colors.grey[850] : Colors.grey[300],
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: darkMode ? Colors.grey.shade800 : Colors.white,
                    offset: const Offset(-5.0, -5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                  BoxShadow(
                    color:
                        darkMode ? Colors.grey.shade900 : Colors.grey.shade500,
                    offset: const Offset(5.0, 5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  )
                ]),
            child: Icon(
              Icons.air_sharp,
              color: darkMode ? Colors.white70 : Colors.black45,
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}
