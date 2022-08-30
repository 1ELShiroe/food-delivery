import 'package:flutter/material.dart';
import 'package:manhwa/providers/address_provider.dart';
import 'package:manhwa/providers/banner_provider.dart';
import 'package:manhwa/providers/categories_provider.dart';
import 'package:manhwa/providers/ifood_famous_provider.dart';
import 'package:manhwa/providers/latest_stores_provider.dart';
import 'package:manhwa/providers/store_provider.dart';
import 'package:manhwa/screens/start.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AddressProvider()),
        ChangeNotifierProvider(create: (context) => CategoriesProvider()),
        ChangeNotifierProvider(create: (context) => BannerProvider()),
        ChangeNotifierProvider(create: (context) => IfoodFamousProvider()),
        ChangeNotifierProvider(create: (context) => StoreProvider()),
        ChangeNotifierProvider(create: (context) => LatestStoresProvider()),
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Food Delivery',
          home: StartAPP()),
    );
  }
}
