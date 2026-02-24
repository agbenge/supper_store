import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_service.g.dart';

@JsonSerializable()
class User {
  final String id;
  final String username;
  final String password;
  final String email;
  final String fullName;
  final bool isShop;
  final String? shopId;

  User({
    required this.id,
    required this.username,
    required this.password,
    required this.email,
    required this.fullName,
    required this.isShop,
    this.shopId,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class ApiShop {
  final String id;
  final String name;
  final String description;
  final String rating;
  final String distance;
  final String imageUrl;

  ApiShop({
    required this.id,
    required this.name,
    required this.description,
    required this.rating,
    required this.distance,
    required this.imageUrl,
  });

  factory ApiShop.fromJson(Map<String, dynamic> json) =>
      _$ApiShopFromJson(json);
  Map<String, dynamic> toJson() => _$ApiShopToJson(this);
}

@JsonSerializable()
class ApiCategory {
  final String id;
  final String name;
  final String icon;

  ApiCategory({required this.id, required this.name, required this.icon});

  factory ApiCategory.fromJson(Map<String, dynamic> json) =>
      _$ApiCategoryFromJson(json);
  Map<String, dynamic> toJson() => _$ApiCategoryToJson(this);
}

@JsonSerializable()
class ApiItem {
  final String id;
  final String shopId;
  final String title;
  final double price;
  final String badge;
  final String imageUrl;

  ApiItem({
    required this.id,
    required this.shopId,
    required this.title,
    required this.price,
    required this.badge,
    required this.imageUrl,
  });

  factory ApiItem.fromJson(Map<String, dynamic> json) =>
      _$ApiItemFromJson(json);
  Map<String, dynamic> toJson() => _$ApiItemToJson(this);
}

@RestApi(baseUrl: "http://0.0.0.0:3000")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/users")
  Future<List<User>> getUsers();

  @GET("/shops")
  Future<List<ApiShop>> getShops();

  @GET("/categories")
  Future<List<ApiCategory>> getCategories();

  @GET("/items")
  Future<List<ApiItem>> getItems(@Query("shopId") String? shopId);
}
