import 'package:flutter/material.dart';
import 'package:manhwa/models/ifood_famous_model.dart';
import 'package:manhwa/screens/home/components/ifood_famous_widget.dart';

class IfoodFamousListWidget extends StatelessWidget {
  final List<IfoodFamousModel> famousIfoodList;
  const IfoodFamousListWidget({Key? key, required this.famousIfoodList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
      alignment: Alignment.topRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Famosos no ifood',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                Text('Ver mais',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 12))
              ]),
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: famousIfoodList.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    IfoodFamousWidget(famousIfoodModel: famousIfoodList[index]),
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
