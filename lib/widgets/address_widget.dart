import 'package:flutter/material.dart';
import 'package:manhwa/models/address_model.dart';

class AddressWidget extends StatelessWidget {
  final AddressModel addressModel;

  const AddressWidget({
    super.key,
    required this.addressModel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('${addressModel.street}, ${addressModel.number}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        ),
        const Icon(Icons.keyboard_arrow_down, color: Colors.red),
      ],
    );
  }
}
