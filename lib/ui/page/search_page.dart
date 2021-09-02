import 'package:flutter/material.dart';
import 'package:flutter_splash/extension.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Orientation orientation = Orientation.ALL;
  Sort sort = Sort.LATEST;
  SearchColor searchColor = SearchColor.EMPTY;
  List<DropdownMenuItem> orientationItems = List.generate(
      Orientation.values.length,
      (index) => buildDropDownItem(Orientation.values[index]));
  List<DropdownMenuItem> colorItems = List.generate(SearchColor.values.length,
      (index) => buildDropDownItem(SearchColor.values[index]));
  List<DropdownMenuItem> sortItems = List.generate(
      Sort.values.length, (index) => buildDropDownItem(Sort.values[index]));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            showCursor: true,
            decoration: InputDecoration(
                filled: true,
                contentPadding: const EdgeInsets.all(16.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(45),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(45),
                ),
                hintText: "Search Photo/Collection"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildDropDown(context,
                  items: orientationItems,
                  value: orientation,
                  onChanged: _onOrientationChanged),
              buildDropDown(context,
                  items: sortItems, value: sort, onChanged: _onSortChanged),
              buildDropDown(context,
                  items: colorItems,
                  value: searchColor,
                  onChanged: _onSearchColorChanged),
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) => new Container(
                  width: (40 + (index ^ index)) * (index + 1),
                  height: (60 + (index ^ index)) * (index + 1),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                          colors: [Colors.pink, Colors.purpleAccent])),
                  child: new Center(
                    child: new CircleAvatar(
                      backgroundColor: Colors.white,
                      child: new Text('$index'),
                    ),
                  )),
              staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            ),
          ),
        )
      ],
    );
  }

  void _onOrientationChanged(dynamic value) =>
      setState(() => orientation = value);

  void _onSortChanged(dynamic value) => setState(() => sort = value);

  void _onSearchColorChanged(dynamic value) =>
      setState(() => searchColor = value);
}

Widget buildDropDown(BuildContext context,
    {required List<DropdownMenuItem> items,
    required dynamic value,
    required Function(dynamic value) onChanged}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 8.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.grey.shade200,
    ),
    child: DropdownButton(
      underline: Container(),
      icon: Icon(Icons.keyboard_arrow_down),
      menuMaxHeight: MediaQuery.of(context).size.height / 4,
      items: items,
      value: value,
      onChanged: onChanged,
    ),
  );
}

DropdownMenuItem buildDropDownItem(dynamic value) {
  return DropdownMenuItem(
    child: Text(
      value.toString().split(".")[1].capitalize(),
      style: TextStyle(fontFamily: "Lato", fontSize: 16),
    ),
    value: value,
  );
}

enum Orientation { LANDSCAPE, PORTRAIT, SQUARE, ALL }
enum Sort { LATEST, OLDEST, POPULAR }
enum SearchColor {
  EMPTY,
  BLACK_AND_WHITE,
  BLACK,
  WHITE,
  YELLOW,
  ORANGE,
  RED,
  PURPLE,
  MAGENTA,
  GREEN,
  TEAL,
  BLUE
}
