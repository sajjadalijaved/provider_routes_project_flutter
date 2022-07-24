import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_routes_project/models/settings_data.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<SettingsData>(
              builder: (context, value, child) {
                return Text('Choose color from appBar',
                    style: TextStyle(
                      color: value.appBarColor,
                    ));
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<SettingsData>().appBarColor = Colors.blue;
                },
                child: const Text('Blue')),
            const SizedBox(height: 10),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.purple),
                onPressed: () {
                  context.read<SettingsData>().appBarColor = Colors.purple;
                },
                child: const Text('Purple'))
          ],
        ),
      ),
    );
  }
}
