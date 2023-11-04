import 'dart:async';
import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  print(task2Result);
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);

  var completer = Completer<String>();

  Future.delayed(threeSeconds, () {
    String result = 'task 2 data';
    print('Task 2 complete');
    completer.complete(result);
  });

  return completer.future;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
}
