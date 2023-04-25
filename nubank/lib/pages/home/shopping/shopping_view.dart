import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ShoppingView extends StatelessWidget {
  const ShoppingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _shoppingTitleChevron(),
          const SizedBox(
            height: 16,
          ),
          const Text('Vantagens exclusivas de nossas marcas\n preferidas.'),
        ],
      ),
    );
  }

  _shoppingTitleChevron() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Shopping',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Icon(MdiIcons.chevronRight),
      ],
    );
  }
}
