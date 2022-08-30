import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeBottomList extends StatefulWidget {
  const HomeBottomList({Key? key}) : super(key: key);

  @override
  State<HomeBottomList> createState() => _HomeBottomListState();
}

class _HomeBottomListState extends State<HomeBottomList> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(MdiIcons.homeOutline), label: 'Início'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Busca'),
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt_outlined), label: 'Pedidos'),
          BottomNavigationBarItem(
              icon: Icon(MdiIcons.account), label: 'Perfil'),
        ],
        currentIndex: 0,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
      ),
    );
  }
}
