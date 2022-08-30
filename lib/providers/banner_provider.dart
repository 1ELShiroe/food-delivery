import 'package:flutter/cupertino.dart';
import 'package:manhwa/models/banner_model.dart';

class BannerProvider with ChangeNotifier {
  List<BannerModel> bannerList = [];
  Future<void> loadBanners() async {
    List<BannerModel> result = [
      BannerModel(url: 'restaurantes-0.png'),
      BannerModel(url: 'restaurantes-1.png'),
      BannerModel(url: 'restaurantes-2.png'),
    ];
    bannerList = result;
    notifyListeners();
  }
}
