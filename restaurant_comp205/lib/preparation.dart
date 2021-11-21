import 'package:flutter/material.dart';
import 'package:menu/menu/constants.dart';
import 'rateservice.dart';

class Preparation extends StatefulWidget {
  const Preparation({Key? key}) : super(key: key);

  @override
  _PreparationState createState() => _PreparationState();
}

class _PreparationState extends State<Preparation> {
  var _currentIcon = Image.asset('icons/progress0.png');
  var _firstStep = stepInProgress;
  var _secondStep = stepUnDone;
  var _thirdStep = stepUnDone;
  var _fourthStep = stepUnDone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: appBarBackgroundColor,
        title: Text(
          'Track Your Order',
          style: appBarTextStyle,
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 250.0,
            width: double.infinity,
            child: _currentIcon,
          ),
          Card(
            child: TextButton(
              onPressed: () {
                setState(() {
                  _currentIcon = Image.asset('icons/progress0.png');
                  _firstStep = stepInProgress;
                  _secondStep = stepUnDone;
                  _thirdStep = stepUnDone;
                  _fourthStep = stepUnDone;
                });
              },
              child: SizedBox(
                  height: 70.0,
                  width: double.infinity,
                  child: Center(
                    child: Row(
                      children: [
                        _firstStep,
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Your order is taken!',
                            style: dishDescTextStyle,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
          Card(
            child: TextButton(
              onPressed: () {
                setState(() {
                  _currentIcon = Image.asset('icons/progress1.png');
                  _firstStep = stepDone;
                  _secondStep = stepInProgress;
                  _thirdStep = stepUnDone;
                  _fourthStep = stepUnDone;
                });
              },
              child: SizedBox(
                  height: 70.0,
                  width: double.infinity,
                  child: Center(
                    child: Row(
                      children: [
                        _secondStep,
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Your order is being prepared!',
                            style: dishDescTextStyle,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
          Card(
            child: TextButton(
              onPressed: () {
                setState(() {
                  _currentIcon = Image.asset('icons/progress2.png');
                  _firstStep = stepDone;
                  _secondStep = stepDone;
                  _thirdStep = stepInProgress;
                  _fourthStep = stepUnDone;
                });
              },
              child: SizedBox(
                  height: 70.0,
                  width: double.infinity,
                  child: Center(
                    child: Row(
                      children: [
                        _thirdStep,
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Your meal is cooking!',
                            style: dishDescTextStyle,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
          Card(
            child: TextButton(
              onPressed: () {
                setState(() {
                  _currentIcon = Image.asset('icons/progress3.png');
                  _firstStep = stepDone;
                  _secondStep = stepDone;
                  _thirdStep = stepDone;
                  _fourthStep = stepDone;
                });
              },
              child: SizedBox(
                  height: 70.0,
                  width: double.infinity,
                  child: Center(
                    child: Row(
                      children: [
                        _fourthStep,
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Your meal is ready,\nHurry before it gets cold!',
                            style: dishDescTextStyle,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
          lineBetween,
          Card(
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RateService()));
              },
              child: SizedBox(
                height: 70.0,
                width: double.infinity,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Rate your service!',
                        style: TextStyle(
                          color: Color(0xFF032C2C),
                          fontSize: 27.0,
                          fontFamily: 'Ubuntu',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Icon(Icons.arrow_forward,
                            color: Color(0xFF032C2C), size: 40.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
