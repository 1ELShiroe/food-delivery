import 'package:flutter/material.dart';
import 'package:manhwa/models/category_model.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryModel categoryModel;

  const CategoryWidget({
    super.key,
    required this.categoryModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('assets/images/${categoryModel.url}', height: 70),
            ),
            const SizedBox(height: 5),
            Text(
              categoryModel.title,
              style: const TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ],
    );
  }
}
