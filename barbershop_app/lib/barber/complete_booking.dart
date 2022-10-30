import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'statistic_screen.dart';

class CompleteBooking extends StatelessWidget {

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("SERVICE FINISHED?",
            style: TextStyle(
              color: Colors.red
            )),
          content: Text("Would you like to complete this booking?"),
          actions: [
            TextButton(
              child: new Text("OK"),
              onPressed: () {
                Fluttertoast.showToast(
                            msg: "SERVICE COMPLETED",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.CENTER,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                            );
                Navigator.of(context).pop();
                Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Statistic()),
                        );
              },
            ),
            TextButton(
              child: new Text("CANCEL"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: 
      Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
              image: NetworkImage(
                "https://d32ogoqmya1dw8.cloudfront.net/images/sp/library/google_earth/google_maps_hello_world.jpg"),
              fit: BoxFit.cover,
            )),
          ),
          // Center(

          // )
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 380),
              child: Container(
                width: 280,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.grey
                  ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left:10),
                      
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                        image: NetworkImage(
                          "https://i0.wp.com/post.healthline.com/wp-content/uploads/2021/02/Female_Portrait_1296x728-header-1296x729.jpg?w=1155&h=2268"),
                        fit: BoxFit.cover,
                        
                        ),
                        // border: Border.all(
                        //   color: Colors.black,
                        //   width: 3,
                        // ),
                        borderRadius: BorderRadius.circular(12)
                        
                      ),
                    ),
                    SizedBox(width: 10, ),
                    Expanded(
                      child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Natasha Pula"),
                        Text("11 pol street, building 4, food 8, boolaward 45 ward 89"),
                        
                      ]
                    )
                    )
                  ]
                )
              )
            )
          ),
          Center(
            child:
              Padding(
                padding: EdgeInsets.fromLTRB(0, 500, 0, 0),
                child: SizedBox(
                    width: 180,
                    child: TextButton(
                      onPressed: () {
                        _showDialog(context);
                        // REMEMBER TO ADD AN API TO POST TO THE SERVER
                      },
                        child: Text("Complete Booking", style: TextStyle(color: Colors.white)),
                        style: TextButton.styleFrom(
                          //primary: Colors.teal,
                          backgroundColor: Colors.teal,
                          shadowColor: Colors.red,
                          elevation: 20,
                        )))))
        ]
      )
    );
  }
}