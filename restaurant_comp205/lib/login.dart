import 'package:flutter/material.dart';
import 'package:signup.dart';
import 'package:home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
            child: Text(
              'WELCOME',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 50.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top:35.0, left: 20.0, right: 20.0),
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
                  height: 20.0,
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
                  height: 5.0,
                ),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top: 15.0, left: 20.0),
                  child: InkWell(
                    child: Text('Forgot Password',
                      style: TextStyle(
                        color: Color(0xFF5E0B0B),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Alegreya Sans',
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),

              ],
            ),
          ),
          SizedBox(
            height: 15.0,
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
                    'LOGIN',
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
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'New member?',
                style: TextStyle(
                    fontFamily: 'Alegreya Sans'
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                },
                child: Text(
                  'Signup',
                  style: TextStyle(
                    color: Color(0xFF5E0B0B),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Alegreya Sans',
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
