import 'package:flutter/cupertino.dart';
import 'package:manhwa/models/address_model.dart';

class AddressProvider with ChangeNotifier {
  List<AddressModel> addressList = [];
  Future<void> loadAddress() async {
    List<AddressModel> result = [
      AddressModel(
        street: 'Trav. Magondi',
        number: '85',
        reference: 'Hospital',
      ),
      /*AddressModel(
        street: 'Trav. belcore',
        number: '30',
        reference: 'Escola Municipal',
      ),
      AddressModel(
        street: 'Trav. Cartomante',
        number: 'A5',
        reference: 'Base Militar',
      ),*/
    ];
    addressList = result;
    notifyListeners();
  }
}
