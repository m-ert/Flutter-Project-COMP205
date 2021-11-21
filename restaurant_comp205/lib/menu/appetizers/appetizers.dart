import 'package:flutter/material.dart';
import 'artichoke.dart';
import 'package:menu/menu/constants.dart';

class Appetizers extends StatelessWidget {
  const Appetizers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarBackgroundColor,
        title: Text('Appetizers & Salads'),
      ),
      backgroundColor: scaffoldBackgroundColor,
      body: ListView(
        children: [
          Card(
            child: SizedBox(
              height: 100.0,
              width: double.infinity,
              child: Center(
                child: ListTile(
                  leading: Image.asset('icons/artichoke.png'),
                  title: Text(
                    'Spinach & Artichoke Dip',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$artichokePrice ₺',
                    style: priceTextStyle,
                  ),
                  subtitle: Text('tap for more detail'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Artichoke()),
                    );
                  },
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
                  leading: Image.asset('icons/pigs.png'),
                  title: Text(
                    'Pigs in Blanket',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$pigsPrice ₺',
                    style: priceTextStyle,
                  ),
                  subtitle: Text('tap for more detail'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Artichoke()),
                    );
                  },
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
                  leading: Image.asset('icons/wings.png'),
                  title: Text(
                    'Chicken Wings',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$wingsPrice ₺',
                    style: priceTextStyle,
                  ),
                  subtitle: Text('tap for more detail'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Artichoke()),
                    );
                  },
                ),
              ),
            ),
          ),
          lineBetween,
          // Salads
          Card(
            child: SizedBox(
              height: 100.0,
              width: double.infinity,
              child: Center(
                child: ListTile(
                  leading: Image.asset('icons/salad.png'),
                  title: Text(
                    'Green Salad',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$gSaladPrice ₺',
                    style: priceTextStyle,
                  ),
                  subtitle: Text('tap for more detail'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Artichoke()),
                    );
                  },
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
                  leading: Image.asset('icons/salad.png'),
                  title: Text(
                    'Chicken Salad',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$cSaladPrice ₺',
                    style: priceTextStyle,
                  ),
                  subtitle: Text('tap for more detail'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Artichoke()),
                    );
                  },
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
                  leading: Image.asset('icons/salad.png'),
                  title: Text(
                    'Tuna Salad',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$tSaladPrice ₺',
                    style: priceTextStyle,
                  ),
                  subtitle: Text('tap for more detail'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Artichoke()),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
