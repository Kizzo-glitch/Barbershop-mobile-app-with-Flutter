import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'navigation_drawer.dart';


class BranchList extends StatelessWidget {

// class BranchList extends StatefulWidget {
//   @override
//   _BranchListState createState() => _BranchListState();
// }

// class _BranchListState extends State<BranchList> {
  
  // String _searchText = "";
  // Icon _searchIcon = Icon(Icons.search);
  // Widget _appBarTitle = Text( "Legendary Branches");

  // void _searchPressed() {
  //   setState(() {
  //     if (this._searchIcon.icon == Icons.search) {
  //       this._searchIcon = Icon(Icons.close);
  //       this._appBarTitle = TextField(
  //         // controller: _filter,
  //         decoration: InputDecoration(
  //           // border: OutlineInputBorder(
  //           //   borderSide: BorderSide(color: Colors.white)
  //           // ),
  //           enabledBorder: OutlineInputBorder(
  //             borderSide: BorderSide(color: Colors.white, width: 0.0),
  //           ),
  //           suffixIcon: Icon(Icons.search, color: Colors.white),
  //           hintText: 'Search...', 
  //           hintStyle: TextStyle(color: Colors.white),
  //           ),
  //           style: TextStyle(
  //             color: Colors.white
  //         ),
  //       );
  //     } else {
  //       this._searchIcon = Icon(Icons.search);
  //       this._appBarTitle = Text('Legendary Branches');
  //       // filteredNames = names;
  //       // _filter.clear();
  //     }
  //   });
  // }
  
  
  
  
  // http.Response response;
  // final String url = "https://legendsbarber.herokuapp.com/api/customer/branches/";

  // List listResponse;
  // Map mapResponse;

  // Future fetchBranches() async {
  //   http.Response response;
  //   response = await http.get(Uri.parse("https://legendsbarber.herokuapp.com/api/customer/branches/"));

  //   if (response.statusCode == 200) {
  //     setState(() {
  //       mapResponse = json.decode(response.body);
  //       listResponse = mapResponse['branches'];
  //     });
  //   }
  //   // var result = await http.get(Uri.parse(url));
  //   // return json.decode(result.body)["branches"];
  // }

//   class Branches {
//   final int id;
//   final String name;
//   final String phone;
//   final String address;
//   final String logo;

//   Branches({this.id, this.name, this.phone, this.address, this.logo});

//   factory Branches.fromJson(Map<String, dynamic> json) {
//     return Branches(
//       id: json['id'],
//       name: json['name'],
//       phone: json['phone'],
//       address: json['address'],
//       logo: json['logo'],
//     );
//   }
// }

  // @override
  // void initState() {
  //   super.initState();
  //   // fetchBranches();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: 
        // searchBar.build(context),
        AppBar(
          title: Text("Legendary Branches"),
          backgroundColor: Colors.black,
          centerTitle: true,
          // title: _appBarTitle,
          actions: [
           IconButton(
            icon: Icon(Icons.search),
            // _searchIcon,
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            }
            
            // _searchPressed,

          )]
        ),
        drawer: NavigationDrawer(),
        body: ListView( children: [ 
        Branches(
          "https://cutthestereotype.co.za/assets/images/get-to-a-legends-barber-f.jpg",
          "Cape Town",
          "257 Victoria Road, Cape Town",
          "021 992 4380"
        ),
        SizedBox(height: 15, ),
        Branches(
          "https://thezoneatrosebank.co.za/the_zone/uploads/l1.jpg",
          "Durban",
          "48 Johannes Nkosi, Durban",
          "031 992 4380"
        ),
        SizedBox(height: 15, ),
        Branches(
          "https://www.fasa.co.za/wp-content/uploads/2019/12/IMG_9364-scaled.jpg",
          "Pretoria Central",
          "366 Helen Joseph, Pretoria",
          "012 992 4380"
        )
        ]
        //     Column(children: [
        //   Container(
        //       margin: EdgeInsets.only(
        //         top: 10,
        //       ),
        //       decoration: BoxDecoration(
        //         border: Border.all(
        //           color: Colors.black,
        //           width: 4,
        //         )
        //       ),
        //       // child: Container(
        //           child: Column(children: [
        //             Material(
        //               child: Image.network("https://cutthestereotype.co.za/assets/images/get-to-a-legends-barber-f.jpg"),
        //             ),
        //             Text("Cape Town Branch",
        //                 style: TextStyle(
        //                   color: Colors.black,
        //                   fontSize: 20,
        //                   fontWeight: FontWeight.bold,
        //                 )),
        //             Text("257 Victoria Road, Cape Town",
        //                 style: TextStyle(
        //                   color: Colors.black,
        //                   fontSize: 20,
        //                   fontWeight: FontWeight.bold,
        //                 )),
        //             Text("021 992 4380",
        //                 style: TextStyle(
        //                   color: Colors.black,
        //                   fontSize: 20,
        //                   fontWeight: FontWeight.bold,
        //                 ))
        //           ]))
        // ])
    ));
  }
}

class Branches extends StatelessWidget {

  String logo;
  String name;
  String address;
  String number;

  Branches(this.logo, this.name, this.address, this.number);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
          Container(
            
          ),
          Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 4,
                )
              ),
              // child: Container(
                  child: Column(children: [
                    Material(
                      child: Image.network(
                        logo
                        // "https://cutthestereotype.co.za/assets/images/get-to-a-legends-barber-f.jpg"
                        ),
                    ),
                    Text(
                      name
                      // "Cape Town Branch"
                      ,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    Text(
                      address
                      // "257 Victoria Road, Cape Town"
                      ,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    Text(
                      number
                      // "021 992 4380"
                      ,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))
                  ]))
        ]);
  }
}

class DataSearch extends SearchDelegate<String> {

  final branches = [
    "Cape Town",
    "Durban",
    "Pretoria Central",
  ];

  final recentBranches = [
    "Cape Town",
    "Durban",
  ];

  @override
  List<Widget>buildActions(BuildContext context) {
    return [
      IconButton(icon: Icon(Icons.clear), 
      onPressed: () {
        query = "";
      } 
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      }
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Branches(
          "https://cutthestereotype.co.za/assets/images/get-to-a-legends-barber-f.jpg",
          "Cape Town",
          "257 Victoria Road, Cape Town",
          "021 992 4380"
        );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty ? recentBranches 
    : branches.where((p) => p.toLowerCase().startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.home),
        title: RichText(
          text: TextSpan(
            text: suggestionList[index].substring(0, query.length),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            children: [
              TextSpan(
                text: suggestionList[index].substring(query.length),
                style: TextStyle(
                  color: Colors.grey
                )
              )
            ]
          )
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}