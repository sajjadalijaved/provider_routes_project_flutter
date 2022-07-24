import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_routes_project/models/settings_data.dart';
import 'package:provider_routes_project/routs/routes.dart';

import '../models/user_data.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.watch<SettingsData>().appBarColor,
        automaticallyImplyLeading: false,
        title: const Text('Main Screen'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManger.settingsPage);
              },
              icon: const Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                Navigator.of(context).pop(context);
              },
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<User>(
              builder: (context, value, child) {
                return Text(
                  'welcome ${value.username}',
                  style: const TextStyle(fontSize: 24),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
