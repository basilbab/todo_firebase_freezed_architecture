import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_firebase_freezed_architecture/application/todo/todo_bloc.dart';
import 'package:todo_firebase_freezed_architecture/core/notifiers.dart';
import 'package:todo_firebase_freezed_architecture/domain/todo/models/todo_model.dart';

class ScreenTodo extends StatelessWidget {
  ScreenTodo({super.key});

  @override
  Widget build(BuildContext context) {
    
    BlocProvider.of<TodoBloc>(context).add(const TodoEvent.loadTask());

    String index = '';
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Todo List',
        style: Theme.of(context).textTheme.headlineMedium,
      )),
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .1,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ValueListenableBuilder<bool>(
                    valueListenable: editSave,
                    builder: (context, bool newEditSave, _) {
                      return ValueListenableBuilder(
                          valueListenable: taskName,
                          builder: (context, String newtaskName, _) {
                            final todoController =
                                TextEditingController(text: taskName.value);
                            return ValueListenableBuilder(
                                valueListenable: status,
                                builder: (context, newStatus, _) {
                                  editIndex.addListener(
                                    () {
                                      index = editIndex.value;
                                    },
                                  );

                                  return Row(
                                    children: [
                                      Expanded(
                                        child:TextField(
                                          controller: todoController,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15))),
                                        )
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      TextButton(
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Colors.indigo)),
                                          onPressed: () {
                                            loadTask(context);
                                          },
                                          child: const Text(
                                            'Load',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      TextButton(
                                        onPressed: () async {
                                          if (editSave.value == false) {
                                            BlocProvider.of<TodoBloc>(context)
                                                .add(TodoEvent.addTodo(
                                                    TodoModel(
                                                        id: '0',
                                                        taskName:
                                                            todoController.text,
                                                        status: '0')));
                                          } else {
                                            editSave.value = false;
                                            BlocProvider.of<TodoBloc>(context)
                                                .add(TodoEvent.editTask(
                                              todoController.text,
                                              status.value,
                                              index,
                                            ));
                                          }
                                        },
                                        style: const ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    Colors.indigo)),
                                        child: Text(
                                          editSave.value == false
                                              ? 'Add Task'
                                              : 'Edit Save',
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                      )
                                    ],
                                  );
                                });
                          });
                    })),
          ),
          const Divider(),
          SizedBox(
              height: MediaQuery.of(context).size.height * .7,
              child: BlocBuilder<TodoBloc, TodoState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(
                        child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ));
                  } else if (state.isError) {
                    return const Center(
                      child: Text('Oops. Something went wrong'),
                    );
                  } else if (state.todoList!.isEmpty) {
                    return const Image(
                        image: AssetImage('assets/empty_todo.jpg'));
                  } else {
                    return Column(
                      children: [
                        Expanded(
                            child: ListView.separated(
                          itemBuilder: (context, index) {
                            return ListTile(
                              onLongPress: () {
                                BlocProvider.of<TodoBloc>(context)
                                    .add(TodoEvent.changeStatus(
                                  state.todoList![index].taskName,
                                  state.todoList![index].status,
                                  state.todoList![index].id,
                                ));
                              },
                              leading: Text(
                                '${index + 1}',
                                style: const TextStyle(fontSize: 20),
                              ),
                              title: Text(
                                state.todoList![index].taskName,
                                style: TextStyle(
                                    fontSize: 23,
                                    color: state.todoList?[index].status == '0'
                                        ? Colors.red
                                        : Colors.green),
                              ),
                              subtitle: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      state.todoList?[index].status == '0'
                                          ? 'Not Completed'
                                          : 'Completed',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color:
                                              state.todoList?[index].status ==
                                                      '0'
                                                  ? Colors.red
                                                  : Colors.green),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      editSave.value = true;
                                      taskName.value =
                                          state.todoList![index].taskName;
                                      status.value =
                                          state.todoList![index].status;
                                      editIndex.value =
                                          state.todoList![index].id;
                                      // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
                                      editIndex.notifyListeners();
                                    },
                                    icon: const Icon(Icons.edit),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      BlocProvider.of<TodoBloc>(context).add(
                                          TodoEvent.deleteTodo(
                                              state.todoList?[index].id));
                                    },
                                    icon: const Icon(Icons.delete),
                                  )
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const Divider();
                          },
                          itemCount: state.todoList?.length ?? 0,
                        ))
                      ],
                    );
                  }
                },
              )),
        ],
      ),
    );
  }

  Future<void> loadTask(BuildContext context) async {
    BlocProvider.of<TodoBloc>(context).add(const TodoEvent.loadTask());
  }
}
