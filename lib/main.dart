//Making a model for eceb app.
//sample color greyish blue : #83A0C8
import 'package:ecebmodel/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecebmodel/facility.dart';

//starting point of all flutter apps
void main() {
  runApp(MaterialApp(
    home: ModelApp(),
  ));
}

Color basicTheme = Color.fromRGBO(131, 160, 200, 1);
Color basicText = Color.fromRGBO(81, 126, 167, 1);
String footer = 'By continuing you agree to our Privacy Policy, Data Use Policies including our Cookies Use';
EdgeInsetsGeometry eig = EdgeInsets.only(left: 120, right: 120, top: 60, bottom: 60);
BoxDecoration box_decor_home = BoxDecoration(
  border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
    bottomLeft: Radius.circular(20),
    bottomRight: Radius.circular(20),
  ),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 5,
      blurRadius: 7,
      offset: Offset(0, 3), // changes position of shadow
    ),
  ],
);

class ModelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          size: 30.0,
        ),
        backgroundColor: basicTheme,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 7,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0),
                  ),
                  color: basicTheme,
                ),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage('images/childcare_logo.png'), fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 20,
                      ),
                      Text(
                        'Essential Care for Every Baby',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 10,
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Center(
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProfilePage(),
                                ));
                            print("Pressed Individual");
                          },
                          child: Container(
                            padding: eig,
                            decoration: box_decor_home,
                            child: Text(
                              'Individual',
                              style: TextStyle(
                                color: basicText,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Center(
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Facility(),
                                ));
                            print("Pressed Facility");
                          },
                          child: Container(
                            padding: eig,
                            decoration: box_decor_home,
                            child: Text(
                              'Facility',
                              style: TextStyle(
                                color: basicText,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Container(
                          child: Text(
                            footer,
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
