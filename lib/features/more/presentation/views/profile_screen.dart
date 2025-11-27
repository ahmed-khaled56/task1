import 'package:flutter/material.dart';
import 'package:task_1/features/more/presentation/views/widgets/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: ProfileBody()));
  }
}
