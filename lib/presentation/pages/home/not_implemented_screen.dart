import 'package:flutter/material.dart';

class NotImplementedScreen extends StatelessWidget {
  static const location = "/home/";
  static const name = "main";

  const NotImplementedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Not implemented yet, wait for updates"),
    );
  }
}
