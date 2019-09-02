CompanyList companyList = CompanyList(company: [
  Company(companyName: "Nike", image: "assets/images/nike.png"),
  Company(companyName: "Adidas", image: "assets/images/adidas.png"),
  Company(companyName: "Mango", image: "assets/images/mango.png"),
  Company(companyName: "Reebok", image: "assets/images/reebok.png"),
  Company(companyName: "Under Armour", image: "assets/images/ua.png"),
  Company(companyName: "Zara", image: "assets/images/zara.png"),
  Company(companyName: "Skechers", image: "assets/images/skechers.png"),
]);

class CompanyList {
  List<Company> company;

  CompanyList({this.company});
}

class Company {
  String image;
  String companyName;

  Company({this.companyName, this.image});
}
