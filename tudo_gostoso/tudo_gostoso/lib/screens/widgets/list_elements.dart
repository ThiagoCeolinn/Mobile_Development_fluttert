import 'package:flutter/material.dart';
import 'package:tudo_gostoso/screens/sytle.dart';

class ListElements extends StatelessWidget {
  final String _title;
  final List<String> _list;
  ListElements(this._title, this._list);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          this._title,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: orangeTheme),
        ),
        // Ingredientes
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            children: buildList(this._list),
          ),
        ),
      ],
    );
  }

  List<Widget> buildList(List<String> list) {
    List<Widget> listOfWidgets = [];
    list.forEach((String element) {
      listOfWidgets.add(Text(element));
    });
    return listOfWidgets;
  }
}
