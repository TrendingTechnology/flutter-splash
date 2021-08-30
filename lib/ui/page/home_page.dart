import 'package:flutter/material.dart';
import 'package:flutter_splash/ui/tab/editorial_tab.dart';
import 'package:flutter_splash/ui/tab/followers_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                centerTitle: true,
                title: Text(
                  "Flutter Splash",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "DancingScript",
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ),
              new SliverPadding(
                padding: new EdgeInsets.all(16.0),
                sliver: new SliverList(
                  delegate: new SliverChildListDelegate([
                    TabBar(
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
                  ]),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              EditorialTab(),
              FollowersTab(),
            ],
          ),
        ),
      ),
    );
  }
}
