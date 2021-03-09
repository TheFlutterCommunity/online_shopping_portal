import 'package:flutter/cupertino.dart';

class ItemModel {
  final String title;
  final String subtitle;
  final String ratings;
  final String logo_path;
  final String image_path;

  ItemModel(
      {@required this.title,
      @required this.subtitle,
      @required this.ratings,
      @required this.logo_path,
      @required this.image_path});
}
