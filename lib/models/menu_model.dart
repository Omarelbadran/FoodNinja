class MenusModel {
  final String resName;
  final String name;
  final String logo;
  final int price;

  MenusModel({required this.name, required this.logo, required this.price, required this.resName});
}

final List<MenusModel> menus = [
  MenusModel(name: 'Herbal Pancake', logo: "assets/images/menu_1.png", price: 7, resName: 'Warung Herbal'),
  MenusModel(name: 'Fruit Salad', logo: "assets/images/menu_2.png", price: 5, resName: 'Wijie Resto'),
  MenusModel(name: 'Green Noddle', logo: "assets/images/menu_3.png", price: 7, resName: 'Noodle Home'),
];