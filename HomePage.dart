import 'package:flutter/material.dart';
import 'package:athkar/Mlist.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("أذكار المسلم",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[300],

            toolbarHeight:150.0,
          shadowColor: Colors.blue[300],
        ),
        backgroundColor:  Colors.orange[50],
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(50, 15, 50, 15),
              color: Colors.blue[100],
              child: ListTile(
                leading: Icon(Icons.sunny),
                title: Text('أذكار الصباح'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Mlist(),
                      ));
                },
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50, 15, 50, 15),
              color: Colors.blue[100],
              child: ListTile(
                leading: Icon(Icons.mode_night),
                title: Text('أذكار المساء'),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50, 15, 50, 15),
              color: Colors.blue[100],
              child: ListTile(
                leading: Icon(Icons.mosque),
                title: Text('أذكار المسجد'),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50, 15, 50, 15),
              color: Colors.blue[100],
              child: ListTile(
                leading: Icon(Icons.bed),
                title: Text('أذكار الإستيقاظ'),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50, 15, 50, 15),
              color: Colors.blue[100],
              child: ListTile(
                leading: Icon(Icons.bedtime_off_sharp),
                title: Text('أذكار النوم'),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50, 15, 50, 15),
              color: Colors.blue[100],
              child: ListTile(
                leading: Icon(Icons.clean_hands_outlined),
                title: Text('أذكار الصلاة'),
              ),
            ),

          ],
        )

      ),
    );
  }
}





