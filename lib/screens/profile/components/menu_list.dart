import 'package:flutter/material.dart';
import 'package:manhwa/models/menu_model.dart';
import 'package:manhwa/screens/profile/components/menu_widget.dart';

class MenuList extends StatelessWidget {
  final List<MenuModel> menuList;
  const MenuList({Key? key, required this.menuList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: menuList.length,
          itemBuilder: (context, index) => MenuWidget(menuModel: menuList[index]),
        ),
      ],
    );
  }
}
