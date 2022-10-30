import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BarberSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Container(
          decoration: BoxDecoration(
              image: DecorationImage(
        image: NetworkImage("data:image/jpeg;base64,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"),
        fit: BoxFit.cover,
      ))),
      Container(
          margin: EdgeInsets.fromLTRB(30, 420, 30, 0),
          child: Column(children: [
            GestureDetector(
                onTap: () {},
                child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue[900],
                            blurRadius: 2.0,
                            spreadRadius: 1.0,
                            offset: Offset(3.0, 3.0), // shadow direction: bottom right
                          )
                        ],
                        // border: Border.all(
                        //   color: Colors.red,
                        //   style: BorderStyle.solid, width: 2),
                        color: Colors.redAccent[700],
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                          Icon(FontAwesomeIcons.google),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Sign in with google',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ])))),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {},
                child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 2.0,
                            spreadRadius: 1.0,
                            offset: Offset(3.0, 3.0), // shadow direction: bottom right
                          )
                        ],
                        // border: Border.all(
                        //   color: Colors.blue,
                        //   style: BorderStyle.solid, width: 2),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(child: Icon(FontAwesomeIcons.facebook)),
                          SizedBox(
                            width: 10,
                          ),
                          Center(
                              child: Text(
                            'Sign in with facebook',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ))
                        ]))),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {},
                child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 2.0,
                            spreadRadius: 1.0,
                            offset: Offset(3.0, 3.0), // shadow direction: bottom right
                          )
                        ],
                        // border: Border.all(
                        //   color: Colors.blue,
                        //   style: BorderStyle.solid, width: 2),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(child: Icon(FontAwesomeIcons.apple)),
                          SizedBox(
                            width: 10,
                          ),
                          Center(
                              child: Text(
                            'Sign in with with apple',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ))
                        ]))),
            SizedBox(
              height: 30,
            ),
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(children: [
                  Icon(Icons.arrow_back, color: Colors.white),
                  Text(
                    'Back to Main Screen',
                    style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                  )
                ]))
          ]))
    ])));
  }
}
