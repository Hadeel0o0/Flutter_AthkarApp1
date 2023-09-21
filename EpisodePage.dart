import 'package:flutter/material.dart';

class EpisodePage extends StatefulWidget {
  EpisodePage({Key? key}) : super(key: key);

  @override
  State<EpisodePage> createState() => _EpisodePageState();
}

class _EpisodePageState extends State<EpisodePage> {
  String dropdownvalue = 'اللهم إني أسألك الهدى، والتقى، والعفاف، والغنى';

  int _counter = 0;
  int _sum = 0;

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

// List of items in our dropdown menu
  var items = [
    'اللهم إني أسألك الهدى، والتقى، والعفاف، والغنى',
    'اللهم أعنا على ذكرك، وشكرك، وحسن عبادتك',
    'اللهم ألهمني رشدي، وأعذني من شر نفسي',
    'اللهم انفعني بما علمتني، وعلمني ما ينفعني، وزدني علماً',
    'اللهم إني أسألك علماً نافعاً، ورزقاً طيباً، وعملاً متقبلاً',
    'اللهم إنك عفو كريم تحب العفو فاعف عني',
    'اللهم مصرف القلوب صرف قلوبنا على طاعتك',
    'اللهم إني أعوذ بك من شر ما عملت، ومن شر ما لم أعمل',
    'اللهم اهدني وسددني، اللهم إني أسألك الهدى والسداد',
    'اللهم إني أعوذ بك من جهد البلاء، ودرك الشقاء، وسوء القضاء',
    'اللهم اكفنى بحلالك عن حرامك وأعننى بفضلك عمن سواك',
    'يا حى ياقيوم برحمتك استغيث',
    'اللهم قنى عذابك يوم تبعث عبادك',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " حلقة الذكر",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
      ),
      backgroundColor: Colors.orange[50],
      body: Center(
        child: Container(
          color: Colors.orange[50],
          height: 200,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton(
                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
                Text(' '),
                Text(' '),
                Text('$_counter  : التكرار '),
                IconButton(
                  iconSize: 30,
                  color: Colors.blue,
                  tooltip: 'تكرار',
                  icon: Icon(
                    Icons.repeat_outlined,
                  ),
                  onPressed: _incrementCounter,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
