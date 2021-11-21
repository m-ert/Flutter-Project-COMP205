import 'package:flutter/material.dart';
import 'package:menu/menu/constants.dart';

class RateService extends StatefulWidget {
  const RateService({Key? key}) : super(key: key);

  @override
  _RateServiceState createState() => _RateServiceState();
}

class _RateServiceState extends State<RateService> {
  var firstStar = starNull;
  var secondStar = starNull;
  var thirdStar = starNull;
  var fourthStar = starNull;
  var fifthStar = starNull;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: appBarBackgroundColor,
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                'Rate your service:',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 27.0,
                  fontFamily: 'Ubuntu',
                ),
              ),
            ),
          ),
          Card(
            child: SizedBox(
              height: 70.0,
              width: double.infinity,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          firstStar = starFilled;
                          secondStar = starNull;
                          thirdStar = starNull;
                          fourthStar = starNull;
                          fifthStar = starNull;
                        });
                      },
                      icon: firstStar,
                      iconSize: 45.0,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          firstStar = starFilled;
                          secondStar = starFilled;
                          thirdStar = starNull;
                          fourthStar = starNull;
                          fifthStar = starNull;
                        });
                      },
                      icon: secondStar,
                      iconSize: 45.0,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          firstStar = starFilled;
                          secondStar = starFilled;
                          thirdStar = starFilled;
                          fourthStar = starNull;
                          fifthStar = starNull;
                        });
                      },
                      icon: thirdStar,
                      iconSize: 45.0,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          firstStar = starFilled;
                          secondStar = starFilled;
                          thirdStar = starFilled;
                          fourthStar = starFilled;
                          fifthStar = starNull;
                        });
                      },
                      icon: fourthStar,
                      iconSize: 45.0,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          firstStar = starFilled;
                          secondStar = starFilled;
                          thirdStar = starFilled;
                          fourthStar = starFilled;
                          fifthStar = starFilled;
                        });
                      },
                      icon: fifthStar,
                      iconSize: 45.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 8.0),
            child: SizedBox(
              height: 160.0,
              width: double.infinity,
              child: TextField(
                minLines: null,
                maxLines: null,
                expands: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: 'Enter your feedback',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
