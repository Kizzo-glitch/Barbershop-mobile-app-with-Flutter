import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
          // Important: Remove any padding from the ListView.
          // padding: EdgeInsets.zero,
          children: [

            DrawerHeader(
              // Container(
              // height: 50,
              // width: 50,
                decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://s.inyourpocket.com/gallery/226052.jpg"
                  ),
                  fit: BoxFit.cover,
                )
              ),
            // ),
              // decoration: BoxDecoration(
              //   color: Colors.blue,
              // ),
              child: Text('Lizzy Maloba',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight :FontWeight.bold,
                fontStyle :FontStyle.italic
              )
              ),
              
            ),
            // Container(
            //   height: 50,
            //   width: 50,
            //     decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: NetworkImage(
            //         "https://s.inyourpocket.com/gallery/226052.jpg"
            //       ),
            //       fit: BoxFit.cover,
            //     )
            //   ),
            // ),
            ListTile(
              title: Text('Branches',
                style: TextStyle(
                  fontSize: 20
                ), 
              ),
              trailing: Icon(FontAwesomeIcons.home,
              color: Colors.red,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Cart',
                style: TextStyle(
                  fontSize: 20
                )
              ),
              trailing: Icon(FontAwesomeIcons.shoppingCart,
              color: Colors.green,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Booking',
                style: TextStyle(
                  fontSize: 20
                )
              ),
              trailing: Icon(FontAwesomeIcons.calendarCheck,
              color: Colors.blue,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Logout',
                style: TextStyle(
                  fontSize: 20
                )
              ),
              trailing: Icon(Icons.logout,
              color: Colors.pink,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),  
    );
  }
}