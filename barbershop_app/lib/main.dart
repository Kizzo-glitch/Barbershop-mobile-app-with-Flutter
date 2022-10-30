import 'package:flutter/material.dart';
import 'customer/customer_signIn.dart';
import 'home_page.dart';
import 'customer/booking_screen.dart';
import 'customer/service_detail_screen.dart';
import 'customer/payment_screen.dart';
import 'barber/booked_customers.dart';
import 'barber/statistic_screen.dart';
import 'customer/service_counter.dart';
import 'package:provider/provider.dart';
import 'barber/complete_booking.dart';
import 'customer/branch_list.dart';
import 'barber/barber_signin.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    // '/': (context)=> HomePage(),
    // '/customer_signIn': (context)=> CustomerSignIn(),
    // '/barber_signIn': (context)=> BarberSignIn(),
    // '/booking': (context)=> Booking(),
    // '/': (context)=> ServiceDetailScreen(),
    // '/': (context)=> Payment(),
    // '/': (context) => BookedCustomers(),
    // '/': (context) => Statistic(),
    '/': (context) => BranchList(),
    // '/': (context) => CompleteBooking(),
  },
),
);

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return  MultiProvider(
//        providers: [
//         ChangeNotifierProvider(create: (_) => ServiceCounter()),
//         // Provider<SomethingElse>(create: (_) => SomethingElse()),
//         // Provider<AnotherThing>(create: (_) => AnotherThing()),
//       ],
//       // builder: (_) => ServiceCounter(),

//     child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         initialRoute: '/',
//         routes: {
//'/': (context)=> HomePage(),
//'/customer_signIn': (context)=> CustomerSignIn(),
//'/booking': (context)=> Booking(),
// '/': (context)=> ServiceDetail(),
//'/': (context)=> Payment(),
//'/': (context) => BookedCustomers(),
//           //'/': (context) => Statistic(),
//         },
//       ),
//     );
//   }
// }

// ChangeNotifierProvider<ServiceCounter>(
//     builder: (_) => ServiceCounter(),
// child: MaterialApp(
//     debugShowCheckedModeBanner: false,
//     initialRoute: '/',
//     routes: {
//       //'/': (context)=> HomePage(),
//       //'/customer_signIn': (context)=> CustomerSignIn(),
//       //'/booking': (context)=> Booking(),
//       '/': (context)=> ServiceDetail(),
//       //'/': (context)=> Payment(),
//       //'/': (context) => BookedCustomers(),
//       //'/': (context) => Statistic(),
//     },
//   )));