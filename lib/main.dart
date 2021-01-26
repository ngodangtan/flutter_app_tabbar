import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Tab Layout",
      home: MyHomePage(),
    );
  }

}

class MyHomePage extends StatefulWidget{
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  static const TextStyle optionStyle = TextStyle(fontSize: 30,fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              unselectedLabelColor: Colors.white,
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: [
                // Tab(text: "Money",icon: Icon(Icons.attach_money)),
                // Tab(text: "Friends",icon: Icon(Icons.people)),
                // Tab(text: "Settings",icon: Icon(Icons.settings))
                Tab(icon: Icon(Icons.attach_money)),
                Tab(icon: Icon(Icons.people)),
                Tab(icon: Icon(Icons.settings))
              ],
            ),
            title: Text("Sample Tab Bar"),
            backgroundColor: Colors.blue,
          ),
          body: TabBarView(
            children: [
              Center(child: Text("Money",style: optionStyle)),
              Center(child: Text("Friends",style: optionStyle)),
              Center(child: Text("Settings",style: optionStyle)),
            ],
          ),
        ),
      ),

    );
  }

}