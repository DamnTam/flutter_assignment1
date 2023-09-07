import 'package:flutter/material.dart';

///*****flutter Assignment 1*****///

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    //final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          toolbarHeight: screenWidth * 1,
          title: const Text(
            'Home',
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
          leading: const Icon(Icons.menu),
          actions: [const Icon(Icons.arrow_forward_ios_rounded),SizedBox(width: screenWidth*.030)],
          backgroundColor: Colors.green,
          elevation: 70,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is module 5 assignment',
              style: TextStyle(
                  fontSize: screenWidth * 0.06, fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '  My ',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: screenWidth * .060,
                        ),
                      ),
                      TextSpan(
                        text: 'phone',
                        style: TextStyle(
                          color: Colors.cyan,
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                      TextSpan(
                        text: 'name ',
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: screenWidth * 0.055,
                        ),
                      ),
                      TextSpan(
                        text: 'Your phone name',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: screenWidth * 0.075,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
