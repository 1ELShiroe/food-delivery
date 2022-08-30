import 'package:flutter/material.dart';
import 'package:manhwa/models/store_model.dart';
import 'package:manhwa/widgets/store_widget.dart';

class StoreListWidget extends StatelessWidget {
  final List<StoreModel> storeList;
  const StoreListWidget({Key? key, required this.storeList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 12, left: 12),
          child: Text('Lojas', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: storeList.length,
          itemBuilder: (context, index) => StoreWidget(storeModel: storeList[index]),
        ),
      ],
    );
  }
}
