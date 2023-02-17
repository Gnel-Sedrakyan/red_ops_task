import 'package:flutter/material.dart';
import 'package:red_ops_task/presentation/core/constants/defalut_values.dart';
import 'package:red_ops_task/presentation/pages/home/widgets/user_table/user_table.dart';

class MainScreen extends StatelessWidget {
  static const location = "/home/";
  static const name = "main";

  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(defaultPadding * 1.5),
      child: UserTable(),
    );
  }
}
