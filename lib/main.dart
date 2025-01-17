import 'package:day_task/consts.dart';
import 'package:day_task/core/app_router.dart';
import 'package:day_task/core/models/task_model.dart';
import 'package:day_task/core/my_bloc_observer.dart';
import 'package:day_task/features/home/data/repos/home_repo_imp.dart';
import 'package:day_task/features/home/presentation/manager/create_task_cubit/create_task_cubit.dart';
import 'package:day_task/features/home/presentation/manager/get_tasks_cubit/get_tasks_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  
  // Initialize Hive and register adapter
  await Hive.initFlutter();
  Hive.registerAdapter(TaskModelAdapter());
  
  // Open box and store reference
  final box = await Hive.openBox<TaskModel>(kTaskBox);
  
  // Add error handling
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    // Close Hive box on error
    box.close();
  };

  runApp(const DayTask());
}

class DayTask extends StatelessWidget {
  const DayTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CreateTaskCubit(
            HomeRepoImp(),
          ),
        ),
        BlocProvider(
          create: (context) => GetTasksCubit(
            HomeRepoImp(),
          )..getTasks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      ),
    );
  }
}
