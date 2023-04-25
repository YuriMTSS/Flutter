import 'package:get/get.dart';
import 'package:todo_task_app/app/data/prividers/task/provider.dart';
import 'package:todo_task_app/app/data/service/storage/repository.dart';
import 'package:todo_task_app/app/module/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(
        taskRepository: TaskRepository(taskProvider: TaskProvider())));
  }
}
