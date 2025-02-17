import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';
import 'package:todo_app/app/config/dependencies.dart';
import 'main.route.dart';

part 'main.g.dart';

void main() {
  setupDependencies();

  runApp(const MyApp());
}

@Main('lib/app/ui')
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Routefly.routerConfig(
        routes: routes,
        initialPath: routePaths.todo,
      ),
    );
  }
}
