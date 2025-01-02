import 'package:day_task/features/home/presentation/views/create_new_task_view.dart';
import 'package:day_task/features/home/presentation/views/home_view.dart';
import 'package:day_task/features/splash/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const homeView = '/homeView';
  static const createNewTaskView = '/createNewTaskView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: createNewTaskView,
        builder: (context, state) => const CreateNewTaskView(),
      ),
    ],
  );
}
