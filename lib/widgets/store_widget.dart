import 'package:flutter/material.dart';
import 'package:manhwa/models/store_model.dart';

class StoreWidget extends StatelessWidget {
  final StoreModel storeModel;

  const StoreWidget({
    super.key,
    required this.storeModel,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(radius: 30),
      title: Text(storeModel.title, style: const TextStyle(fontSize: 15)),
      subtitle: Column(
        children: [
          Row(
            children: [
              Icon(Icons.star, color: Colors.orange.shade400, size: 15),
              const SizedBox(width: 3),
              Text(storeModel.review, style: TextStyle(color: Colors.orange.shade400)),
              const SizedBox(width: 5),
              const Text('‧', style: TextStyle(color: Colors.grey, fontSize: 30)),
              const SizedBox(width: 5),
              Text(storeModel.type),
              const SizedBox(width: 5),
              const Text('‧', style: TextStyle(color: Colors.grey, fontSize: 30)),
              const SizedBox(width: 5),
              Text(storeModel.distance),
            ],
          ),
          Row(
            children: [
              Text(storeModel.time),
              const SizedBox(width: 5),
              const Text('‧', style: TextStyle(color: Colors.grey, fontSize: 30)),
              const SizedBox(width: 5),
              Text(shippingDescription, style: TextStyle(color: shippingColor)),
            ],
          )
        ],
      ),
      trailing: IconButton(
        icon: const Icon(Icons.favorite_border, color: Colors.grey),
        iconSize: 25,
        color: Colors.white,
        onPressed: () {},
      ),
    );
  }

  String get shippingDescription => (storeModel.shipping == 0) ? 'Grátis' : storeModel.shipping.toStringAsFixed(2);
  Color get shippingColor => (storeModel.shipping == 0) ? Colors.green : Colors.orange;
}
