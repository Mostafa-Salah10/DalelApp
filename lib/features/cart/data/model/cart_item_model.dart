class CartItemModel {
  final String id;
  bool isSelected;
  String title;
  num quantity;
  num price;
  String image;

  CartItemModel(
      {required this.isSelected,
      required this.id,
      required this.image,
      required this.title,
      required this.quantity,
      required this.price});

  factory CartItemModel.fromJason({required Map<String, dynamic> jason}) {
    return CartItemModel(
        title: jason['title'],
        quantity: jason['quantity'],
        isSelected: jason['isSelected'],
        id: jason['id'],
        price: jason['price'],
        image: jason['image']);
  }
}
