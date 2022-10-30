import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'service_detail_model.dart';
import 'package:path/path.dart';

// class Cart {
//   final int id;
//   final String serviceId;
//   final String serviceName;
//   final String servicePrice;
//   final String serviceQuantity;
//   final String branchId;

//   Cart({this.id, this.serviceId, this.serviceName, this.servicePrice, this.serviceQuantity, this.branchId});
// }

class DBProvider {

  static const String TABLE_SERVICE = "service";
  static const String COLUMN_ID = "id";
  static const String COLUMN_NAME = "name";
  static const String COLUMN_DESCRIPTION = "short_description";
  static const String COLUMN_PRICE = "price";

  DBProvider._();
  static final DBProvider db = DBProvider._();

  static Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;

    // if _database is null we instantiate it
    _database = await initDB();
    return _database;
  }

  initDB() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "ServiceDB.db");
    return await openDatabase(path, version: 1, onOpen: (db) {}, 
      onCreate: (Database db, int version) async {
        await db.execute("CREATE TABLE $TABLE_SERVICE ("
            "$COLUMN_ID INTEGER PRIMARY KEY,"
            "$COLUMN_NAME TEXT,"
            "$COLUMN_DESCRIPTION TEXT,"
            "$COLUMN_PRICE INTEGER"
            ")");
    });
  }

  // newService(ServiceDetail newService) async {
  //   final db = await database;
  //   //get the biggest id in the table
  //   var table = await db.rawQuery("SELECT MAX(id)+1 as id FROM Cart");
  //   int id = table.first["id"];
  //   //insert to the table using the new id
  //   var raw = await db.rawInsert(
  //       "INSERT Into ServiceDB (id,service_id,service_name,service_price,service_quantity,branch_id)"
  //       " VALUES (?,?,?,?)",
  //       [
  //         id,
  //         newCart.serviceId,
  //         newCart.serviceName,
  //         newCart.servicePrice,
  //         newCart.serviceQuantity,
  //         newCart.branchId
  //       ]);
  //   return raw;
  // }
  Future<ServiceDetail> insertService(ServiceDetail service) async {
    Database db = await database;
    service.id = await db.insert(TABLE_SERVICE, service.toMap());
    return service;
  }

  updateService(ServiceDetail newService) async {
    final db = await database;
    var res = await db.update(TABLE_SERVICE, newService.toMap(), where: "id = ?", whereArgs: [
      newService.id
    ]);
    return res;
  }

  Future<int> delete(int id) async {
    final db = await database;

    return await db.delete(
      TABLE_SERVICE,
      where: "id = ?",
      whereArgs: [id],
    );
  }

  // getService(int id) async {
  //   final db = await database;
  //   var res = await db.query("ServiceDB", where: "id = ?", whereArgs: [
  //     id
  //   ]);
  //   return res.isNotEmpty ? ServiceDetail.fromMap(res.first) : null;
  // }

  // Future<List<ServiceDetail>> getAllCarts() async {
  //   final db = await database;
  //   var res = await db.query("ServiceDB");
  //   List<ServiceDetail> list = res.isNotEmpty ? res.map((c) => ServiceDetail.fromMap(c)).toList() : [];
  //   return list;
  // }

  Future<List<ServiceDetail>> getServices() async {
    final db = await database;

    var services = await db
        .query(TABLE_SERVICE, columns: [COLUMN_ID, COLUMN_NAME, COLUMN_DESCRIPTION, COLUMN_PRICE]);

    List<ServiceDetail> serviceList = List<ServiceDetail>();

    services.forEach((currentService) {
      ServiceDetail service = ServiceDetail.fromMap(currentService);

      serviceList.add(service);
    });

    return serviceList;
  }

  deleteService(int id) async {
    final db = await database;
    return db.delete(TABLE_SERVICE, where: "id = ?", whereArgs: [
      id
    ]);
  }

  deleteAll() async {
    final db = await database;
    db.rawDelete("Delete * from ServiceDB");
  }
}