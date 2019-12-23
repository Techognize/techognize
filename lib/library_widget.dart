import 'package:flutter/material.dart';

class LibraryWidget extends StatelessWidget {
  final String name;
  LibraryWidget(this.name);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        name,
        style: Theme.of(context).textTheme.display3,
      ),
      padding: EdgeInsets.all(16),
    );
  }
}
