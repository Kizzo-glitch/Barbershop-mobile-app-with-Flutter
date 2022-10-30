import 'package:flutter/material.dart';
import 'service_detail_data.dart';
import 'service_detail_model.dart';
import 'database.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ServiceDetailScreen extends StatefulWidget {
  @override
  _ServiceDetailScreenState createState() => _ServiceDetailScreenState();
}

class _ServiceDetailScreenState extends State<ServiceDetailScreen> {
  //Future<List>ServiceDetail>> _serviceList;

  final ServiceDetail data = services;
  // final dataBase = DBProvider();

  // int _price;
  // String _name;
  // String _shortDescription;

  void _addToCart() async {
    
    Map<String, dynamic> service = {
      DBProvider.COLUMN_NAME: data.name,
      DBProvider.COLUMN_DESCRIPTION: data.short_description,
      DBProvider.COLUMN_DESCRIPTION: data.price
    };
    // ServiceDetail service = ServiceDetail(DBProvider.COLUMN_NAME: data.name, 
    // DBProvider.COLUMN_DESCRIPTION: data.short_description, 
    // DBProvider.COLUMN_PRICE: data.price);

    // if (widget.service == null) {
    //   service.status = 0;

    //   await DBProvider.insertService(service);
    // } else {
    //   service.status = widget.service.status;
    //  DBProvider.updateSrvice(service);
    // }
    // Fluttertoast.showToast(msg: "Service added to cart", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER);
  }

  @override
  void initState() {
    super.initState();
    
    // if (widget.data != null) {
    //   _name = widget.data.name;
    //   _short_description = widget.data.calories;
    //   _price = widget.data.price;
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Items to add to cart')),
        body: Column(children: [
          Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
              child: Container(
                height: 180,
                //width: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(data.logo), fit: BoxFit.cover),
                ),
              )),
          //Divider(height: 5, ),
          SizedBox(
            height: 20,
          ),
          Center(child: Text('${data.name}')),
          Divider(height: 10, thickness: 2),
          Center(child: Text('${data.short_description}')),
          Divider(height: 10, thickness: 2),
          Center(child: Text('${data.price.toString()}')),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(
                bottom: 10,
              ),
              child: SizedBox(
                  width: 180,
                  child: TextButton(
                    onPressed: () {
                      _addToCart();
                      // DBProvider.instance.insertService(
                      //     DBProvider.COLUMN_NAME: data.name,
                      //     DBProvider.COLUMN_DESCRIPTION: data.short_description,
                      //     DBProvider.COLUMN_PRICE: data.price,
                      // );
                    },
                      child: Text("Add to cart", style: TextStyle(color: Colors.white)),
                      style: TextButton.styleFrom(
                        //primary: Colors.teal,
                        backgroundColor: Colors.teal,
                        shadowColor: Colors.red,
                        elevation: 10,
                      ))))
        ]));
  }
}
