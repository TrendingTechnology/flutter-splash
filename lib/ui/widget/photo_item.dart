import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PhotoItem extends StatelessWidget {
  const PhotoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl:
                "https://picsum.photos/${(MediaQuery.of(context).size.width).floor()}",
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
              ),
            ),
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) =>
                Center(child: Icon(Icons.error)),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.black87,
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [0.0, 1.0],
                    tileMode: TileMode.decal),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage("https://picsum.photos/50"),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "picsum.photos",
                    style: TextStyle(
                        fontSize: 14, fontFamily: "Lato", color: Colors.white),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
