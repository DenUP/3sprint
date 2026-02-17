import 'package:flutter/material.dart';
import 'package:matule2026/user/user_provider.dart';
import 'package:network/entity/user.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<UserProvider>(
        builder: (context, value, child) {
          final user = value.user;
          return Column(
            children: [
              Column(
                children: [Text(user?.id ?? ''), Text(user?.firstname ?? '')],
              ),
            ],
          );
        },
      ),
    );
  }
}
