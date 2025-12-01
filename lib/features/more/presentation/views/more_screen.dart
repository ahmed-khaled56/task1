import 'package:flutter/material.dart';
import 'package:task_1/features/more/presentation/views/widgets/more_screen_body.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: MoreScreenBody()));
  }
}
