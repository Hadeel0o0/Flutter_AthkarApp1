import 'package:flutter/material.dart';

class RosaryPage extends StatefulWidget {
  RosaryPage({Key? key}) : super(key: key);

  @override
  State<RosaryPage> createState() => _RosaryPageState();
}

class _RosaryPageState extends State<RosaryPage> {
  int _counter = 0;
  int _sum =0 ;


  void _incrementCounter() {
    setState(() {
      _counter++;
      _sum++;
    });
  }

  void _repeatCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("المسبحه",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

        ),
        backgroundColor: Colors.blue[300],
        centerTitle: true,
      ),
      backgroundColor: Colors.orange[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              ' مجموع التسبيحات $_sum',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            IconButton(
              iconSize: 20,
              color: Colors.blue,
              tooltip: 'repeat the counter',
              icon: Icon(
                Icons.repeat_outlined,
              ),
              onPressed: _repeatCounter,
            ),
            FloatingActionButton(
              onPressed: _incrementCounter,
              child: Icon(
                Icons.mosque_outlined,
              ),
              backgroundColor:  Colors.blue[200],
            ),
          ],
        ),
      ),
      //  floatingActionButton: SizedBox.fromSize(
      //   size: Size.square(100),
      //   child:
      // ),

    );
  }
}
