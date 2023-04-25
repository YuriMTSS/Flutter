import 'package:flutter/material.dart';
import 'constantes.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({Key? key}) : super(key: key);

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Center(
          child: new Text(
            ':: Calculadora Simples ::',
            style: kAppbar,
          ),
        ),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Resultado: $resultado',
              style: kResultado,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 1"),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 2"),
              controller: t2,
            ),
            new Padding(padding: EdgeInsets.only(top: 20)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  minWidth: 50,
                  height: 50,
                  child: new Text(
                    '+',
                    style: kButton,
                  ),
                  color: Colors.blueAccent,
                  onPressed: somar,
                ),
                new MaterialButton(
                  minWidth: 50,
                  height: 50,
                  child: new Text(
                    '-',
                    style: kButton,
                  ),
                  color: Colors.blueAccent,
                  onPressed: subtrair,
                ),
                new MaterialButton(
                  minWidth: 50,
                  height: 50,
                  child: new Text(
                    'x',
                    style: kButton,
                  ),
                  color: Colors.blueAccent,
                  onPressed: multplicar,
                ),
                new MaterialButton(
                  minWidth: 50,
                  height: 50,
                  child: new Text(
                    '/',
                    style: kButton,
                  ),
                  color: Colors.blueAccent,
                  onPressed: dividir,
                ),
              ],
            ),
            new Padding(padding: EdgeInsets.only(top: 20)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text('Limpar', style: kLimpar),
                  color: Colors.grey,
                  onPressed: limpar,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  var num1;
  var num2;
  double resultado = 0;

  TextEditingController t1 = new TextEditingController(text: "");
  TextEditingController t2 = new TextEditingController(text: "");
  void somar() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      resultado = num1 + num2;
    });
  }

  void subtrair() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      resultado = num1 - num2;
    });
  }

  void multplicar() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      resultado = num1 * num2;
    });
  }

  void dividir() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      resultado = num1 / num2;
    });
  }

  void limpar() {
    setState(() {
      t1.text = "";
      t2.text = "";
      resultado = 0;
    });
  }
}
