part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState({
    required bool isLoading,
    required bool isError,
    List<TodoModel>? todoList
  }) = _TodoState;
  factory TodoState.initial()=>const TodoState(isError: false,isLoading: false,todoList: null);
}
