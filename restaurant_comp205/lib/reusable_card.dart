import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  const MenuCard(
      {required this.onPress, required this.image, required this.text});

  final void Function() onPress;
  final Image image;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100.0,
        width: double.infinity,
        child: Center(
          child: ListTile(
            leading: image,
            title: text,
            subtitle: Text('tap for more detail'),
            onTap: onPress,
          ),
        ),
      ),
    );
  }
}
