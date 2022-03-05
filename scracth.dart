import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String dataTask2 = await task2();
  task3(dataTask2);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration duration = Duration(seconds: 5);

  String result;
  await Future.delayed(duration, () {
    String result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3(task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
}
