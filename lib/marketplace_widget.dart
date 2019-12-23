import 'package:flutter/material.dart';

class MarketplaceWidget extends StatelessWidget {
  final String name;
  MarketplaceWidget(this.name);
  
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
