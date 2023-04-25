import 'package:flutter/material.dart';
import 'package:nubank/utils/color_standard.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [_income(), _income2()],
      ),
    );
  }

  _income() {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
                text: 'Seu ',
                style: TextStyle(color: Colors.black, fontSize: 16)),
            TextSpan(
                text: 'informe de \nrendimentos',
                style: TextStyle(color: Colors.black, fontSize: 16)),
            TextSpan(
                text: ' de 2021 já está...',
                style: TextStyle(color: Colors.black, fontSize: 16)),
          ],
        ),
      ),
    );
  }

  _income2() {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
                text: 'Seu ',
                style: TextStyle(color: Colors.black, fontSize: 16)),
            TextSpan(
                text: 'informe de \nrendimentos',
                style: TextStyle(color: Colors.black, fontSize: 16)),
            TextSpan(
                text: ' de 2021 já está...',
                style: TextStyle(color: Colors.black, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
