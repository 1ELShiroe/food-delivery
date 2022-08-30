import 'package:flutter/material.dart';
import 'package:manhwa/screens/demand/components/demand_widget.dart';

class DemandPage extends StatelessWidget {
  const DemandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(padding: EdgeInsets.all(10.0), child: Center(child: Text('MEUS PEDIDOS', style: TextStyle(fontSize: 15)))),
          Padding(padding: EdgeInsets.only(left: 12.0), child: Text("Histórico", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
          DemandWidget(),
          DemandWidget(),
        ],
      ),
    );
  }
}
