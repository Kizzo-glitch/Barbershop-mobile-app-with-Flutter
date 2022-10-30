  
import 'database.dart';

class ServiceDetail {
  int id;
  String name;
  String short_description;
  int price ;
  String logo ;

  ServiceDetail({this.id, this.name, this.short_description, this.price, this.logo});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      DBProvider.COLUMN_NAME: name,
      DBProvider.COLUMN_DESCRIPTION: short_description,
      DBProvider.COLUMN_PRICE: price
    };

    if (id != null) {
      map[DBProvider.COLUMN_ID] = id;
    }

    return map;
  }

  ServiceDetail.fromMap(Map<String, dynamic> map) {
    id = map[DBProvider.COLUMN_ID];
    name = map[DBProvider.COLUMN_NAME];
    short_description = map[DBProvider.COLUMN_DESCRIPTION];
    price = map[DBProvider.COLUMN_PRICE];
  }
}