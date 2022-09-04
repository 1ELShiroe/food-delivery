import 'package:flutter/material.dart';
import 'package:manhwa/models/address_model.dart';
import 'package:manhwa/widgets/address_widget.dart';

class AddressList extends StatelessWidget {
  final List<AddressModel> addressList;
  final bool value;
  const AddressList({Key? key, required this.addressList, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(right: 12),
        alignment: Alignment.topRight,
        child: SizedBox(
          height: 60,
          child: ListView.builder(
            itemCount: addressList.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: AddressWidget(addressModel: addressList[index]),
            ),
            padding: const EdgeInsets.only(right: 12),
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
