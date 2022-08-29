import 'package:flutter/material.dart';
import 'package:manhwa/models/latest_stores_model.dart';

class LatestStoresWidget extends StatelessWidget {
  final LatestStoresModel latestStoresModel;

  const LatestStoresWidget({
    super.key,
    required this.latestStoresModel,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 30, // Image radius
            //backgroundImage: NetworkImage(famousIfoodModel.url),
          ),
          Text(latestStoresModel.title, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
