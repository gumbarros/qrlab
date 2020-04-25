import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


final String productTable = "productTable";
final String idColumn = "idColumn";
final String nameColumn = "nameColumn";
final String descriptionColumn = "descriptionColumn";
final String quantityColumn = "quantityColumn";
final String minQuantityColumn = "minQuantityColumn";

class LabHelper {
  static final LabHelper _instance = LabHelper.internal();

  factory LabHelper() => _instance;

  LabHelper.internal();

  Database _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    } else {
      _db = await initDb();
      return _db;
    }
  }

  Future<Database> initDb() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, "products.db");

    return await openDatabase(path, version: 1,
        onCreate: (Database db, int newerVersion) async {
      await db.execute(
          "CREATE TABLE $productTable($idColumn INTEGER PRIMARY KEY, $nameColumn TEXT, "
          "$descriptionColumn TEXT, $quantityColumn DOUBLE, $minQuantityColumn DOUBLE)");
    });
  }

  Future<Product> saveProduct(Product product) async {
    Database dbProduct = await db;
    product.id = await dbProduct.insert(productTable, product.toMap());
    return product;
  }

  Future<Product> getProduct(int id) async {
    Database dbProduct = await db;
    List<Map> maps = await dbProduct.query(productTable,
        columns: [
          idColumn,
          nameColumn,
          descriptionColumn,
          quantityColumn,
          minQuantityColumn
        ],
        where: "$idColumn = ?",
        whereArgs: [id]);
    if (maps.length > 0) {
      return Product.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<int> deleteProduct(int id) async {
    Database dbProduct = await db;
    return await dbProduct
        .delete(productTable, where: "$idColumn = ?", whereArgs: [id]);
  }

  Future<int> updateProduct(Product product) async {
    Database dbProduct = await db;
    return await dbProduct.update(productTable, product.toMap(),
        where: "$idColumn = ?", whereArgs: [product.id]);
  }

  Future<List> getAllProducts() async {
    Database dbProduct = await db;
    List listMap = await dbProduct.rawQuery("SELECT * FROM $productTable");
    List<Product> listProduct = List();
    for (Map m in listMap) {
      listProduct.add(Product.fromMap(m));
    }
    return listProduct;
  }

  Future close() async {
    Database dbProduct = await db;
    dbProduct.close();
  }
}

class Product {
  int id;
  String name;
  String description;
  double quantity;
  double minimumQuantity;

  Product();

  Product.fromMap(Map map) {
    id = map[idColumn];
    name = map[nameColumn];
    description = map[descriptionColumn];
    quantity = map[quantityColumn];
    minimumQuantity = map[minQuantityColumn];
  }

  Map toMap() {
    Map<String, dynamic> map = {
      nameColumn: name,
      descriptionColumn: description,
      quantityColumn: quantity,
      minQuantityColumn: minimumQuantity,
    };
    if (id != null) {
      map[idColumn] = id;
    }
    return map;
  }

  @override
  String toString() {
    return "Contact(Id: $id, Nome: $name, Descrição: $description, Quantidade: $quantity, Quantidade mínima: $minimumQuantity)";
  }
}
