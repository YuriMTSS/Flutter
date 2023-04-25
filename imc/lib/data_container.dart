import 'package:flutter/material.dart';

class DataContainer extends StatelessWidget {
  final IconData dataIcon;
  final String title;

  static const textStyle1 = TextStyle(fontSize: 18.0, color: Colors.white);

  const DataContainer({super.key, required this.dataIcon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20.0,
        ),
        Icon(
          dataIcon,
          size: 50.0,
          color: Colors.white,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          title,
          style: textStyle1,
        )
      ],
    );
  }
}
