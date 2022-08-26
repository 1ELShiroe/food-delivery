import 'package:flutter/cupertino.dart';
import 'package:manhwa/models/ifood_famous_model.dart';

class IfoodFamousProvider with ChangeNotifier {
  List<IfoodFamousModel> ifoodFamousList = [];
  Future<void> loadIfoodFamous() async {
    List<IfoodFamousModel> result = [
      IfoodFamousModel(
          title: 'Casa da Pamonha', url: 'https://i.imgur.com/9HvFQyr.jpeg'),
      IfoodFamousModel(
          title: 'Casa da Pamonha', url: 'https://i.imgur.com/9HvFQyr.jpeg'),
    ];
    ifoodFamousList = result;
    notifyListeners();
  }
}
