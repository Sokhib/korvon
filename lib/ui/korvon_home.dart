import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:korvon/models/companies.dart';
import 'package:korvon/ui/brand_products.dart';
import 'package:korvon/ui/shopping_cart.dart';

class KorvonHome extends StatefulWidget {
  _KorvonHomeState createState() => _KorvonHomeState();
}

class _KorvonHomeState extends State<KorvonHome> with TickerProviderStateMixin {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  Animation<double> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOutQuart
    );
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        searchTab(context),
        categoriesTab(context),
      ],
    );
  }
  Widget _generateManColumn() {

    return Container(
      padding: EdgeInsets.only(top: 5),
      child: AnimatedList(
        initialItemCount: companyList.company.length,
        itemBuilder: (BuildContext context, int index, Animation anim) {
          return ScaleTransition(
            scale: _animation,
            child: ListOfCompanies(
              company: companyList.company[index],
            ),
          );
        },
      ),
    );
  }
  Widget categoriesTab(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: DefaultTabController(
          length: 7,
          child: Scaffold(
            body: Container(
                child: Column(
                  children: <Widget>[
                    TabBar(
                      isScrollable: true,
                      labelColor: Colors.orange,
                      unselectedLabelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelStyle: TextStyle(fontWeight: FontWeight.w500),
                      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
                      tabs: <Widget>[
                        Container(
                          child: Text(
                            "MAN",
                          ),
                        ),
                        Container(
                          child: Text("WOMAN"),
                        ),
                        Container(
                          child: Text("KIDS"),
                        ),
                        Container(
                          child: Text("ACCESSORIES"),
                        ),
                        Container(
                          child: Text("BEAUTY & HEALTH"),
                        ),
                        Container(
                          child: Text("FURNITURE"),
                        ),
                        Container(
                          child: Text("COMPUTER & OFFICE"),
                        ),
                      ],
                    ),
                    Container(
                      child: Expanded(
                        child: TabBarView(
                          children: <Widget>[
                            _generateManColumn(),
                            _generateManColumn(),
                            _generateManColumn(),
                            Center(
                              child: Text(
                                "ACCESSORIES",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Center(
                              child: Text(
                                "BEAUTY & HEALTH",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Center(
                              child: Text(
                                "FURNITURE",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Center(
                              child: Text(
                                "COMPUTER & OFFICE",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }

}

Widget searchTab(BuildContext context) {
  return Container(
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
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ShoppingCart()));
            },
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          )
        ],
      ));


}



// AnimatedList not working... analyze


class ListOfCompanies extends StatelessWidget {
  const ListOfCompanies({this.company});

  final Company company;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => BrandProducts(company)));
      },
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
                height: 200,
                padding: EdgeInsets.all(15),
                child: Image.asset(company.image)),
            Divider(
              height: 2,
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
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black,
        ),
      ),
    ),
  );
}
