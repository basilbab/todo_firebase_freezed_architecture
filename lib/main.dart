import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_firebase_freezed_architecture/application/todo/todo_bloc.dart';
import 'package:todo_firebase_freezed_architecture/core/di/injectable.dart';
import 'package:todo_firebase_freezed_architecture/firebase_options.dart';
import 'package:todo_firebase_freezed_architecture/presentation/todo_home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    loadTask();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TodoBloc>(),
      child:  MaterialApp(home: ScreenTodo()),
    );
  }

  Future<void> loadTask() async {
  //  BlocProvider.of<TodoBloc>(context).add(const TodoEvent.loadTask());
  }
}
