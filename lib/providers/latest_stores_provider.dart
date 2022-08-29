import 'package:flutter/cupertino.dart';
import 'package:manhwa/models/latest_stores_model.dart';

class LatestStoresProvider with ChangeNotifier {
  List<LatestStoresModel> latestStoresList = [];
  Future<void> loadLatestStores() async {
    List<LatestStoresModel> result = [
      LatestStoresModel(
          title: 'Casa da Pamonha', url: 'https://i.imgur.com/9HvFQyr.jpeg'),
      LatestStoresModel(
          title: 'Casa da Pamonha', url: 'https://i.imgur.com/9HvFQyr.jpeg'),
      LatestStoresModel(
          title: 'Casa da Pamonha', url: 'https://i.imgur.com/9HvFQyr.jpeg'),
      LatestStoresModel(
          title: 'Casa da Pamonha', url: 'https://i.imgur.com/9HvFQyr.jpeg'),
    ];
    latestStoresList = result;
    notifyListeners();
  }
}
