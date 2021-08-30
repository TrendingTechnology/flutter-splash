import 'package:flutter/material.dart';
import 'package:flutter_splash/ui/widget/category_item.dart';
import 'package:flutter_splash/ui/widget/photo_item.dart';

class EditorialTab extends StatefulWidget {
  const EditorialTab({Key? key}) : super(key: key);

  @override
  _EditorialTabState createState() => _EditorialTabState();
}

class _EditorialTabState extends State<EditorialTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyle(fontFamily: "Lato", fontSize: 28),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: TextStyle(fontFamily: "Lato", fontSize: 14),
                ),
                onPressed: () {},
                child: const Text(
                  'View all',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return CategoryItem();
            },
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: 20,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return PhotoItem();
          },
        ),
      ],
    );
  }
}
