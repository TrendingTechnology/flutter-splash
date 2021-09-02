import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CollectionItem extends StatelessWidget {
  const CollectionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3,
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: CachedNetworkImage(
                  imageUrl: "https://picsum.photos/800",
                  height: MediaQuery.of(context).size.height / 6,
                  width: ((2 * MediaQuery.of(context).size.width) / 5) - 24,
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(16.0),
                      ),
                      image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.red, BlendMode.colorBurn)),
                    ),
                  ),
                  placeholder: (context, url) =>
                      Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) =>
                      Center(child: Icon(Icons.error)),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: CachedNetworkImage(
                  imageUrl: "https://picsum.photos/750",
                  height: MediaQuery.of(context).size.height / 6,
                  width: ((2 * MediaQuery.of(context).size.width) / 5) - 24,
                  imageBuilder: (context, imageProvider) => Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16.0),
                      ),
                      image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.red, BlendMode.colorBurn)),
                    ),
                  ),
                  placeholder: (context, url) =>
                      Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) =>
                      Center(child: Icon(Icons.error)),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: CachedNetworkImage(
                  imageUrl: "https://picsum.photos/1000",
                  height: MediaQuery.of(context).size.height / 3,
                  width: ((3 * MediaQuery.of(context).size.width) / 5) - 24,
                  imageBuilder: (context, imageProvider) => Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        bottomLeft: Radius.circular(16.0),
                      ),
                      image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.red, BlendMode.colorBurn)),
                    ),
                  ),
                  placeholder: (context, url) =>
                      Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) =>
                      Center(child: Icon(Icons.error)),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 32, vertical: 2),
          child: Text(
            "Gaming",
            style: TextStyle(
                fontSize: 24, fontFamily: "Lato", color: Colors.black),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 32, vertical: 2),
          child: Row(
            children: [
              Text("135 Photos - ",
                  style: TextStyle(
                      fontSize: 16, fontFamily: "Lato", color: Colors.grey)),
              Text("Curated by John Rashid",
                  style: TextStyle(
                      fontSize: 16, fontFamily: "Lato", color: Colors.grey))
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 32, vertical: 2),
          child: Row(
            children: [
              makeTags("Game"),
              makeTags("Easy"),
              makeTags("Dota 2 "),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        )
      ],
    );
  }

  Widget makeTags(String tag) {
    return InkWell(
      onTap: () {},
      splashColor: Colors.black,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        margin: EdgeInsets.fromLTRB(0, 2, 8, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.grey.shade300,
        ),
        child: Text(
          "$tag",
          style: TextStyle(
            fontSize: 16,
            fontFamily: "Lato",
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
