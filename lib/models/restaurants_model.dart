class RestaurantsModel {
  final String name;
  final String logo;
  final int time;

  RestaurantsModel(this.name, this.logo, this.time);
}

final List<RestaurantsModel> restaurants = [
  RestaurantsModel("Vegan Resto", "assets/images/restaurants_logos/logo_1.jpg", 12),
  RestaurantsModel("Healthy Food", "assets/images/restaurants_logos/logo_2.jpg", 8),
  RestaurantsModel("Good Food", "assets/images/restaurants_logos/logo_3.jpg", 12),
  RestaurantsModel("Smart Resto", "assets/images/restaurants_logos/logo_4.jpg", 8),
];