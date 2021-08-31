import 'package:flutter/material.dart';
import 'package:flutter_splash/ui/widget/collection_item.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({Key? key}) : super(key: key);

  @override
  _CollectionPageState createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 32, 0, 0),
          child: Text(
            "Collections",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "DancingScript",
                fontSize: 32,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 4, 0, 0),
          child: Text(
            "Explore the world through collections of beautiful photos free to use under the Unsplash License.",
            style: TextStyle(
              color: Colors.grey.shade600,
              fontFamily: "Lato",
              fontSize: 16,
            ),
            maxLines: 3,
          ),
        ),
        ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            CollectionItem(),
            CollectionItem(),
            CollectionItem(),
          ],
        )
      ],
    );
  }
}
