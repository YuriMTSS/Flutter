// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:nubank/pages/home/model/card_find_out_more.dart';

class FindOutMore extends StatelessWidget {
  const FindOutMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Descubra mais',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          findOutCards(),
        ],
      ),
    );
  }

  findOutCards() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CardFindOutMore(
              imagem: 'assets/image/persom.jpg',
              title: 'Conhecer',
              description: 'Sua liberdade financeira',
              buttonText: 'Parcela compras no app'),
        ],
      ),
    );
  }
}
