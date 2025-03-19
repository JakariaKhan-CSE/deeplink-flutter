import 'package:flutter/material.dart';
import 'package:flutter_deeplink/homepage.dart';
import 'package:flutter_deeplink/profile.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
routerConfig: _router,
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
    );
  }
}


// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const Profile();
          },
        ),
      ],
    ),
  ],
);
