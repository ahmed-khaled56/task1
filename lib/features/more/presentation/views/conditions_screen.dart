import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/Custom_upperbar.dart';
import 'package:task_1/features/more/presentation/views/widgets/condition_body.dart';

class ConditionsScreen extends StatelessWidget {
  const ConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(portraitHeight(context) * .05),
        child: CustomUpperbar(title: "Terms and Conditions"),
      ),
      body: SafeArea(child: ConditionBody()),
    );
  }
}
