import 'package:flutter/material.dart';
import 'package:home.dart';
import 'package:login.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Container(
            child: Container(
              padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 80.0,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFcaa052)),
                    ),
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(
                      fontFamily: 'Alegreya Sans',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFcaa052),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFcaa052)),
                    ),
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(
                      fontFamily: 'Alegreya Sans',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFcaa052),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFcaa052)),
                    ),
                    labelText: 'USERNAME',
                    labelStyle: TextStyle(
                      fontFamily: 'Alegreya Sans',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFcaa052),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            height: 40.0,
            width: 400.0,
            child: Material(
              borderRadius: BorderRadius.circular(20.0),
              shadowColor: Color(0xFFffffb1),
              color: Color(0xFFffd180),
              elevation: 7.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Center(
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Alegreya Sans',
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 40.0,
            width: 400.0,
            color: Colors.transparent,
            child: Container(
                 decoration: BoxDecoration(
                 border: Border.all(
                 color: Colors.black,
                 style: BorderStyle.solid,
                 width: 1.0,
                ),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20.0),
                 ),
                 child: GestureDetector(
                     onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                   child: Center(
                       child: Text(
                          'Already A Member',
                           style: TextStyle(
                            color: Colors.black,
                           fontWeight: FontWeight.bold,
                           fontFamily: 'Alegreya Sans',
                         ),
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
