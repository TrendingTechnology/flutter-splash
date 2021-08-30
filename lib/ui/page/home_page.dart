import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontFamily: "Lato"),
            tabs: <Widget>[
              Tab(
                text: "Editorial",
              ),
              Tab(
                text: "Followers",
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Flutter Splash",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "DancingScript",
                fontSize: 32,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
          ],
        ),
      ),
    );
  }
}
