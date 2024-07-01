class CartItem {
  final String name;
  final String price;
  final int quantity;

  CartItem({
    required this.name,
    required this.price,
    required this.quantity,
  });
}

class Address {
  final String title;
  final String details;
  final bool isSelected;

  Address({
    required this.title,
    required this.details,
    this.isSelected = false,
  });
}
