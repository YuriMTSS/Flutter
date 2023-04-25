import 'package:clock_custom/ui/style.dart';
import 'package:flutter/material.dart';

import 'utils/time_model.dart';
import 'widgets/clock_widgets.dart';
import 'package:timer_builder/timer_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clock Custom',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            TimerBuilder.periodic(const Duration(seconds: 1),
                builder: (context) {
              var tempo = DateTime.now();
              String seconds =
                  tempo.second < 10 ? "0${tempo.second}" : "${tempo.second}";
              String minutes =
                  tempo.minute < 10 ? "0${tempo.minute}" : "${tempo.minute}";
              String hours =
                  tempo.hour < 10 ? "0${tempo.hour}" : "${tempo.hour}";

              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hoje: ',
                        style: AppStyle.mainTextThin,
                      ),
                      Text(
                        "$hours:$minutes:$seconds",
                        style: AppStyle.mainText,
                      ),
                    ],
                  ),
                  Center(
                    child: ClockWidget(
                        TimeModel(tempo.hour, tempo.minute, tempo.second)),
                  )
                ],
              );
            }),
            const SizedBox(
              height: 60.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Selecione outra zona de tempo!',
                  style: TextStyle(fontSize: 18.0),
                ),
                Divider(
                  color: Colors.black45,
                ),
              ],
            ),
            Expanded(
                child: ListView(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 52,
                  height: 100.0,
                  padding: const EdgeInsets.all(24.0),
                  decoration: BoxDecoration(
                      color: AppStyle.primaryColor,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bei Jin',
                            style: AppStyle.mainTextWhite,
                          ),
                          Text(
                            "${DateTime.now().hour}:${DateTime.now().minute}",
                            style: AppStyle.mainTextWhite,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppStyle.primaryColor,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.watch_later), label: "Clock"),
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "Alarm"),
          BottomNavigationBarItem(icon: Icon(Icons.timer), label: "StopWatch"),
          BottomNavigationBarItem(
              icon: Icon(Icons.timelapse_outlined), label: "Timer"),
        ],
      ),
    );
  }
}
