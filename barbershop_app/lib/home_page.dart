import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Container(
          decoration: BoxDecoration(
              image: DecorationImage(
        image: NetworkImage("https://pbs.twimg.com/media/EfXysnDWoAAALZD.jpg"),
        fit: BoxFit.cover,
      ))),
      Container(
          margin: EdgeInsets.fromLTRB(30, 440, 30, 0),
          child: Column(children: [
            Center(
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.red,
                shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                shadowColor: Colors.white,
                elevation: 20,
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
                ),
              ),
              child: Text('Continue as Customer', style: TextStyle(color: Colors.white,)),
              onPressed: () {
                Navigator.pushNamed(context, '/customer_signIn');
              },
            ))),
            SizedBox(
              height: 20,
            ),
            Center(
                child: SizedBox(
                  height:40,
                  width: double.infinity,
                child:TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.white,
                shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                shadowColor: Colors.red,
                elevation: 20,
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
                ),
              ),
              child: Text('Continue as Barber', style: TextStyle(color: Colors.red,)),
            )))
            // Container(height: 40, decoration: BoxDecoration(border: Border.all(color: Colors.red, style: BorderStyle.solid, width: 2), color: Colors.transparent, borderRadius: BorderRadius.circular(20)), child: Center(child: Text('Continue as Customer'))),
            // Container(height: 40, decoration: BoxDecoration(border: Border.all(color: Colors.blue, style: BorderStyle.solid, width: 2), color: Colors.transparent, borderRadius: BorderRadius.circular(20)), child: Center(child: Text('Continue as Barber')))
          ]))
    ])));
  }
}