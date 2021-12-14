class Cart {
  Cart({
    required this.id,
    required this.title,
    required this.imageurl,
    required this.price,
    required this.sellerID,
    required this.quantity,
  });
  final String id;
  final String sellerID;
  final String title;
  final String imageurl;
  final double price;
  int quantity;
}