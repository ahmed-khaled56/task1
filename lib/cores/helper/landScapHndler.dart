import 'package:flutter/material.dart';

double portraitWidth(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return size.width < size.height ? size.width : size.height;
}

double portraitHeight(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return size.height > size.width ? size.height : size.width;
}
