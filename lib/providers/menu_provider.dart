import 'package:flutter/material.dart';
import '../models/menu_model.dart';

class MenuProvider with ChangeNotifier {
  List<MenuModel> menuList = [];
  Future<void> loadMenu() async {
    List<MenuModel> result = [
      MenuModel(title: 'Chats', icon: "forumOutline", subtitle: 'Minhas conversas'),
      MenuModel(title: 'Notificações', icon: "forumOutline", subtitle: 'Minha central de notificações'),
      MenuModel(title: 'Pagamentos', icon: "forumOutline", subtitle: 'Meus saldos e cartões'),
      MenuModel(title: 'Clube ifood', icon: "forumOutline", subtitle: 'Meus pacotes de desconto'),
      MenuModel(title: 'Cupons', icon: "forumOutline", subtitle: 'Meus cupons de desconto'),
    ];
    menuList = result;
    notifyListeners();
  }
}
