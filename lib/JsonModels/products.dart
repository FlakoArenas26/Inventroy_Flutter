// Modelo de Productos
import 'package:inventory/JsonModels/categories.dart';

class Product {
  final int? id;
  final String name;
  final double price;
  final int quantity;
  final Category category;

  Product({
    this.id,
    required this.name,
    required this.price,
    required this.quantity,
    required this.category,
  });

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        quantity: json["quantity"],
        category: Category.fromMap(json["category"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "price": price,
        "quantity": quantity,
        "category": category.toMap(),
      };
}
