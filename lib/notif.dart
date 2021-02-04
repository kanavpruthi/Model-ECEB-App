import 'package:flutter/cupertino.dart';

import 'main.dart';
import 'package:flutter/material.dart';

Widget getNotifContent() {
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Notifications',
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
                      padding: EdgeInsets.only(left: 27),
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
            flex: 9,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                top: 20,
                right: 20,
                bottom: 10,
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Notification("Riya", 0, "Prenatal Ward", 1),
                    Notification("Oni", 1, "Prenatal Ward", 2),
                    Notification("Nia", 1, "Intensive Care Unit", 1),
                    Notification("Samantha", 1, "Discharged", 0),
                    Notification("Ariana", 2, "Prenatal Ward", 2),
                    Notification("Rue", 2, "Prenatal Ward", 2),
                    Notification("Natasha", 3, "Discharged", 0),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget Notification(String mom, int time, String location, int status) {
  Color base;
  Color lite;
  if (status == 0) {
    base = Colors.grey;
    lite = Colors.grey[200];
  } else if (status == 1) {
    base = Colors.red;
    lite = Colors.red[50];
  } else {
    base = Colors.blue;
    lite = Colors.blue[50];
  }
  return Padding(
    padding: EdgeInsets.only(
      bottom: 10,
    ),
    child: Container(
      decoration: BoxDecoration(
        color: lite,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: ListTile(
        leading: Icon(
          Icons.child_care,
          color: base,
          size: 35,
        ),
        title: Text(
          "Baby of $mom ($time hours)",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        subtitle: Text("Location: $location "),
      ),
    ),
  );
}
