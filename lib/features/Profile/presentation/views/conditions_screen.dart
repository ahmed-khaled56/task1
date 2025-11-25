import 'package:flutter/material.dart';
import 'package:task_1/features/Profile/presentation/views/widgets/condition_body.dart';

class ConditionsScreen extends StatelessWidget {
  const ConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: ConditionBody()));
  }
}
