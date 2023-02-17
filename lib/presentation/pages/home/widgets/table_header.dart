import 'package:flutter/material.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.centerLeft,
              height: double.infinity,
              child: Text(
                "Name",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.centerLeft,
              height: double.infinity,
              child: Text(
                "Email",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.centerLeft,
              height: double.infinity,
              child: Text(
                "Activation Date",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              height: double.infinity,
              child: Text(
                "Status",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              height: double.infinity,
              child: Text(
                "UserID",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              height: double.infinity,
              child: Text(
                "Settings",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
