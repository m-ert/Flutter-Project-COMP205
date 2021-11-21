import 'package:flutter/material.dart';
import 'package:menu/preparation.dart';
import 'package:menu/reusable_card.dart';
import 'appetizers/appetizers.dart';
import 'maincourses/maincourses.dart';
import 'drinks/drinks.dart';
import 'desserts/desserts.dart';
import 'constants.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarBackgroundColor,
          title: Center(
            child: Text(
              'Menu',
              style: appBarTextStyle,
            ),
          ),
        ),
        backgroundColor: scaffoldBackgroundColor,
        body: ListView(
          children: [
            MenuCard(
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Appetizers()),
                );
              },
              image: Image.asset('icons/appetizer.png'),
              text: Text(
                'Appetizers & Salads',
                style: menuTextStyle,
              ),
            ),
            MenuCard(
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Appetizers()),
                );
              },
              image: Image.asset('icons/spaghetti.png'),
              text: Text(
                'Main Courses',
                style: menuTextStyle,
              ),
            ),
            MenuCard(
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Appetizers()),
                );
              },
              image: Image.asset('icons/soda.png'),
              text: Text(
                'Drinks & Beverages',
                style: menuTextStyle,
              ),
            ),
            MenuCard(
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Appetizers()),
                );
              },
              image: Image.asset('icons/cake.png'),
              text: Text(
                'Desserts',
                style: menuTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
