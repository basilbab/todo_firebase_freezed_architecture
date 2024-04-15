part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.loadTask() = _LoadTask;
  const factory TodoEvent.addTodo(TodoModel todoModel)=_AddTodo;
  const factory TodoEvent.deleteTodo(String? docId)=_DeleteTodo;
  const factory TodoEvent.changeStatus(String taskName, String status, String docId)=_ChangeStatus;
  const factory TodoEvent.editTask(String taskName, String status, String docId)=_EditTask;
}