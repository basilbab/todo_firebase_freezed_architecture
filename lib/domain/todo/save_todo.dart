import 'package:todo_firebase_freezed_architecture/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:todo_firebase_freezed_architecture/domain/todo/models/todo_model.dart';
abstract class SaveTodoService{
  Future<Either<MainFailure, List<TodoModel>>> addTodo(TodoModel todoList);
  Future<Either<MainFailure,List<TodoModel>>> loadTask();
  Future<Either<MainFailure,List<TodoModel>>> deleteTask(String docId);
  Future<Either<MainFailure,List<TodoModel>>> changeStatus(String taskName, String status, String docId);
   Future<Either<MainFailure,List<TodoModel>>> editTask(String taskName, String status, String docId);
}