import 'main.dart';
import 'package:flutter/material.dart';

Widget getHomeContent() {
  return Scaffold(
    body: SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: basicTheme,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      padding: EdgeInsets.only(left: 10),
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 47.5),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'ECEB',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 26,
                            ),
                          ),
                          Text(
                            'ID: ****124',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 110),
                      child: Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage('images/childcare_logo.png'), fit: BoxFit.fill),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Summary of the last 24 hours',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 11.6, right: 12, bottom: 20, top: 20),
                  child: Row(
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.child_care,
                                color: basicTheme,
                                size: 25,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Text(
                                  'Admitted:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Text(
                                '14',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Material(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          elevation: 5,
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.child_care,
                                  color: Colors.grey,
                                  size: 25,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: Text(
                                    'Discharge:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Text(
                                  '22',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.child_care,
                                color: Colors.red,
                                size: 25,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Text(
                                  'High Risk',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Text(
                                '5',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  color: basicTheme,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 40,
                    right: 40,
                  ),
                  child: RaisedButton(
                    splashColor: Colors.grey[300],
                    hoverColor: Colors.grey[300],
                    color: Colors.white,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.white),
                    ),
                    onPressed: () {},
                    textColor: Colors.white,
                    padding: EdgeInsets.all(0.0),
                    child: Container(
//                      decoration: BoxDecoration(
//                        color: Colors.white,
//                      ),
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.person_add,
                            color: Colors.blue[900],
                            size: 50,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text('To Register a Baby',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'On-Call Doctors',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        elevation: 0,
                        child: Container(
                          padding: EdgeInsets.only(
                            left: 10,
                            top: 20,
                            bottom: 20,
                            right: 10,
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: 90,
                                height: 90,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: AssetImage('images/Doc1.jpg'), fit: BoxFit.fill),
                                ),
                              ),
                              Container(
                                height: 5,
                              ),
                              Text(
                                'Andrea',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Online',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        elevation: 0,
                        child: Container(
                          padding: EdgeInsets.only(
                            left: 10,
                            top: 20,
                            bottom: 20,
                            right: 10,
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: 90,
                                height: 90,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: AssetImage('images/Doc2.jpg'), fit: BoxFit.fill),
                                ),
                              ),
                              Container(
                                height: 5,
                              ),
                              Text(
                                'Kim',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Online',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        elevation: 0,
                        child: Container(
                          padding: EdgeInsets.only(
                            left: 10,
                            top: 20,
                            bottom: 20,
                            right: 10,
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: 90,
                                height: 90,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: AssetImage('images/Doc3.jpg'), fit: BoxFit.fill),
                                ),
                              ),
                              Container(
                                height: 5,
                              ),
                              Text(
                                'Jane',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Online',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
