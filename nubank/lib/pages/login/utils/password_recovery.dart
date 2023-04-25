// ignore_for_file: avoid_print, no_leading_underscores_for_local_identifiers

import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank/pages/login/password/nubank.dart';
import 'package:nubank/pages/login/utils/new_password.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class RecoveryPassword extends StatelessWidget {
  const RecoveryPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _cpf = TextEditingController();

    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PasswordNubank(),
                ));
          },
        ),
        const SizedBox(
          height: 10,
        ),
        const Center(
          child: Text(
            'Informe sua senha de 4 dígitos!',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 35, left: 50, right: 50),
          child: PinCodeTextField(
            appContext: context,
            length: 4,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              print(value);
            },
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 50,
              fieldWidth: 40,
              inactiveColor: Colors.orange,
              activeColor: Colors.purple,
              selectedColor: Colors.blue,
            ),
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        const Center(
            child: Text(
          'Informe seu CPF',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )),
        const SizedBox(
          height: 35,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: _cpf,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              CpfInputFormatter(),
            ],
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.purple, borderRadius: BorderRadius.circular(30)),
            child: SizedBox(
              height: 70,
              width: MediaQuery.of(context).size.width - 30,
              child: Center(
                child: TextButton(
                  child: const Text(
                    'Próximo',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewPassword(),
                        ));
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
