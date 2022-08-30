import 'package:flutter/material.dart';
import 'package:manhwa/screens/demand/demand.dart';
import 'package:manhwa/screens/home/home.dart';
import 'package:manhwa/screens/profile/profile.dart';
import 'package:manhwa/screens/search/search.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class StartAPP extends StatefulWidget {
  const StartAPP({Key? key}) : super(key: key);

  @override
  State<StartAPP> createState() => _StartAPPState();
}

class _StartAPPState extends State<StartAPP> {
  int myIndex = 0;
  List<Widget> widgetList = const [
    HomePage(),
    SearchPage(),
    DemandPage(),
    ProfilePage(),
  ];
  //a
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(MdiIcons.homeOutline), label: 'Início'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Busca'),
          BottomNavigationBarItem(icon: Icon(Icons.receipt_outlined), label: 'Pedidos'),
          BottomNavigationBarItem(icon: Icon(MdiIcons.account), label: 'Perfil'),
        ],
        currentIndex: myIndex,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
      ),
    );
  }
}
