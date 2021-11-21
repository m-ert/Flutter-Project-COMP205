import 'package:flutter/material.dart';
import 'package:menu/menu/constants.dart';

class Desserts extends StatelessWidget {
  const Desserts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text('Desserts'),
      ),
      backgroundColor: Colors.blueGrey,
      body: ListView(
        children: [
          // Meat
          Card(
            child: SizedBox(
              height: 100.0,
              width: double.infinity,
              child: Center(
                child: ListTile(
                  leading: Image.asset('icons/tiramisu.png'),
                  title: Text(
                    'Tiramisu',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$tiramisuPrice ₺',
                    style: priceTextStyle,
                  ),
                  subtitle: Text('tap for more detail'),
                  onTap: () {},
                ),
              ),
            ),
          ),
          Card(
            child: SizedBox(
              height: 100.0,
              width: double.infinity,
              child: Center(
                child: ListTile(
                  leading: Image.asset('icons/brulee.png'),
                  title: Text(
                    'Crème Brûlée',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$bruleePrice ₺',
                    style: priceTextStyle,
                  ),
                  subtitle: Text('tap for more detail'),
                  onTap: () {},
                ),
              ),
            ),
          ),
          Card(
            child: SizedBox(
              height: 100.0,
              width: double.infinity,
              child: Center(
                child: ListTile(
                  leading: Image.asset('icons/cannoli.png'),
                  title: Text(
                    'Cannoli',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$cannoliPrice ₺',
                    style: priceTextStyle,
                  ),
                  subtitle: Text('tap for more detail'),
                  onTap: () {},
                ),
              ),
            ),
          ),
          Card(
            child: SizedBox(
              height: 100.0,
              width: double.infinity,
              child: Center(
                child: ListTile(
                  leading: Image.asset('icons/cheesecake.png'),
                  title: Text(
                    'Cheesecake',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$cheesecakePrice ₺',
                    style: priceTextStyle,
                  ),
                  subtitle: Text('tap for more detail'),
                  onTap: () {},
                ),
              ),
            ),
          ),
          Card(
            child: SizedBox(
              height: 100.0,
              width: double.infinity,
              child: Center(
                child: ListTile(
                  leading: Image.asset('icons/sundae.png'),
                  title: Text(
                    'Sundae',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$sundaePrice ₺',
                    style: priceTextStyle,
                  ),
                  subtitle: Text('tap for more detail'),
                  onTap: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
