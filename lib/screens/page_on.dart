import 'package:flutter/material.dart';

class CommomPage extends StatelessWidget {
  String title = '';
  CommomPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}
