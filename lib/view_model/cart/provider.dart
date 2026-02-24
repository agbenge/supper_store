import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store/data/dio_providers.dart';
import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';
import '../../data/local_db.dart';
import 'state.dart';

part 'provider.g.dart';

@riverpod
class CartViewModel extends _$CartViewModel {
  @override
  CartState build() {
    _loadCart();
    return const CartState();
  }

  Future<void> _loadCart() async {
    try {
      final db = ref.read(localDatabaseProvider);
      final allItems = await db.select(db.cartItems).get();

      final Map<String, List<CartItemModel>> itemsByShop = {};
      for (var item in allItems) {
        if (!itemsByShop.containsKey(item.shopId)) {
          itemsByShop[item.shopId] = [];
        }
        itemsByShop[item.shopId]!.add(
          CartItemModel(
            id: item.itemId,
            title: item.title,
            price: item.price,
            quantity: item.quantity,
            imageUrl: item.imageUrl,
            shopId: item.shopId,
          ),
        );
      }
      state = state.copyWith(itemsByShop: itemsByShop);
    } catch (e) {
      debugPrint("Error loading cart: $e");
    }
  }

  Future<void> addItem(String shopId, CartItemModel item) async {
    final db = ref.read(localDatabaseProvider);
    await db.addToCart(
      CartItemsCompanion(
        itemId: Value(item.id),
        title: Value(item.title),
        price: Value(item.price),
        quantity: Value(item.quantity),
        imageUrl: Value(item.imageUrl),
        shopId: Value(item.shopId),
      ),
    );
    await _loadCart();
  }

  Future<void> removeItem(String shopId, String itemId) async {
    final db = ref.read(localDatabaseProvider);
    await (db.delete(
      db.cartItems,
    )..where((t) => t.shopId.equals(shopId) & t.itemId.equals(itemId))).go();
    await _loadCart();
  }

  Future<void> clearCart(String shopId) async {
    final db = ref.read(localDatabaseProvider);
    await db.clearCart(shopId);
    await _loadCart();
  }

  double getTotalAmount(String shopId) {
    final items = state.itemsByShop[shopId] ?? [];
    return items.fold(0, (sum, item) => sum + (item.price * item.quantity));
  }

  int getTotalCount(String shopId) {
    final items = state.itemsByShop[shopId] ?? [];
    return items.fold(0, (sum, item) => sum + item.quantity);
  }
}
