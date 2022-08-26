import 'package:flutter/cupertino.dart';
import 'package:manhwa/models/category_model.dart';

class CategoriesProvider with ChangeNotifier {
  List<CategoryModel> categoriesList = [];

  Future<void> loadCategories() async {
    List<CategoryModel> result = [
      CategoryModel(title: 'Acai', url: 'acai.png'),
      CategoryModel(title: 'Bebidas', url: 'bebidas.png'),
      CategoryModel(title: 'Lanches', url: 'lanches.png'),
      CategoryModel(title: 'Pizza', url: 'pizza.png'),
      CategoryModel(title: 'Japonesas', url: 'japonesa.png'),
    ];

    categoriesList = result;
    notifyListeners();
  }
}
