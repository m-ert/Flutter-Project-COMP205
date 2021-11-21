import 'package:flutter/material.dart';
import 'package:login.dart';
import 'package:menu/menu.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false, //don't display the automatic BackButton
        backgroundColor: Color(0xFFf9c42d),
        title: Center(
          child: Text(
              'Bon Appetit!',
            style: TextStyle(
              fontFamily: 'Pacifico',
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          PopupMenuButton<int>(
            onSelected: (item) => onSelected(context, item),
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                    child: Text('Track Your Meal')
                ),
                PopupMenuItem<int>(
                  value: 1,
                    child: Text('Sign Out'),
                ),
              ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 15.0,
            ),
            Card(
              color: Color(0xFFffd180),
              child: SizedBox(
                height: 180.0,
                width: 400.0,
                child: Center(
                  child: ListTile(
                    leading: Image.asset(
                      'images/table-reservation.png',
                      width: 40.0,
                      height: 40.0,
                    ),
                    title: Text(
                      'Reserve A Table',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(
                      Icons.chevron_right,
                      size: 60.0,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Reservation()),
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              color: Color(0xFFffd180),
              child: SizedBox(
                height: 180.0,
                width: 400.0,
                child: Center(
                  child: ListTile(
                    leading: Image.asset(
                      'images/delivery-man.png',
                      width: 40.0,
                      height: 40.0,
                    ),
                    title: Text(
                      'Order',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(
                      Icons.chevron_right,
                      size: 60.0,
                    ),
                    onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Menu()),
                    );
                    },
                  ),
                ),
              ),
            ),
           SizedBox(
             height: 10.0,
          ),
            Card(
              color: Color(0xFFffd180),
              child: SizedBox(
                height: 180.0,
                width: 400.0,
                child: Center(
                  child: ListTile(
                    leading: Image.asset(
                      'images/take-away.png',
                      width: 40.0,
                      height: 40.0,
                    ),
                    title: Text(
                      'Take Away',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(
                      Icons.chevron_right,
                      size: 60.0,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddressScreen()),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void onSelected(BuildContext context, int item){
    switch (item){
      case 0:
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );
        break;
    }
  }
}


