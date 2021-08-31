import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CollectionItem extends StatelessWidget {
  const CollectionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                      colorFilter:
                          ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
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
                      colorFilter:
                          ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
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
              height: MediaQuery.of(context).size.height,
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
                      colorFilter:
                          ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
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
    );
  }
}
