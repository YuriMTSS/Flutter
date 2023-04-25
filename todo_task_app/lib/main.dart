import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo_task_app/app/data/service/storage/service.dart';
import 'package:todo_task_app/app/module/home/binding.dart';
import 'package:todo_task_app/app/module/home/view.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      title: 'Todo list GetX',
      initialBinding: HomeBinding(),
      builder: EasyLoading.init(),
    );
  }
}
