import 'package:flutter/material.dart';
import 'package:athkar/HomePage.dart';
import 'package:athkar/RosaryPage.dart';
import 'package:athkar/EpisodePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedItemIndex = 0;

  final pages = [
    HomePage(),
    RosaryPage(),
    EpisodePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedItemIndex],
      bottomNavigationBar: BottomNavigationBar(
           backgroundColor: Colors.orange[50],
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'الرئيسيه',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.radar), label: 'المسبحه'),
            BottomNavigationBarItem(
                icon: Icon(Icons.clean_hands_outlined), label: "حلقة الذكر")
          ],
          currentIndex: selectedItemIndex,
          onTap: (int index) {
            setState(() {
              selectedItemIndex = index;
            });
          }),
    );
  }
}
