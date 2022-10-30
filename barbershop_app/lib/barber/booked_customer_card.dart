import 'package:flutter/material.dart';
import 'complete_booking.dart';
import 'package:fluttertoast/fluttertoast.dart';

// class BookedCard extends StatefulWidget {
class BookedCard extends StatelessWidget {
//   @override
//   _BookedCardState createState() => _BookedCardState();
// }

// class _BookedCardState extends State<BookedCard> {

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("INTERESTED IN THIS BOOKING?",
            style: TextStyle(
              color: Colors.red
            )),
          content: Text("Would you like to take this booking?"),
          actions: [
            TextButton(
              child: new Text("OK"),
              onPressed: () {

                // REMEMBER TO PUT THE POST API (BARBER PICK BOOKING) FOR THE SERVER HERE

                Fluttertoast.showToast(
                            msg: "BOOKING CHOSEN",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.CENTER,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                            );
                Navigator.of(context).pop();
                Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CompleteBooking()),
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
    return Card(
      child: GestureDetector(
        onTap: () {
          _showDialog(context);
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => CompleteBooking()),
          // );
        },
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(
              color: Colors.black,
              width: 5
            ),
            borderRadius: BorderRadius.circular(12),
            ), 
            child:Column(
            children: [
              Text(
                'Branch Name',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white60
                )),
              Divider(thickness: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://thezoneatrosebank.co.za/the_zone/uploads/l1.jpg"),
                      ),
                      border: Border.all(
                        color: Colors.black,
                        width: 2
                        ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                
                  ),
                  SizedBox(width: 20, ),
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Text('Customer\'s Name',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white60
                        )),
                      Text('Customer\'s Address',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.white60
                      )),
                      Text('Customer\'s Phone Number',style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.white60
                      )
                      )
                    ]
                  )
                ]
              )
            ]
          )
        )
      )
    );
  }
}