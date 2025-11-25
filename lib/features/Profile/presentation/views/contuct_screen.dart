import 'package:flutter/material.dart';
import 'package:task_1/features/Profile/presentation/views/widgets/contuct_body.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: ContuctBody()));
  }
}
