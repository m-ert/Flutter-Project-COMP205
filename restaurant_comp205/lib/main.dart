import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: FirstRoute(),
  ));
}
class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(
            child: const Text('Payment Summary',style:TextStyle( fontSize:25))
        ),
      ),
      body: SafeArea(
         child : new Column(
           children: <Widget>[
             Row(
         children: <Widget>[
           Container(
               alignment: Alignment.centerLeft,
               //child: Text('   Ordered Food', style: TextStyle(fontSize: 20)),
                 margin: EdgeInsets.fromLTRB(0, 0, 0,0),
                 width: 411,
                 height: 30 ,
                 color: Colors.white,
               ),
         ],),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: <Widget>[
                 Container(
                   width:100,
                   height:100,
                   margin: EdgeInsets.fromLTRB(30,10,10,20),
                   decoration:BoxDecoration(
                       color:Colors.white,
                       shape:BoxShape.rectangle,
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                       image:DecorationImage(
                         image: NetworkImage('https://images.unsplash.com/photo-1610970878459-a0e464d7592b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1848&q=80'),
                         fit:BoxFit.cover,
                       ),
                       boxShadow:[
                         BoxShadow(color:Colors.white12, offset: Offset(5,5), blurRadius:5)
                       ],
                   ),
                 ),

                 Container(
                   alignment: Alignment.center,
                   margin: EdgeInsets.fromLTRB(70, 0, 0, 50),
                   width: 201,
                   height: 60,
                   color: Colors.white,
                   child: Text('HAMBURGER      35TL', style: TextStyle(fontFamily:'Pacifico',fontSize: 17,fontWeight: FontWeight. bold),),
                 ),
               ],),

             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: <Widget>[
                 Container(
                   //alignment: Alignment.topLeft,
                   width:100,
                   height:100,
                   margin: EdgeInsets.fromLTRB(30,10,10,10),
                  decoration:BoxDecoration(
                     color:Colors.white,
                     shape:BoxShape.rectangle,
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                     image:DecorationImage(
                       image: NetworkImage('https://images.unsplash.com/photo-1625679647461-d531a609a0c0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80'),
                       fit:BoxFit.cover,
                     ),
                     boxShadow:[
                       BoxShadow(color:Colors.white12, offset: Offset(5,5), blurRadius:5)
                     ],
                   ),
                 ),
                 Container(
                   alignment: Alignment.centerLeft,
                   margin: EdgeInsets.fromLTRB(70, 0, 0, 50),
                   width: 201,
                   height: 60,
                   color: Colors.white,
                   child: Text('     COLA              5TL   ',  style: TextStyle(fontFamily:'Pacifico',fontSize: 17,fontWeight: FontWeight. bold),),
                 ),
               ],),
             Container(
              alignment: Alignment.center,
               margin: EdgeInsets.fromLTRB(350, 0, 0, 20),
               width: 70,
               height: 70,
               decoration:BoxDecoration(
                 color:Colors.amber,
                 shape:BoxShape.rectangle,
               ),
               child: Text('   TOTAL '
                   '\n'
                   '     40TL', style: TextStyle(fontSize: 15,fontWeight: FontWeight. bold,color: Colors.white),),
             ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: <Widget>[
              new ElevatedButton(
                child: Container(
                  width:155.5,
                  height:155.5,
                  margin: EdgeInsets.fromLTRB(5,30,10,20),
                  decoration:BoxDecoration(
                    color:Colors.white,
                    shape:BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image:DecorationImage(
                      image: NetworkImage('https://www.zdalighting.com/wp-content/uploads/sites/190/2016/05/payment-icon.png'),
                      fit:BoxFit.cover,
                    ),
                      boxShadow:[
                        BoxShadow(color:Colors.amber, offset: Offset(5,5), blurRadius:5)
                      ]
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ThirdRoute()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[350],
                ),),

             new ElevatedButton(
               child: Container(
                 width:155.5,
                 height:155.5,
                 margin: EdgeInsets.fromLTRB(10,30,5,20),
                 decoration:BoxDecoration(
                     color:Colors.white,
                     shape:BoxShape.rectangle,
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                     image:DecorationImage(
                       image: NetworkImage('https://ccinfo.unc.edu/wp-content/uploads/sites/219/2018/02/credit-card.png'),
                       fit:BoxFit.cover,
                     ),
                     boxShadow:[
                       BoxShadow(color:Colors.amber, offset: Offset(5,5), blurRadius:5)
                     ]
                 ),

               ),
               onPressed: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const SecondRoute()),
                 );
               },
               style: ElevatedButton.styleFrom(
                 primary: Colors.grey[350],
               ),),
            ],),
           ],),),);}
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title:( const Text('Payment')),
      ),
      body: SafeArea(
        child : new Column(
          children: <Widget>[
            Container(
              child: new Center(
                  child: new Column(
                      children : [
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Enter Name",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(
                              ),
                            ),
                          ),
                          validator: (val) {
                            if(val!.length==0) {
                              return "Name cannot be empty";
                            }else{
                              return null;
                            }
                          },
                          keyboardType: TextInputType.text,
                          style: new TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ]
                  )
              ),),
            Container(
            child: new Center(
                child: new Column(
                    children : [
                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Enter Cart ID",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(
                            ),
                          ),
                        ),
                        validator: (val) {
                          if(val!.length==0) {
                            return "Cart ID cannot be empty";
                          }else{
                            return null;
                          }
                        },
                        keyboardType: TextInputType.text,
                        style: new TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                    ]
                )
            ),),
          Container(
            child: new Center(
                child: new Column(
                    children : [
                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Enter CVV",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(
                            ),
                          ),

                        ),
                        validator: (val) {
                          if(val!.length==0) {
                            return "CVV cannot be empty";
                          }else{
                            return null;
                          }
                        },
                        keyboardType: TextInputType.text,
                        style: new TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                    ]
                )
            ),),
          Container(
            child: new Center(
                child: new Column(
                    children : [
                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Enter Expiration Date",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(
                            ),
                          ),
                          //fillColor: Colors.green
                        ),
                        validator: (val) {
                          if(val!.length==0) {
                            return "Expiration Date cannot be empty";
                          }else{
                            return null;
                          }
                        },
                        keyboardType: TextInputType.text,
                        style: new TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                    ]
                )
            ),),
          Container(
              alignment: Alignment.centerLeft,
              width:300,
              height:200,
              margin: EdgeInsets.fromLTRB(60,60,60,20),
              decoration:BoxDecoration(
                color: Colors.grey[350],
                image:DecorationImage(
                  image: NetworkImage('https://www.vippng.com/png/detail/424-4249192_credit-card-design-and-collaterals-black-credit-card.png'),
                  fit:BoxFit.fitWidth,),
              )
          ),
          new RaisedButton(
            color: Colors.white,
          child: Container(
              alignment: Alignment.center,
              width:150,
              height:40,
              margin: EdgeInsets.all(10),
              decoration:BoxDecoration(
                color: Colors.amber,
              ),
            child: Text(
              '   Validate',
    style:TextStyle( fontSize:20, color: Colors.white),
            ),
          ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ThirdRoute()),
          );},
      ),],),
      ),);
  }}
class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
      ),

    );
  }
}
