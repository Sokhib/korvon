import 'package:flutter/cupertino.dart';
import 'package:korvon/models/my_flutter_app_icons.dart';

CategoriesList categoriesList = CategoriesList(category: [
Category(categoryName: 'Man',icon: MyFlutterApp.user),
Category(categoryName: 'Woman',icon: MyFlutterApp.emo_angry),
Category(categoryName: 'Kids',icon: MyFlutterApp.emo_cry),
Category(categoryName: 'Electronics',icon: MyFlutterApp.emo_happy),
Category(categoryName: 'Smartphone',icon: MyFlutterApp.emo_laugh),
Category(categoryName: 'Beauty & Health',icon: MyFlutterApp.emo_saint),
Category(categoryName: 'Furniture',icon: MyFlutterApp.emo_squint),
Category(categoryName: 'Computer & Office',icon: MyFlutterApp.emo_wink),
]);

class CategoriesList {
  List<Category> category;

  CategoriesList({this.category});
}

class Category {
  String categoryName;
  IconData icon;

  Category({this.categoryName, this.icon});
}
