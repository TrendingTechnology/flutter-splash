import 'package:flutter/material.dart';

class FollowersTab extends StatefulWidget {
  const FollowersTab({Key? key}) : super(key: key);

  @override
  _FollowersTabState createState() => _FollowersTabState();
}

class _FollowersTabState extends State<FollowersTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("FollowersTab"),
      ),
    );
  }
}
