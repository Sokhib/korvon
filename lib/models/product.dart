class FavItem {
  String productName;
  String imageUrl;
  String price;
  String size;

  FavItem({this.productName, this.price, this.imageUrl,this.size});
}
class ProductList{
  List<FavItem> product;
  ProductList({this.product});
}

ProductList listOfFavorites = ProductList(
  product: [
   FavItem(productName: "Adidas T-Shirt",price: "15.75USD",imageUrl: "assets/images/adidas.png",size: "S"),
   FavItem(productName: "Skechers Sneakers Black Edition",price: "68.00USD",imageUrl: "assets/images/skechers.png",size: "L"),
   FavItem(productName: "Under Armour",price: "50.00USD",imageUrl: "assets/images/ua.png",size: "M"),
   FavItem(productName: "Xiaomi Bluetooth Airdots",price: "18.50USD",imageUrl: "assets/images/xiaomi_airdots.jpg",),
   FavItem(productName: "Xiaomi Gaming Laptop 15.6inch ",price: "965.00USD",imageUrl: "assets/images/xiaomi_gaming_laptop.jpeg"),
  ]
);

