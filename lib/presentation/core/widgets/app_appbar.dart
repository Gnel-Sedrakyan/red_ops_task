import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:red_ops_task/presentation/core/assets/asset_manager.dart';
import 'package:red_ops_task/presentation/core/widgets/asset_icon.dart';
import 'package:red_ops_task/presentation/core/widgets/logo_widget.dart';

class AppAppbar extends StatelessWidget with PreferredSizeWidget {
  const AppAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      titleSpacing: 0.0,
      title: Transform(
        transform: Matrix4.translationValues(-60.0, 0.0, 0.0),
        child: GestureDetector(
            onTap: () {
              Beamer.of(context).beamBack();
            },
            child: const SizedBox(height: 42, child: LogoWidget())),
      ),
      automaticallyImplyLeading: false,
      actions: [
        Builder(
          builder: (context) => IconButton(
            icon: const AssetIcon(icon: AssetIcons.profile),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
