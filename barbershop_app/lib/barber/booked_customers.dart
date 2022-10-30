import 'package:flutter/material.dart';
import 'booked_customer_card.dart';

class BookedCustomers extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: ListView(
      children: [

        BookedCard(),
        //Devider(),
        SizedBox(height: 10, ),
        BookedCard()
       ])
      // body: ListView.separated(
      // padding: const EdgeInsets.all(8),
      // itemCount: entries.length,
      // itemBuilder: (BuildContext context, int index) {
      //   return BookedCard();
      // },
      // separatorBuilder: (BuildContext context, int index) => const Divider(),
      // )
    );
  }
}