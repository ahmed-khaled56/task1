import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/search_screen_body.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SearchScreenBody()));
  }
}
