import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'local_db.g.dart';

class CartItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get itemId => text()();
  TextColumn get title => text()();
  RealColumn get price => real()();
  IntColumn get quantity => integer()();
  TextColumn get imageUrl => text()();
  TextColumn get shopId => text()();
}

@DriftDatabase(tables: [CartItems])
class LocalDatabase extends _$LocalDatabase {
  LocalDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // Cart operations
  Future<List<CartItem>> getCartItems(String shopId) =>
      (select(cartItems)..where((t) => t.shopId.equals(shopId))).get();

  Future<int> addToCart(CartItemsCompanion entry) async {
    // Check if item exists in this shop
    final existing =
        await (select(cartItems)..where(
              (t) =>
                  t.shopId.equals(entry.shopId.value) &
                  t.itemId.equals(entry.itemId.value),
            ))
            .getSingleOrNull();

    if (existing != null) {
      return (update(cartItems)..where((t) => t.id.equals(existing.id))).write(
        CartItemsCompanion(
          quantity: Value(existing.quantity + entry.quantity.value),
        ),
      );
    } else {
      return into(cartItems).insert(entry);
    }
  }

  Future<int> removeFromCart(int id) =>
      (delete(cartItems)..where((t) => t.id.equals(id))).go();

  Future<void> clearCart(String shopId) =>
      (delete(cartItems)..where((t) => t.shopId.equals(shopId))).go();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
