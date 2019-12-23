import 'package:flutter/material.dart';

class AccountWidget extends StatelessWidget {
  final String name;
  AccountWidget(this.name);
  
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
