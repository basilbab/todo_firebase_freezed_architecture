// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTask,
    required TResult Function(TodoModel todoModel) addTodo,
    required TResult Function(String? docId) deleteTodo,
    required TResult Function(String taskName, String status, String docId)
        changeStatus,
    required TResult Function(String taskName, String status, String docId)
        editTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTask,
    TResult? Function(TodoModel todoModel)? addTodo,
    TResult? Function(String? docId)? deleteTodo,
    TResult? Function(String taskName, String status, String docId)?
        changeStatus,
    TResult? Function(String taskName, String status, String docId)? editTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTask,
    TResult Function(TodoModel todoModel)? addTodo,
    TResult Function(String? docId)? deleteTodo,
    TResult Function(String taskName, String status, String docId)?
        changeStatus,
    TResult Function(String taskName, String status, String docId)? editTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTask value) loadTask,
    required TResult Function(_AddTodo value) addTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_ChangeStatus value) changeStatus,
    required TResult Function(_EditTask value) editTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTask value)? loadTask,
    TResult? Function(_AddTodo value)? addTodo,
    TResult? Function(_DeleteTodo value)? deleteTodo,
    TResult? Function(_ChangeStatus value)? changeStatus,
    TResult? Function(_EditTask value)? editTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTask value)? loadTask,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ChangeStatus value)? changeStatus,
    TResult Function(_EditTask value)? editTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadTaskImplCopyWith<$Res> {
  factory _$$LoadTaskImplCopyWith(
          _$LoadTaskImpl value, $Res Function(_$LoadTaskImpl) then) =
      __$$LoadTaskImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadTaskImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$LoadTaskImpl>
    implements _$$LoadTaskImplCopyWith<$Res> {
  __$$LoadTaskImplCopyWithImpl(
      _$LoadTaskImpl _value, $Res Function(_$LoadTaskImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadTaskImpl implements _LoadTask {
  const _$LoadTaskImpl();

  @override
  String toString() {
    return 'TodoEvent.loadTask()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadTaskImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTask,
    required TResult Function(TodoModel todoModel) addTodo,
    required TResult Function(String? docId) deleteTodo,
    required TResult Function(String taskName, String status, String docId)
        changeStatus,
    required TResult Function(String taskName, String status, String docId)
        editTask,
  }) {
    return loadTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTask,
    TResult? Function(TodoModel todoModel)? addTodo,
    TResult? Function(String? docId)? deleteTodo,
    TResult? Function(String taskName, String status, String docId)?
        changeStatus,
    TResult? Function(String taskName, String status, String docId)? editTask,
  }) {
    return loadTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTask,
    TResult Function(TodoModel todoModel)? addTodo,
    TResult Function(String? docId)? deleteTodo,
    TResult Function(String taskName, String status, String docId)?
        changeStatus,
    TResult Function(String taskName, String status, String docId)? editTask,
    required TResult orElse(),
  }) {
    if (loadTask != null) {
      return loadTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTask value) loadTask,
    required TResult Function(_AddTodo value) addTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_ChangeStatus value) changeStatus,
    required TResult Function(_EditTask value) editTask,
  }) {
    return loadTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTask value)? loadTask,
    TResult? Function(_AddTodo value)? addTodo,
    TResult? Function(_DeleteTodo value)? deleteTodo,
    TResult? Function(_ChangeStatus value)? changeStatus,
    TResult? Function(_EditTask value)? editTask,
  }) {
    return loadTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTask value)? loadTask,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ChangeStatus value)? changeStatus,
    TResult Function(_EditTask value)? editTask,
    required TResult orElse(),
  }) {
    if (loadTask != null) {
      return loadTask(this);
    }
    return orElse();
  }
}

abstract class _LoadTask implements TodoEvent {
  const factory _LoadTask() = _$LoadTaskImpl;
}

/// @nodoc
abstract class _$$AddTodoImplCopyWith<$Res> {
  factory _$$AddTodoImplCopyWith(
          _$AddTodoImpl value, $Res Function(_$AddTodoImpl) then) =
      __$$AddTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoModel todoModel});
}

/// @nodoc
class __$$AddTodoImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$AddTodoImpl>
    implements _$$AddTodoImplCopyWith<$Res> {
  __$$AddTodoImplCopyWithImpl(
      _$AddTodoImpl _value, $Res Function(_$AddTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoModel = null,
  }) {
    return _then(_$AddTodoImpl(
      null == todoModel
          ? _value.todoModel
          : todoModel // ignore: cast_nullable_to_non_nullable
              as TodoModel,
    ));
  }
}

/// @nodoc

class _$AddTodoImpl implements _AddTodo {
  const _$AddTodoImpl(this.todoModel);

  @override
  final TodoModel todoModel;

  @override
  String toString() {
    return 'TodoEvent.addTodo(todoModel: $todoModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTodoImpl &&
            (identical(other.todoModel, todoModel) ||
                other.todoModel == todoModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todoModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTodoImplCopyWith<_$AddTodoImpl> get copyWith =>
      __$$AddTodoImplCopyWithImpl<_$AddTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTask,
    required TResult Function(TodoModel todoModel) addTodo,
    required TResult Function(String? docId) deleteTodo,
    required TResult Function(String taskName, String status, String docId)
        changeStatus,
    required TResult Function(String taskName, String status, String docId)
        editTask,
  }) {
    return addTodo(todoModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTask,
    TResult? Function(TodoModel todoModel)? addTodo,
    TResult? Function(String? docId)? deleteTodo,
    TResult? Function(String taskName, String status, String docId)?
        changeStatus,
    TResult? Function(String taskName, String status, String docId)? editTask,
  }) {
    return addTodo?.call(todoModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTask,
    TResult Function(TodoModel todoModel)? addTodo,
    TResult Function(String? docId)? deleteTodo,
    TResult Function(String taskName, String status, String docId)?
        changeStatus,
    TResult Function(String taskName, String status, String docId)? editTask,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(todoModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTask value) loadTask,
    required TResult Function(_AddTodo value) addTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_ChangeStatus value) changeStatus,
    required TResult Function(_EditTask value) editTask,
  }) {
    return addTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTask value)? loadTask,
    TResult? Function(_AddTodo value)? addTodo,
    TResult? Function(_DeleteTodo value)? deleteTodo,
    TResult? Function(_ChangeStatus value)? changeStatus,
    TResult? Function(_EditTask value)? editTask,
  }) {
    return addTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTask value)? loadTask,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ChangeStatus value)? changeStatus,
    TResult Function(_EditTask value)? editTask,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(this);
    }
    return orElse();
  }
}

abstract class _AddTodo implements TodoEvent {
  const factory _AddTodo(final TodoModel todoModel) = _$AddTodoImpl;

  TodoModel get todoModel;
  @JsonKey(ignore: true)
  _$$AddTodoImplCopyWith<_$AddTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTodoImplCopyWith<$Res> {
  factory _$$DeleteTodoImplCopyWith(
          _$DeleteTodoImpl value, $Res Function(_$DeleteTodoImpl) then) =
      __$$DeleteTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? docId});
}

/// @nodoc
class __$$DeleteTodoImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$DeleteTodoImpl>
    implements _$$DeleteTodoImplCopyWith<$Res> {
  __$$DeleteTodoImplCopyWithImpl(
      _$DeleteTodoImpl _value, $Res Function(_$DeleteTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docId = freezed,
  }) {
    return _then(_$DeleteTodoImpl(
      freezed == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeleteTodoImpl implements _DeleteTodo {
  const _$DeleteTodoImpl(this.docId);

  @override
  final String? docId;

  @override
  String toString() {
    return 'TodoEvent.deleteTodo(docId: $docId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTodoImpl &&
            (identical(other.docId, docId) || other.docId == docId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, docId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTodoImplCopyWith<_$DeleteTodoImpl> get copyWith =>
      __$$DeleteTodoImplCopyWithImpl<_$DeleteTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTask,
    required TResult Function(TodoModel todoModel) addTodo,
    required TResult Function(String? docId) deleteTodo,
    required TResult Function(String taskName, String status, String docId)
        changeStatus,
    required TResult Function(String taskName, String status, String docId)
        editTask,
  }) {
    return deleteTodo(docId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTask,
    TResult? Function(TodoModel todoModel)? addTodo,
    TResult? Function(String? docId)? deleteTodo,
    TResult? Function(String taskName, String status, String docId)?
        changeStatus,
    TResult? Function(String taskName, String status, String docId)? editTask,
  }) {
    return deleteTodo?.call(docId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTask,
    TResult Function(TodoModel todoModel)? addTodo,
    TResult Function(String? docId)? deleteTodo,
    TResult Function(String taskName, String status, String docId)?
        changeStatus,
    TResult Function(String taskName, String status, String docId)? editTask,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(docId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTask value) loadTask,
    required TResult Function(_AddTodo value) addTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_ChangeStatus value) changeStatus,
    required TResult Function(_EditTask value) editTask,
  }) {
    return deleteTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTask value)? loadTask,
    TResult? Function(_AddTodo value)? addTodo,
    TResult? Function(_DeleteTodo value)? deleteTodo,
    TResult? Function(_ChangeStatus value)? changeStatus,
    TResult? Function(_EditTask value)? editTask,
  }) {
    return deleteTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTask value)? loadTask,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ChangeStatus value)? changeStatus,
    TResult Function(_EditTask value)? editTask,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(this);
    }
    return orElse();
  }
}

abstract class _DeleteTodo implements TodoEvent {
  const factory _DeleteTodo(final String? docId) = _$DeleteTodoImpl;

  String? get docId;
  @JsonKey(ignore: true)
  _$$DeleteTodoImplCopyWith<_$DeleteTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeStatusImplCopyWith<$Res> {
  factory _$$ChangeStatusImplCopyWith(
          _$ChangeStatusImpl value, $Res Function(_$ChangeStatusImpl) then) =
      __$$ChangeStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskName, String status, String docId});
}

/// @nodoc
class __$$ChangeStatusImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$ChangeStatusImpl>
    implements _$$ChangeStatusImplCopyWith<$Res> {
  __$$ChangeStatusImplCopyWithImpl(
      _$ChangeStatusImpl _value, $Res Function(_$ChangeStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskName = null,
    Object? status = null,
    Object? docId = null,
  }) {
    return _then(_$ChangeStatusImpl(
      null == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String,
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      null == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeStatusImpl implements _ChangeStatus {
  const _$ChangeStatusImpl(this.taskName, this.status, this.docId);

  @override
  final String taskName;
  @override
  final String status;
  @override
  final String docId;

  @override
  String toString() {
    return 'TodoEvent.changeStatus(taskName: $taskName, status: $status, docId: $docId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeStatusImpl &&
            (identical(other.taskName, taskName) ||
                other.taskName == taskName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.docId, docId) || other.docId == docId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskName, status, docId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeStatusImplCopyWith<_$ChangeStatusImpl> get copyWith =>
      __$$ChangeStatusImplCopyWithImpl<_$ChangeStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTask,
    required TResult Function(TodoModel todoModel) addTodo,
    required TResult Function(String? docId) deleteTodo,
    required TResult Function(String taskName, String status, String docId)
        changeStatus,
    required TResult Function(String taskName, String status, String docId)
        editTask,
  }) {
    return changeStatus(taskName, status, docId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTask,
    TResult? Function(TodoModel todoModel)? addTodo,
    TResult? Function(String? docId)? deleteTodo,
    TResult? Function(String taskName, String status, String docId)?
        changeStatus,
    TResult? Function(String taskName, String status, String docId)? editTask,
  }) {
    return changeStatus?.call(taskName, status, docId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTask,
    TResult Function(TodoModel todoModel)? addTodo,
    TResult Function(String? docId)? deleteTodo,
    TResult Function(String taskName, String status, String docId)?
        changeStatus,
    TResult Function(String taskName, String status, String docId)? editTask,
    required TResult orElse(),
  }) {
    if (changeStatus != null) {
      return changeStatus(taskName, status, docId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTask value) loadTask,
    required TResult Function(_AddTodo value) addTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_ChangeStatus value) changeStatus,
    required TResult Function(_EditTask value) editTask,
  }) {
    return changeStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTask value)? loadTask,
    TResult? Function(_AddTodo value)? addTodo,
    TResult? Function(_DeleteTodo value)? deleteTodo,
    TResult? Function(_ChangeStatus value)? changeStatus,
    TResult? Function(_EditTask value)? editTask,
  }) {
    return changeStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTask value)? loadTask,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ChangeStatus value)? changeStatus,
    TResult Function(_EditTask value)? editTask,
    required TResult orElse(),
  }) {
    if (changeStatus != null) {
      return changeStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeStatus implements TodoEvent {
  const factory _ChangeStatus(
          final String taskName, final String status, final String docId) =
      _$ChangeStatusImpl;

  String get taskName;
  String get status;
  String get docId;
  @JsonKey(ignore: true)
  _$$ChangeStatusImplCopyWith<_$ChangeStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditTaskImplCopyWith<$Res> {
  factory _$$EditTaskImplCopyWith(
          _$EditTaskImpl value, $Res Function(_$EditTaskImpl) then) =
      __$$EditTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskName, String status, String docId});
}

/// @nodoc
class __$$EditTaskImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$EditTaskImpl>
    implements _$$EditTaskImplCopyWith<$Res> {
  __$$EditTaskImplCopyWithImpl(
      _$EditTaskImpl _value, $Res Function(_$EditTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskName = null,
    Object? status = null,
    Object? docId = null,
  }) {
    return _then(_$EditTaskImpl(
      null == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String,
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      null == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditTaskImpl implements _EditTask {
  const _$EditTaskImpl(this.taskName, this.status, this.docId);

  @override
  final String taskName;
  @override
  final String status;
  @override
  final String docId;

  @override
  String toString() {
    return 'TodoEvent.editTask(taskName: $taskName, status: $status, docId: $docId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTaskImpl &&
            (identical(other.taskName, taskName) ||
                other.taskName == taskName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.docId, docId) || other.docId == docId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskName, status, docId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTaskImplCopyWith<_$EditTaskImpl> get copyWith =>
      __$$EditTaskImplCopyWithImpl<_$EditTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTask,
    required TResult Function(TodoModel todoModel) addTodo,
    required TResult Function(String? docId) deleteTodo,
    required TResult Function(String taskName, String status, String docId)
        changeStatus,
    required TResult Function(String taskName, String status, String docId)
        editTask,
  }) {
    return editTask(taskName, status, docId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTask,
    TResult? Function(TodoModel todoModel)? addTodo,
    TResult? Function(String? docId)? deleteTodo,
    TResult? Function(String taskName, String status, String docId)?
        changeStatus,
    TResult? Function(String taskName, String status, String docId)? editTask,
  }) {
    return editTask?.call(taskName, status, docId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTask,
    TResult Function(TodoModel todoModel)? addTodo,
    TResult Function(String? docId)? deleteTodo,
    TResult Function(String taskName, String status, String docId)?
        changeStatus,
    TResult Function(String taskName, String status, String docId)? editTask,
    required TResult orElse(),
  }) {
    if (editTask != null) {
      return editTask(taskName, status, docId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTask value) loadTask,
    required TResult Function(_AddTodo value) addTodo,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_ChangeStatus value) changeStatus,
    required TResult Function(_EditTask value) editTask,
  }) {
    return editTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTask value)? loadTask,
    TResult? Function(_AddTodo value)? addTodo,
    TResult? Function(_DeleteTodo value)? deleteTodo,
    TResult? Function(_ChangeStatus value)? changeStatus,
    TResult? Function(_EditTask value)? editTask,
  }) {
    return editTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTask value)? loadTask,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ChangeStatus value)? changeStatus,
    TResult Function(_EditTask value)? editTask,
    required TResult orElse(),
  }) {
    if (editTask != null) {
      return editTask(this);
    }
    return orElse();
  }
}

abstract class _EditTask implements TodoEvent {
  const factory _EditTask(
          final String taskName, final String status, final String docId) =
      _$EditTaskImpl;

  String get taskName;
  String get status;
  String get docId;
  @JsonKey(ignore: true)
  _$$EditTaskImplCopyWith<_$EditTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<TodoModel>? get todoList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
  @useResult
  $Res call({bool isLoading, bool isError, List<TodoModel>? todoList});
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? todoList = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      todoList: freezed == todoList
          ? _value.todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoStateImplCopyWith<$Res>
    implements $TodoStateCopyWith<$Res> {
  factory _$$TodoStateImplCopyWith(
          _$TodoStateImpl value, $Res Function(_$TodoStateImpl) then) =
      __$$TodoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, List<TodoModel>? todoList});
}

/// @nodoc
class __$$TodoStateImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoStateImpl>
    implements _$$TodoStateImplCopyWith<$Res> {
  __$$TodoStateImplCopyWithImpl(
      _$TodoStateImpl _value, $Res Function(_$TodoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? todoList = freezed,
  }) {
    return _then(_$TodoStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      todoList: freezed == todoList
          ? _value._todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>?,
    ));
  }
}

/// @nodoc

class _$TodoStateImpl implements _TodoState {
  const _$TodoStateImpl(
      {required this.isLoading,
      required this.isError,
      final List<TodoModel>? todoList})
      : _todoList = todoList;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<TodoModel>? _todoList;
  @override
  List<TodoModel>? get todoList {
    final value = _todoList;
    if (value == null) return null;
    if (_todoList is EqualUnmodifiableListView) return _todoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TodoState(isLoading: $isLoading, isError: $isError, todoList: $todoList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality().equals(other._todoList, _todoList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError,
      const DeepCollectionEquality().hash(_todoList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoStateImplCopyWith<_$TodoStateImpl> get copyWith =>
      __$$TodoStateImplCopyWithImpl<_$TodoStateImpl>(this, _$identity);
}

abstract class _TodoState implements TodoState {
  const factory _TodoState(
      {required final bool isLoading,
      required final bool isError,
      final List<TodoModel>? todoList}) = _$TodoStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<TodoModel>? get todoList;
  @override
  @JsonKey(ignore: true)
  _$$TodoStateImplCopyWith<_$TodoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
