import '../../../../core/utils/assets_manger.dart';

class Product {
  final String name;
  final String price;
  final String imageUrl;

  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}

List<Product> products = [
  Product(name: 'Clown Tang', price: '\$325', imageUrl: AssetsManger.image),
  Product(name: 'Clownfish', price: '\$89', imageUrl: AssetsManger.image),
  Product(name: 'Gold Fish', price: '\$89', imageUrl: AssetsManger.image),
  Product(name: 'Fish', price: '\$325', imageUrl: AssetsManger.image),
];
