// import 'package:shared_preferences/shared_preferences.dart';

// class HomeSharedPref {
//   Future storeProductsData({
//     required String frontImage,
//     required String title,
//     required int price,
//   }) async {
//     SharedPreferences prefs;
//     prefs = await SharedPreferences.getInstance();
//    String title= prefs.setString('frontImage', frontImage);
//     prefs.setString('title', title);
//     prefs.setInt('price', price);
//   }

//   Future getProductsData() async {
//     SharedPreferences prefs;
//     prefs = await SharedPreferences.getInstance();
//     prefs.getString('frontImage', frontImage);
//     prefs.setString('title', title);
//     prefs.setInt('price', price);
//   }
// }
