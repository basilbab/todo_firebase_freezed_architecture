import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_firebase_freezed_architecture/core/failures/main_failure.dart';
import 'package:todo_firebase_freezed_architecture/domain/todo/models/todo_model.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_firebase_freezed_architecture/domain/todo/save_todo.dart';
part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

@injectable
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final SaveTodoService saveTodoService;
  TodoBloc(this.saveTodoService) : super(TodoState.initial()) {
    on<_AddTodo>((event, emit) async {      
     emit(const TodoState(isLoading: true, isError: false,));
     final todoAction=await saveTodoService.addTodo(event.todoModel);
     todoAction.fold((MainFailure f){
      emit(const TodoState(isLoading: false, isError: true));
     },
     (List<TodoModel> newList){
      emit( TodoState(isLoading: false, isError: false, todoList: newList));
     });
    });
     on<_LoadTask>((event, emit) async {   
      List<TodoModel> todoupdateList=[]; 
      todoupdateList.clear();  
     emit(const TodoState(isLoading: true, isError: false));
       final todoAction=await saveTodoService.loadTask();
       todoAction.fold((MainFailure f){
        emit(const TodoState(isLoading: false, isError: true,));
       },
        (List<TodoModel> l){
        
          emit(TodoState(isLoading: false, isError: false, todoList: l));
        });
     
    });
    on<_DeleteTodo>((event, emit) async {   
      String? docId=event.docId;
      List<TodoModel> todoupdateList=[]; 
      todoupdateList.clear();  
     emit(const TodoState(isLoading: true, isError: false));
       final todoAction=await saveTodoService.deleteTask(docId??'');
       todoAction.fold((MainFailure f){
        emit(const TodoState(isLoading: false, isError: true,));
       },
        (todoupdateList){
          emit(TodoState(isLoading: false, isError: false, todoList: todoupdateList));
        });
     
    });
    on<_ChangeStatus>((event, emit) async {   
      String? docId=event.docId;
      List<TodoModel> todoupdateList=[]; 
      todoupdateList.clear();  
     emit(const TodoState(isLoading: true, isError: false));
       final todoAction=await saveTodoService.changeStatus(event.taskName, event.status, docId);
       todoAction.fold((MainFailure f){
        emit(const TodoState(isLoading: false, isError: true,));
       },
        (todoupdateList){
          emit(TodoState(isLoading: false, isError: false, todoList: todoupdateList));
        });
     
    });
    on<_EditTask>((event, emit) async {   
      String? docId=event.docId;
      List<TodoModel> todoupdateList=[]; 
      todoupdateList.clear();  
     emit(const TodoState(isLoading: true, isError: false));
       final todoAction=await saveTodoService.editTask(event.taskName, event.status, docId);
       todoAction.fold((MainFailure f){
        emit(const TodoState(isLoading: false, isError: true,));
       },
        (todoupdateList){
          emit(TodoState(isLoading: false, isError: false, todoList: todoupdateList));
        });
     
    });
  }
}
