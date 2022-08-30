import 'package:flutter/material.dart';
import 'package:manhwa/models/latest_stores_model.dart';
import 'package:manhwa/screens/home/components/latest_stores_widget.dart';

class LatestStoresList extends StatelessWidget {
  final List<LatestStoresModel> latestStoresList;
  const LatestStoresList({Key? key, required this.latestStoresList})
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
              Text('últimas lojas',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
              Text('Ver mais',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 12)),
            ],
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: latestStoresList.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: LatestStoresWidget(
                    latestStoresModel: latestStoresList[index]),
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
