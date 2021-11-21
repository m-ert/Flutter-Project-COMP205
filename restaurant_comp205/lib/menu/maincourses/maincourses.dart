import 'package:flutter/material.dart';
import 'package:menu/menu/constants.dart';
import '/menu/appetizers/artichoke.dart';

class MainCourses extends StatelessWidget {
  const MainCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarBackgroundColor,
        title: Text('Main Courses'),
      ),
      backgroundColor: scaffoldBackgroundColor,
      body: ListView(
        children: [
          // Meat
          Card(
            child: SizedBox(
              height: 100.0,
              width: double.infinity,
              child: Center(
                child: ListTile(
                  leading: Image.asset('icons/cheeseburger.png'),
                  title: Text(
                    'Cheeseburger',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$cBurgerPrice ₺',
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
                  leading: Image.asset('icons/steak.png'),
                  title: Text(
                    'T-Bone',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$tbonePrice ₺',
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
                  leading: Image.asset('icons/steak.png'),
                  title: Text(
                    'Ribeye',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$ribeyePrice ₺',
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
                  leading: Image.asset('icons/steak.png'),
                  title: Text(
                    'Tomahawk',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$tomahawkPrice ₺',
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
          // Pasta
          Card(
            child: SizedBox(
              height: 100.0,
              width: double.infinity,
              child: Center(
                child: ListTile(
                  leading: Image.asset('icons/spaghetti.png'),
                  title: Text(
                    'Fettucine Alfredo',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$alfredoPrice ₺',
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
                  leading: Image.asset('icons/spaghetti.png'),
                  title: Text(
                    'Spaghetti Carbonara',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$carbonaraPrice ₺',
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
                  leading: Image.asset('icons/spaghetti.png'),
                  title: Text(
                    'Lasagne',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$lasagnePrice ₺',
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
                  leading: Image.asset('icons/spaghetti.png'),
                  title: Text(
                    'Ravioli',
                    style: menuTextStyle,
                  ),
                  trailing: Text(
                    '$ravioliPrice ₺',
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
