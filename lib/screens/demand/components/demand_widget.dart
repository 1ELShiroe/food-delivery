import 'package:flutter/material.dart';

class DemandWidget extends StatelessWidget {
  const DemandWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Text("Seg 15 agosto 2022"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const CircleAvatar(radius: 20, backgroundImage: NetworkImage("https://i.imgur.com/y1cfZFT.jpeg")),
                    title: const Text('Casa da Familia'),
                    trailing: IconButton(onPressed: () {},icon: const Icon(Icons.keyboard_arrow_right)),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: Column(children: [
                        Row(children: const [
                          SizedBox(width: 2),
                          Icon(Icons.check_circle, color: Colors.green, size: 13.5),
                          SizedBox(width: 3),
                          Text("Pedido concluído ⋅ N 3704", style: TextStyle(fontSize: 13.5))
                        ]),
                        Row(children: [
                          const SizedBox(width: 5),
                          Text('1', style: TextStyle(fontWeight: FontWeight.bold, backgroundColor: Colors.grey.shade300)),
                          const SizedBox(width: 5),
                          const Text("Marmitex churrasco"),
                        ]),
                      ])),
                  Padding(
                    padding: const EdgeInsets.only(right: 40.0, left: 40.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(onPressed: () {}, child: const Text("Ajuda", style: TextStyle(color: Colors.red))),
                          TextButton(onPressed: () {}, child: const Text("Adicionar à sacola", style: TextStyle(color: Colors.red)))
                        ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
