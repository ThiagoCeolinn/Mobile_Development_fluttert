import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final dynamic _data;

  MainScreen(this._data);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [Text(this._data["city"])],
        ),
      )),
    );
  }
}
