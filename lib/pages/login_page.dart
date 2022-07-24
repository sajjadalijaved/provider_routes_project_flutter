import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_routes_project/routs/routes.dart';

import '../models/user_data.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernamecontroller = TextEditingController();

  @override
  void dispose() {
    usernamecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: usernamecontroller,
                decoration: const InputDecoration(
                    labelText: 'UserName',
                    hintText: 'Plese Enter Username',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.red))),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<User>().username = usernamecontroller.text;
                  Navigator.of(context).pushNamed(RouteManger.mainPage);
                },
                child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}
