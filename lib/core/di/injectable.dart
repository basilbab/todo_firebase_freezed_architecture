import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_firebase_freezed_architecture/core/di/injectable.config.dart';

final getIt=GetIt.instance;
@InjectableInit()
Future<void> configureInjection()async{
await $initGetIt(getIt,environment: Environment.prod);
}