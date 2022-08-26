import 'package:flutter/material.dart';
import 'package:manhwa/providers/address_provider.dart';
import 'package:manhwa/providers/banner_provider.dart';
import 'package:manhwa/providers/categories_provider.dart';
import 'package:manhwa/providers/ifood_famous_provider.dart';
import 'package:manhwa/providers/store_provider.dart';
import 'package:manhwa/screens/home/components/banner_list_widget.dart';
import 'package:manhwa/screens/home/components/category_list.dart';
import 'package:manhwa/screens/home/components/ifood_famous_list_widget.dart';
import 'package:manhwa/widgets/address_widget.dart';
import 'package:manhwa/widgets/store_list_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 100), () {
      context.read<CategoriesProvider>().loadCategories();
      context.read<BannerProvider>().loadBanners();
      context.read<IfoodFamousProvider>().loadIfoodFamous();
      context.read<AddressProvider>().loadAddress();
      context.read<StoreProvider>().loadStores();
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
              Consumer<AddressProvider>(builder: (context, addressProvider, child) => AddressWidget(addressModel: addressProvider.address)),
              Consumer<BannerProvider>(builder: (context, bannerProvider, child) => BannerList(bannerList: bannerProvider.bannerList)),
              Consumer<IfoodFamousProvider>(builder: (context, ifoodFamousProvider, child) => IfoodFamousListWidget(famousIfoodList: ifoodFamousProvider.ifoodFamousList)),
              Consumer<CategoriesProvider>(builder: (context, categoriesProvider, child) => CategoryListWidget(categoryList: categoriesProvider.categoriesList)),
              Consumer<StoreProvider>(builder: (context, storeProvider, child) => StoreListWidget(storeList: storeProvider.storeList)),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Busca',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Pedidos',
          ),
        ],
        selectedItemColor: Colors.black,
      ),
    );
  }
}
