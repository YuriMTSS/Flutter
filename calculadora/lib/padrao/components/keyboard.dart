// ignore_for_file: avoid_types_as_parameter_names, prefer_typing_uninitialized_variables, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';

import 'button.dart';
import 'button_row.dart';

class Keyboard extends StatelessWidget {
  var cb;
  Keyboard({super.key, required this.cb});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.black),
      height: 400,
      child: Column(
        children: [
          ButtonRow(
            buttons: [
              Button.big(
                text: 'AC',
                cb: cb,
                color: Button.DARK,
              ),
              Button(
                text: '%',
                cb: cb,
                color: Button.DARK,
              ),
              Button.operation(
                text: '/',
                cb: cb,
              )
            ],
          ),
          const SizedBox(
            height: 1,
          ),
          ButtonRow(
            buttons: [
              Button(
                text: '7',
                cb: cb,
              ),
              Button(
                text: '8',
                cb: cb,
              ),
              Button(
                text: '9',
                cb: cb,
              ),
              Button.operation(
                text: 'X',
                cb: cb,
              )
            ],
          ),
          const SizedBox(
            height: 1,
          ),
          ButtonRow(
            buttons: [
              Button(
                text: '4',
                cb: cb,
              ),
              Button(
                text: '5',
                cb: cb,
              ),
              Button(
                text: '6',
                cb: cb,
              ),
              Button.operation(
                text: '-',
                cb: cb,
              )
            ],
          ),
          const SizedBox(
            height: 1,
          ),
          ButtonRow(
            buttons: [
              Button(
                text: '1',
                cb: cb,
              ),
              Button(
                text: '2',
                cb: cb,
              ),
              Button(
                text: '3',
                cb: cb,
              ),
              Button.operation(
                text: '+',
                cb: cb,
              ),
            ],
          ),
          const SizedBox(
            height: 1,
          ),
          ButtonRow(
            buttons: [
              Button.big(
                text: '0',
                cb: cb,
              ),
              Button(
                text: '.',
                cb: cb,
              ),
              Button.operation(
                text: '=',
                cb: cb,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
