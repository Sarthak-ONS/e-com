import 'package:ecom/Screens/error_screen.dart';
import 'package:ecom/Screens/home_screen.dart';
import 'package:ecom/Screens/profile_screen.dart';
import 'package:flutter/material.dart';

import 'package:page_animation_transition/animations/right_to_left_faded_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class AppRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case '/profile':
        return PageAnimationTransition(
          page: const ProfileScreen(),
          pageAnimationType: RightToLeftFadedTransition(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const ErrorScreem(),
        );
    }
  }
}
