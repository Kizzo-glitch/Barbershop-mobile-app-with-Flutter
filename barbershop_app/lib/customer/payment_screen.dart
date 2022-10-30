import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'navigation_drawer.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Make your payment")),
      drawer: NavigationDrawer(),
      body: Padding(
          padding: EdgeInsets.only(top: 30),
          child: Column(children: [
            Text('Payment Method', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            SizedBox(
              height: 10,
            ),
            Column(
            children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: [
                Text('Card:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
                Icon(FontAwesomeIcons.ccVisa, color: Colors.blue[900], ),
                Text(' 4242'),
                Text('12/24'),
                Text('233')
              ]),
              SizedBox(height: 20, ),
              Padding(
                padding: EdgeInsets.only(left: 34),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start, 
                  children: [
                    Text('Cash:     ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    Icon(Icons.money, color: Colors.green,),
                    
                  ])
            )]),
            Spacer(),
            SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.green,
                    shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    shadowColor: Colors.red,
                    elevation: 20,
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: Text('Place Booking / Order',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ))
          ])),
    );
  }
}