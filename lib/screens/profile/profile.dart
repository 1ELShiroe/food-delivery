import 'package:flutter/material.dart';
import 'package:manhwa/providers/menu_provider.dart';
import 'package:manhwa/screens/profile/components/menu_list.dart';
import 'package:manhwa/screens/profile/components/menu_widget.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

    @override
      void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 100), () {
      context.read<MenuProvider>().loadMenu();
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const ListTile(
            leading: CircleAvatar(radius: 20, backgroundImage: NetworkImage("https://i.imgur.com/y1cfZFT.jpeg")),
            title: Text('Jason D. Smith'),
          ),
          Consumer<MenuProvider>(builder: (context, menuProvider, child) =>MenuList(menuList: menuProvider.menuList)),
        ],
      ),
    );
  }
}
