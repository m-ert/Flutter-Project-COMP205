import 'package:flutter/material.dart';
import 'package:menu/menu/constants.dart';
import 'package:menu/menu/constants.dart';

class Drinks extends StatelessWidget {
  const Drinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text('Drinks & Beverages'),
      ),
      backgroundColor: Colors.blueGrey,
      body: ListView(
        children: [
          Card(
            child: SizedBox(
              height: 100.0,
              width: double.infinity,
              child: Center(
                child: ListTile(
                  leading: Image.asset('icons/coke.png'),
                  title: Text(
                    'Coke',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$cokePrice ₺',
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
                  leading: Image.asset('icons/coke.png'),
                  title: Text(
                    'Coke Zero',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$cokePrice ₺',
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
                  leading: Image.asset('icons/pepsi.png'),
                  title: Text(
                    'Pepsi',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$cokePrice ₺',
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
                  leading: Image.asset('icons/pepsi.png'),
                  title: Text(
                    'Pepsi Zero',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$cokePrice ₺',
                    style: priceTextStyle,
                  ),
                  subtitle: Text('tap for more detail'),
                  onTap: () {},
                ),
              ),
            ),
          ),
          lineBetween,
          Card(
            child: SizedBox(
              height: 100.0,
              width: double.infinity,
              child: Center(
                child: ListTile(
                  leading: Image.asset('icons/beer.png'),
                  title: Text(
                    'Beer',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$beerPrice ₺',
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
                  leading: Image.asset('icons/wine.png'),
                  title: Text(
                    'Wine1',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$winePrice ₺',
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
                  leading: Image.asset('icons/wine.png'),
                  title: Text(
                    'Wine2',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$winePrice ₺',
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
                  leading: Image.asset('icons/wine.png'),
                  title: Text(
                    'Wine3',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$winePrice ₺',
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
