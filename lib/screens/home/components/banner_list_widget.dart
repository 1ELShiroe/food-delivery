import 'package:flutter/material.dart';
import 'package:manhwa/models/banner_model.dart';
import 'package:manhwa/screens/home/components/banner_widget.dart';

class BannerList extends StatelessWidget {
  final List<BannerModel> bannerList;
  const BannerList({Key? key, required this.bannerList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, left: 12),
      alignment: Alignment.topRight,
      child: SizedBox(
        height: 150,
        child: ListView.builder(
          itemCount: bannerList.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: BannerWidget(bannerModel: bannerList[index]),
          ),
          padding: const EdgeInsets.only(right: 12),
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
