import 'package:flutter/material.dart';
import 'package:manhwa/models/banner_model.dart';

class BannerWidget extends StatelessWidget {
  final BannerModel bannerModel;

  const BannerWidget({
    super.key,
    required this.bannerModel,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14.0),
      clipBehavior: Clip.hardEdge,
      child: Image.asset(
        'assets/images/${bannerModel.url}',
      ),
    );
  }
}
