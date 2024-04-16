import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_firebase_freezed_architecture/core/failures/main_failure.dart';
import 'package:todo_firebase_freezed_architecture/domain/todo/models/todo_model.dart';
import 'package:todo_firebase_freezed_architecture/domain/todo/save_todo.dart';

@Singleton(as: SaveTodoService)
class TodoServiceImplementation implements SaveTodoService {
  List<TodoModel> todoUpdatedList = [];
  @override
  Future<Either<MainFailure, List<TodoModel>>> addTodo(
      TodoModel todoList) async {
    try {
      final FirebaseFirestore firestore = FirebaseFirestore.instance;
      await firestore.collection('todoList').add({
        'taskName': todoList.taskName,
        'status': todoList.status,
      }).then((_) async {
        todoUpdatedList.clear();
        final FirebaseFirestore firestore = FirebaseFirestore.instance;
        QuerySnapshot querySnapshot =
            await firestore.collection('todoList').get();
        for (var doc in querySnapshot.docs) {
          Map<String, dynamic> todoData = (doc.data() as Map<String, dynamic>);
          TodoModel todo = TodoModel(
            id: doc.id,
            taskName: todoData['taskName'] ?? '',
            status: todoData['status'] ?? '',
          );
          todoUpdatedList.add(todo);
        }
      });
      return (right(todoUpdatedList));
    } catch (_) {
      return (const Left(MainFailure.serverFailure()));
    }
  }

  @override
  Future<Either<MainFailure, List<TodoModel>>> loadTask() async {
    try {
      todoUpdatedList.clear();
      final FirebaseFirestore firestore = FirebaseFirestore.instance;
      QuerySnapshot querySnapshot =
          await firestore.collection('todoList').get();

      // for (var doc in querySnapshot.docs) {
      //   Map<String, dynamic> todoData = (doc.data() as Map<String, dynamic>);
      //   TodoModel todo = TodoModel(
      //     id: doc.id,
      //     taskName: todoData['taskName'] ?? '',
      //     status: todoData['status'] ?? '',
      //   );
      //   todoUpdatedList.add(todo);
      // }
      List<TodoModel> todoList = querySnapshot.docs.map((doc) {
        return TodoModel(
          id: doc.id,
          taskName:
              doc['taskName'] ?? '', // Adjust this based on your field name
          status: doc['status'] ?? '', // Adjust this based on your field name
        );
      }).toList();
      //todoList.sort((a, b) => a.status.compareTo(b.status));

      return (right(todoList));
    } catch (_) {
      return (const Left(MainFailure.serverFailure()));
    }
  }

  @override
  Future<Either<MainFailure, List<TodoModel>>> deleteTask(String docId) async {
    try {
      FirebaseFirestore db = FirebaseFirestore.instance;

      await db.collection('todoList').doc(docId).delete().then((_) async {
        todoUpdatedList.clear();
        final FirebaseFirestore firestore = FirebaseFirestore.instance;
        QuerySnapshot querySnapshot =
            await firestore.collection('todoList').get();
        for (var doc in querySnapshot.docs) {
          Map<String, dynamic> todoData = (doc.data() as Map<String, dynamic>);
          TodoModel todo = TodoModel(
            id: doc.id,
            taskName: todoData['taskName'] ?? '',
            status: todoData['status'] ?? '',
          );
          todoUpdatedList.add(todo);
        }
      });
      return (right(todoUpdatedList));
    } catch (_) {
      return (const Left(MainFailure.serverFailure()));
    }
  }

  @override
  Future<Either<MainFailure, List<TodoModel>>> changeStatus(
      String taskName, String status, String docId) async {
    try {
      FirebaseFirestore db = FirebaseFirestore.instance;
      Map<String, dynamic> updatedTask = {
        'taskName': taskName,
        'status': status == '0' ? '1' : '0'
      };
      await db
          .collection('todoList')
          .doc(docId)
          .update(updatedTask)
          .then((_) async {
        todoUpdatedList.clear();
        final FirebaseFirestore firestore = FirebaseFirestore.instance;
        QuerySnapshot querySnapshot =
            await firestore.collection('todoList').get();
        for (var doc in querySnapshot.docs) {
          Map<String, dynamic> todoData = (doc.data() as Map<String, dynamic>);
          TodoModel todo = TodoModel(
            id: doc.id,
            taskName: todoData['taskName'] ?? '',
            status: todoData['status'] ?? '',
          );
          todoUpdatedList.add(todo);
        }
      });
      return (right(todoUpdatedList));
    } catch (_) {
      return (const Left(MainFailure.serverFailure()));
    }
  }

  @override
  Future<Either<MainFailure, List<TodoModel>>> editTask(
      String taskName, String status, String docId) async {
    try {
      FirebaseFirestore db = FirebaseFirestore.instance;
      Map<String, dynamic> updatedTask = {
        'taskName': taskName,
        'status': status
      };
      await db
          .collection('todoList')
          .doc(docId)
          .update(updatedTask)
          .then((_) async {
        todoUpdatedList.clear();
        final FirebaseFirestore firestore = FirebaseFirestore.instance;
        QuerySnapshot querySnapshot =
            await firestore.collection('todoList').get();
        for (var doc in querySnapshot.docs) {
          Map<String, dynamic> todoData = (doc.data() as Map<String, dynamic>);
          TodoModel todo = TodoModel(
            id: doc.id,
            taskName: todoData['taskName'] ?? '',
            status: todoData['status'] ?? '',
          );
          todoUpdatedList.add(todo);
        }
      });
      return (right(todoUpdatedList));
    } catch (_) {
      return (const Left(MainFailure.serverFailure()));
    }
  }
}
