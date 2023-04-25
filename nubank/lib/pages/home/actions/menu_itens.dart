// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/utils/color_standard.dart';

class MenuItens extends StatelessWidget {
  const MenuItens({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            _item_menu(MdiIcons.clover, 'Área Pix', true),
            _item_menu(MdiIcons.barcode, 'Pagar', false),
            _item_menu(MdiIcons.cash, 'Transferir', false),
            _item_menu(MdiIcons.cash, 'Depositar', false),
            _item_menu(MdiIcons.creditCard, 'Recarga', false),
            _item_menu(MdiIcons.heartOutline, 'Doação', false),
          ],
        ),
      ),
    );
  }

  _item_menu(IconData icon, String name, bool? isFirst) {
    return Container(
      padding: (isFirst ?? false)
          ? const EdgeInsets.only(right: 7, left: 20)
          : const EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.circular(48),
            ),
            child: Icon(icon),
          ),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
