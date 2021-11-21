import 'package:flutter/material.dart';

const scaffoldBackgroundColor = Color(0xFFc29400);
const appBarBackgroundColor = Color(0xFFf9c42d);

const starFilled = Icon(Icons.star, color: Colors.yellow);
const starNull = Icon(Icons.star_border, color: Colors.grey);

var stepInProgress = Padding(
  padding: EdgeInsets.all(16.0),
  child: Image.asset('icons/waiting.gif'),
);

const stepUnDone = Padding(
    padding: EdgeInsets.all(24.0),
    child: Icon(Icons.check_circle, color: Colors.grey));

const stepDone = Padding(
    padding: EdgeInsets.all(24.0),
    child: Icon(Icons.check_circle, color: Colors.green));

const lineBetween = SizedBox(
  height: 20.0,
  width: 150.0,
  child: Divider(
    color: Color(0xFFB2DFDB),
  ),
);

const menuTextStyle = TextStyle(
  color: Color(0xFF032C2C),
  fontSize: 22.0,
  fontFamily: 'Acme',
);

const dishpriceTextStyle = TextStyle(
  color: Color(0xFF032C2C),
  fontSize: 27.0,
  fontFamily: 'Barlow',
);

const priceTextStyle = TextStyle(
  color: Color(0xFF032C2C),
  fontSize: 24.0,
  fontFamily: 'Barlow',
);

const appBarTextStyle = TextStyle(
  color: Color(0xFFFFFFFF),
);

const dishDescTextStyle = TextStyle(
  color: Color(0xFF032C2C),
  fontSize: 16.0,
  fontFamily: 'Ubuntu',
);

const dishHeadTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
  fontFamily: 'Ubuntu',
);

const dishPageArrow = Icon(
  Icons.arrow_forward,
  color: Color(0xFF035D5D),
  size: 30.0,
);

//    ALL PRICES:
const double artichokePrice = 16.00;
const double pigsPrice = 16.00;
const double wingsPrice = 20.00;
const double gSaladPrice = 18.00;
const double cSaladPrice = 30.00;
const double tSaladPrice = 30.00;

const double cBurgerPrice = 40.00;
const double tbonePrice = 120.00;
const double ribeyePrice = 120.00;
const double tomahawkPrice = 120.00;
const double alfredoPrice = 40.00;
const double carbonaraPrice = 50.00;
const double lasagnePrice = 40.00;
const double ravioliPrice = 40.00;

const double cokePrice = 10.00;
const double beerPrice = 30.00;
const double winePrice = 50.00;

const double tiramisuPrice = 30.00;
const double bruleePrice = 30.00;
const double cannoliPrice = 35.00;
const double cheesecakePrice = 25.00;
const double sundaePrice = 30.00;
