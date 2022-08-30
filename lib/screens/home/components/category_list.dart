import 'package:flutter/material.dart';
import 'package:manhwa/models/category_model.dart';
import 'package:manhwa/screens/home/components/category_widget.dart';

class CategoryListWidget extends StatelessWidget {
  final List<CategoryModel> categoryList;
  const CategoryListWidget({Key? key, required this.categoryList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, left: 12),
      alignment: Alignment.topRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('Categorias', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: categoryList.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchCategoryWidget(categoryModel: categoryList[index]),
              ),
              padding: const EdgeInsets.only(right: 12),
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
