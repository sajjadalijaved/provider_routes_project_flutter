import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_routes_project/models/settings_data.dart';
import 'package:provider_routes_project/models/user_data.dart';
import 'package:provider_routes_project/routs/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => User()),
        ),
        ChangeNotifierProvider(create: ((context) => SettingsData()))
      ],
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: RouteManger.loginPage,
          onGenerateRoute: RouteManger.generateRoute,
        );
      },
    );
  }
}
