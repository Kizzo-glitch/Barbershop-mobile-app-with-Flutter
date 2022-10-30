// import 'package:flutter/material.dart';

// class CartScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Items added to cart')
//       ),
//       body: FutureBuilder(
//         future: this.handler.retrieveUsers(),
//         builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
//           if (snapshot.hasData) {
//             return ListView.builder(
//               itemCount: snapshot.data?.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return Dismissible(
//                   direction: DismissDirection.endToStart,
//                   background: Container(
//                     color: Colors.red,
//                     alignment: Alignment.centerRight,
//                     padding: EdgeInsets.symmetric(horizontal: 10.0),
//                     child: Icon(Icons.delete_forever),
//                   ),
//                   key: ValueKey<int>(snapshot.data![index].id!),
//                   onDismissed: (DismissDirection direction) async {
//                     await this.handler.deleteUser(snapshot.data![index].id!);
//                     setState(() {
//                       snapshot.data!.remove(snapshot.data![index]);
//                     });
//                   },
//                   child: Card(
//                       child: ListTile(
//                     contentPadding: EdgeInsets.all(8.0),
//                     title: Text(snapshot.data![index].name),
//                     subtitle: Text(snapshot.data![index].age.toString()),
//                   )),
//                 );
//               },
            
//     );
//   }
// }