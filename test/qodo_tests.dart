
    // Create a Task with all required fields and verify properties are set correctly
import 'package:flutter_test/flutter_test.dart';
import 'package:tinycrm_flutter/models/task.dart';

void test_task_creation_with_all_fields() {
  // Arrange
  final int id = 1;
  final String title = 'Test Task';
  final String description = 'This is a test task';
  final DateTime createdAt = DateTime(2023, 1, 1);
  final DateTime dueDate = DateTime(2023, 1, 10);
  final bool isDone = true;
  
  // Act
  final Task task = Task(
    id: id,
    title: title,
    description: description,
    createdAt: createdAt,
    dueDate: dueDate,
    isDone: isDone,
  );
  
  // Assert
  expect(task.id, equals(id));
  expect(task.title, equals(title));
  expect(task.description, equals(description));
  expect(task.createdAt, equals(createdAt));
  expect(task.dueDate, equals(dueDate));
  expect(task.isDone, equals(isDone));
}

    // Create a Task without a dueDate (null value) and verify it's handled correctly
void test_task_creation_without_due_date() {
  // Arrange
  final int id = 2;
  final String title = 'Task without due date';
  final String description = 'This task has no due date';
  final DateTime createdAt = DateTime(2023, 2, 1);
  
  // Act
  final Task task = Task(
    id: id,
    title: title,
    description: description,
    createdAt: createdAt,
    dueDate: null,
  );
  
  // Assert
  expect(task.id, equals(id));
  expect(task.title, equals(title));
  expect(task.description, equals(description));
  expect(task.createdAt, equals(createdAt));
  expect(task.dueDate, isNull);
  expect(task.isDone, equals(false)); // Default value should be false
}
