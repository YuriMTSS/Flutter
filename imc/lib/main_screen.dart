import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'container_box.dart';
import 'data_container.dart';

const activeColor = Color(0xff0073dc);
const inactiveColor = Color(0xff212121);

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color maleBoxColor = activeColor;
  Color femaleBoxColor = inactiveColor;
  int altura = 150;
  int idade = 25;
  int peso = 60;
  String resultado = "";
  String detResultado = "Resultado aqui";
  double imc = 0;

  void updateBoxColor(int gender) {
    if (gender == 1) {
      if (maleBoxColor == inactiveColor) {
        maleBoxColor = activeColor;
        femaleBoxColor = inactiveColor;
      } else {
        maleBoxColor = inactiveColor;
        femaleBoxColor = activeColor;
      }
    } else {
      if (femaleBoxColor == inactiveColor) {
        femaleBoxColor = activeColor;
        maleBoxColor = inactiveColor;
      } else {
        femaleBoxColor = inactiveColor;
        maleBoxColor = activeColor;
      }
    }
  }

  String calculaIMC(int weight, int height) {
    imc = weight / pow(height / 100, 2);
    return imc.toStringAsFixed(1);
  }

  String getInterpretation(double imc) {
    if (imc < 18.5) {
      return 'Abaixo do peso';
    } else if (imc >= 18.5 && imc <= 24.9) {
      return "Peso normal. Bom trabalho!";
    } else if (imc >= 25 && imc <= 29.9) {
      return "Sobrepeso, faça exercícios!";
    } else if (imc >= 30.0 && imc <= 34.9) {
      return "Obesidade Grau 1. Faça exercícios rapidamente";
    } else if (imc >= 35.0 && imc <= 39.9) {
      return "Obesidade Grau 2. Você está correndo perigo, faça exercícios regulares.";
    } else if (imc > 40.0) {
      return "Obesidade Grau 3 ou Móbida. Procure ajuda médica e pratique exercícios.";
    } else {
      return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Calculadora IMC')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateBoxColor(1);
                      });
                    },
                    child: ContainerBox(
                      boxColor: maleBoxColor,
                      childWidget: const DataContainer(
                        title: 'Masculino',
                        dataIcon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateBoxColor(2);
                      });
                    },
                    child: ContainerBox(
                        boxColor: femaleBoxColor,
                        childWidget: const DataContainer(
                            dataIcon: FontAwesomeIcons.venus,
                            title: 'Feminino')),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ContainerBox(
              boxColor: inactiveColor,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Altura',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        altura.toString(),
                        style: const TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                      const Text(
                        'cm',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                    ],
                  ),
                  Slider(
                    value: altura.toDouble(),
                    min: 0,
                    max: 300,
                    activeColor: activeColor,
                    inactiveColor: inactiveColor,
                    onChanged: (double newValue) {
                      setState(() {
                        altura = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: ContainerBox(
                  boxColor: inactiveColor,
                  childWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Peso',
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        Text(
                          peso.toString(),
                          style: const TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //crossAxisAlignment: CrossAxisAlignment.baseline,
                          //textBaseline: TextBaseline.alphabetic,
                          children: [
                            FloatingActionButton(
                                backgroundColor: activeColor,
                                child: const Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    peso++;
                                  });
                                }),
                            const SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                                backgroundColor: activeColor,
                                child: const Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (peso > 0) {
                                      peso--;
                                    }
                                  });
                                }),
                          ],
                        ),
                      ]),
                ),
              ),
              Expanded(
                child: ContainerBox(
                  boxColor: inactiveColor,
                  childWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Idade',
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        Text(
                          idade.toString(),
                          style: const TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //crossAxisAlignment: CrossAxisAlignment.baseline,
                          //textBaseline: TextBaseline.alphabetic,
                          children: [
                            FloatingActionButton(
                                backgroundColor: activeColor,
                                child: const Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    idade++;
                                  });
                                }),
                            const SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                                backgroundColor: activeColor,
                                child: const Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (idade > 0) {
                                      idade--;
                                    }
                                  });
                                }),
                          ],
                        ),
                      ]),
                ),
              ),
            ]),
          ),
          GestureDetector(
            onTap: () {
              setState(
                () {
                  resultado = calculaIMC(peso, altura);
                  detResultado = getInterpretation(imc);
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          backgroundColor: inactiveColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            color: inactiveColor,
                            height: 400,
                            margin: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Center(
                                  child: Text(
                                    'Resultado',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30.0),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Divider(
                                  thickness: 5,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Center(
                                  child: Text(
                                    "IMC: $resultado",
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 40.0),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Divider(
                                  thickness: 5,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Center(
                                  child: Text(
                                    detResultado,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 30.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
              );
            },
            child: Container(
              width: double.infinity,
              height: 80.0,
              color: activeColor,
              margin: const EdgeInsets.only(top: 10.0),
              child: const Center(
                child: Text(
                  'Calcular',
                  style: TextStyle(color: Color(0xffffffff), fontSize: 30.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
