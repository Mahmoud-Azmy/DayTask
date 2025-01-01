import 'package:day_task/core/app_router.dart';
import 'package:day_task/core/assets.dart';
import 'package:day_task/features/splash/widgets/splash_view_logo.dart';
import 'package:day_task/features/splash/widgets/splash_view_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigationToHomeView();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const SplashViewLogo(),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              child: Image.asset(Assets.splashImage),
            ),
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return SlideTransition(
                  position: _animation,
                  child: const SplashViewText(),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  void initSlidingAnimation() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    _controller.forward();
  }

  void navigationToHomeView() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (mounted) {
          GoRouter.of(context).push(AppRouter.homeView);
        }
      },
    );
  }
}
