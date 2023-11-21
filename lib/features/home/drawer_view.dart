import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Text(
              'Mahmoud Atef',
            ),
          ),
        ],
      ),
    );
  }
}
