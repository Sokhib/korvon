import 'package:flutter/material.dart';
import 'package:korvon/models/categories.dart';

class Categories extends StatefulWidget {
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State {
  int _selectedIndex = 0;

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                    colors: [Colors.orange[900], Colors.orange[300]],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft)),
            padding: EdgeInsets.fromLTRB(5.0, 40.0, 5.0, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                searchBox(),
              ],
            )),
        Expanded(
          flex: 1,
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: categoriesList.category.length,
                      itemBuilder: (BuildContext context, int i) {
                        return listCategories(
                            categoriesList.category[i], i, context);
                      }),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width - 100,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.orange[400]
                      ),
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget listCategories(Category category, int i, BuildContext context) {
    return InkWell(
      onTap: () {
        _onSelected(i);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(bottom: 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Center(
              child: Container(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Icon(
                    category.icon,
                    size: 25,
                    color: (_selectedIndex == i) ? Colors.orange : Colors.black,
                  )),
            ),
            Center(
              child: Text(
                category.categoryName,
                style: TextStyle(fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget searchBox() {
  return Container(
    width: 330,
    child: TextField(
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 1),
        hintText: "I'm shopping for...",
        fillColor: Colors.white,
        filled: true,
        border: const OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 0.0),
            borderRadius: BorderRadius.all(Radius.circular(12.0))),
        focusedBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 0.0),
            borderRadius: BorderRadius.all(Radius.circular(12.0))),
        enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 0.0),
            borderRadius: BorderRadius.all(Radius.circular(12.0))),
        disabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 0.0),
            borderRadius: BorderRadius.all(Radius.circular(12.0))),
        prefixIcon: Icon(Icons.search),
      ),
    ),
  );
}
