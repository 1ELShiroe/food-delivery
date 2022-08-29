class StoreModel {
  final String title;
  final String img;
  final String type;
  final String distance;
  final double shipping;
  final String time;
  final String review;
  final bool liked;

  StoreModel({
    required this.title,
    required this.img,
    required this.shipping,
    required this.time,
    required this.review,
    required this.type,
    required this.distance,
    required this.liked,
  });
}
