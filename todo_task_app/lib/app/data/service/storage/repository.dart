import 'package:todo_task_app/app/data/models/task.dart';
import 'package:todo_task_app/app/data/prividers/task/provider.dart';

class TaskRepository {
  TaskProvider taskProvider;
  TaskRepository({required this.taskProvider});

  List<Task> readTasks() => taskProvider.readTasks();
  void writeTasks(List<Task> tasks) => taskProvider.writeTasks(tasks);

  
}
