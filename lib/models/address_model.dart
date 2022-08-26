class AddressModel {
  final String street;
  final String number;
  final String reference;

  AddressModel({
    required this.street,
    required this.number,
    required this.reference,
  });
  factory AddressModel.empty() {
    return AddressModel(street: '', number: '', reference: '');
  }
}
