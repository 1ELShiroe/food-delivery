import 'package:flutter/material.dart';
import 'package:manhwa/models/ifood_famous_model.dart';

class IfoodFamousWidget extends StatelessWidget {
  final IfoodFamousModel famousIfoodModel;

  const IfoodFamousWidget({
    super.key,
    required this.famousIfoodModel,
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
          Text(famousIfoodModel.title, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
