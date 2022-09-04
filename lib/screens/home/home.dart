import 'package:flutter/material.dart';
import 'package:manhwa/providers/address_provider.dart';
import 'package:manhwa/providers/banner_provider.dart';
import 'package:manhwa/providers/categories_provider.dart';
import 'package:manhwa/providers/ifood_famous_provider.dart';
import 'package:manhwa/providers/latest_stores_provider.dart';
import 'package:manhwa/providers/menu_provider.dart';
import 'package:manhwa/providers/store_provider.dart';
import 'package:manhwa/screens/home/components/banner_list.dart';
import 'package:manhwa/screens/home/components/category_list.dart';
import 'package:manhwa/screens/home/components/ifood_famous_list.dart';
import 'package:manhwa/screens/home/components/latest_stores_list.dart';
import 'package:manhwa/widgets/address_list.dart';
import 'package:manhwa/widgets/store_list_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myIndex = 0;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 100), () {
      context.read<CategoriesProvider>().loadCategories();
      context.read<BannerProvider>().loadBanners();
      context.read<IfoodFamousProvider>().loadIfoodFamous();
      context.read<AddressProvider>().loadAddress();
      context.read<StoreProvider>().loadStores();
      context.read<LatestStoresProvider>().loadLatestStores();  
      context.read<MenuProvider>().loadMenu();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              // Consumer - Vigiando provider, e dispara o builder toda vez que o notifyListener for atualizado
              Consumer<AddressProvider>(
                  builder: (context, addressProvider, child) => AddressList(
                      addressList: addressProvider.addressList, value: true)),
              Consumer<BannerProvider>(
                  builder: (context, bannerProvider, child) =>
                      BannerList(bannerList: bannerProvider.bannerList)),
              Consumer<LatestStoresProvider>(
                  builder: (context, latestStoresProvider, child) =>
                      LatestStoresList(
                          latestStoresList:
                              latestStoresProvider.latestStoresList)),
              Consumer<IfoodFamousProvider>(
                  builder: (context, ifoodFamousProvider, child) =>
                      IfoodFamousListWidget(
                          famousIfoodList:
                              ifoodFamousProvider.ifoodFamousList)),
              Consumer<CategoriesProvider>(
                  builder: (context, categoriesProvider, child) =>
                      CategoryListWidget(
                          categoryList: categoriesProvider.categoriesList)),
              Consumer<StoreProvider>(
                  builder: (context, storeProvider, child) =>
                      StoreListWidget(storeList: storeProvider.storeList)),
            ],
          ),
        ),
      ),
    );
  }
}
