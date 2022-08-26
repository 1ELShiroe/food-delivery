import 'package:flutter/cupertino.dart';
import 'package:manhwa/models/address_model.dart';

class AddressProvider with ChangeNotifier {
  AddressModel address = AddressModel.empty();
  Future<void> loadAddress() async {
    AddressModel result = AddressModel(street: 'Trav. Magondi', number: '7', reference: 'Hospital');
    address = result;
    notifyListeners();
  }
}
