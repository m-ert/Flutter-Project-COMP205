import 'package:flutter/material.dart';
import 'constants.dart';

int num = 0;

class AddToCart extends StatelessWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.large(
      onPressed: () {},
      child: const Icon(Icons.add_shopping_cart),
      backgroundColor: Color(0xFF035D5D),
    );
  }
}

class AddButton extends StatefulWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  _AddButtonState createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            icon: const Icon(
              Icons.remove_circle,
              color: Color(0xFF035D5D),
            ),
            tooltip: 'Extract one',
            onPressed: () {
              setState(() {
                num -= 1;
              });
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            '$num',
            style: TextStyle(
              fontSize: 27.0,
              fontFamily: 'Barlow',
            ),
          ),
        ),
        IconButton(
            icon: const Icon(
              Icons.add_circle,
              color: Color(0xFF035D5D),
            ),
            tooltip: 'Add one',
            onPressed: () {
              setState(() {
                num += 1;
              });
            }),
      ],
    );
  }
}
