import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_firebase_freezed_architecture/application/todo/todo_bloc.dart';

class TodoHomeUpdated extends StatelessWidget {
  const TodoHomeUpdated({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<TodoBloc>(context).add(const TodoEvent.loadTask());
    });
    return Scaffold(
      body: SafeArea(
          child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .1,
            // color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    //   controller: todoController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.indigo)),
                      child: Text(
                        'Add Task',
                        style: const TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
          ),
          const Divider(),
          Container(
            height: MediaQuery.of(context).size.height * .86,
            //color: Colors.green,
            child: BlocBuilder<TodoBloc, TodoState>(
              builder: (context, state) {
               
                return ListView.builder(
                    itemCount: state.todoList?.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Text('a'),
                      );
                    });
              },
            ),
          )
        ],
      )),
    );
  }
}
