import 'package:flutter/material.dart';
import 'package:manhwa/models/menu_model.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MenuWidget extends StatelessWidget {
  final MenuModel menuModel;
  const MenuWidget({Key? key, required this.menuModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(MdiIcons.forumOutline, size: 30),
              SizedBox(width: 10),
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text(menuModel.title, style: const TextStyle(fontSize: 15),),
                  Text(menuModel.subtitle)
              ],
          ),
            ],
          ),
          Icon(Icons.arrow_forward_ios, size: 10),
        ],
      ),
    );
  }
}