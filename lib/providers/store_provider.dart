import 'package:flutter/cupertino.dart';
import 'package:manhwa/models/store_model.dart';

class StoreProvider with ChangeNotifier {
  List<StoreModel> storeList = [];
  String test = 'asd';
  Future<void> loadStores() async {
    List<StoreModel> result = [
      StoreModel(
        title: 'Doce Encanto',
        img: 'https://storage.googleapis.com/imagens_videos_gou_cooking_prod/production/mesas/2019/08/3b5c7346-quindim-tm-doces-brasileiros-mariana-dias-6369-alta-1-1024x703.jpg',
        shipping: 0,
        distance: '0,2 km',
        review: '4.5',
        time: '40-60 min',
        type: 'Lanches',
      ),
      StoreModel(
        title: 'Point da Vila',
        img: 'https://i.imgur.com/9HvFQyr.jpeg',
        shipping: 0,
        distance: '7,2 km',
        review: '4.5',
        time: '15-30 min',
        type: 'Lanches',
      ),
      StoreModel(
        title: 'Casa da Pamonha',
        img: 'https://www.uairango.com/imagens/img_estabelecimentos/7b59e9140a1ce2d79ab45975ddf95c92.png',
        shipping: 0,
        distance: '0,2 km',
        review: '4.5',
        time: '40-60 min',
        type: 'Lanches',
      ),
      StoreModel(
        title: 'Casa da Familia',
        img: 'https://i.imgur.com/9HvFQyr.jpeg',
        shipping: 0,
        distance: '0,2 km',
        review: '4.5',
        time: '40-60 min',
        type: 'Lanches',
      ),
      StoreModel(
        title: 'Restaurante Mae e Filha',
        img: 'https://i.imgur.com/9HvFQyr.jpeg',
        shipping: 0,
        distance: '0,2 km',
        review: '4.5',
        time: '40-60 min',
        type: 'Lanches',
      ),
      StoreModel(
        title: 'Restaurante da Fran',
        img: 'https://i.imgur.com/9HvFQyr.jpeg',
        shipping: 0,
        distance: '0,2 km',
        review: '4.5',
        time: '40-60 min',
        type: 'Lanches',
      ),
      StoreModel(
        title: 'Delícias Karen Ferreira',
        img: 'https://i.imgur.com/9HvFQyr.jpeg',
        shipping: 0,
        distance: '10,2 km',
        review: '1.8',
        time: '40-60 min',
        type: 'Lanches',
      ),
      StoreModel(
        title: 'Marmitinha do Papai',
        img: 'https://uploads.metropoles.com/wp-content/uploads/2021/06/14183215/Melhores_Marmitas_Termicas_-600x400.jpg',
        shipping: 0,
        distance: '10,2 km',
        review: '6.5',
        time: '10-25 min',
        type: 'Marmita',
      ),
    ];
    storeList = result;
    notifyListeners();
  }
}
