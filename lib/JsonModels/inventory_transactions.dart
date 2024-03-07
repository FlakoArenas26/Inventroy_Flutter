// Modelo de Transacciones de Inventario
import 'package:inventory/JsonModels/products.dart';

class InventoryTransaction {
  final int? id;
  final Product product;
  final int quantity;
  final DateTime timestamp;

  InventoryTransaction({
    this.id,
    required this.product,
    required this.quantity,
    required this.timestamp,
  });

  factory InventoryTransaction.fromMap(Map<String, dynamic> json) =>
      InventoryTransaction(
        id: json["id"],
        product: Product.fromMap(json["product"]),
        quantity: json["quantity"],
        timestamp: DateTime.parse(json["timestamp"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "product": product.toMap(),
        "quantity": quantity,
        "timestamp": timestamp.toIso8601String(),
      };
}
