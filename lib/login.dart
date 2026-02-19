import 'package:flutter/material.dart';
import 'package:matule2026/home.dart';
import 'package:matule2026/main.dart';
import 'package:matule2026/menu.dart';
import 'package:matule2026/pdf1.dart';
import 'package:matule2026/user/user_provider.dart';
import 'package:network/network.dart';
import 'package:provider/provider.dart';
import 'package:ui_kit/ui_components/app_textfomfield.dart';
import 'package:ui_kit/ui_components/button/big_button.dart';
import 'package:ui_kit/ui_kit.dart';

class Login extends StatefulWidget {
  final Network network;
  const Login({super.key, required this.network});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppTextfomfield(
                  helpText: 'Вход по E-mail',
                  onTap: (value) => setState(() {
                    email = value;
                  }),
                ),
                SizedBox(height: 20),
                AppTextfomfield(
                  helpText: 'Password',
                  onTap: (value) => setState(() {
                    password = value;
                  }),
                ),
                BigButton().accent(name: '231', onTap: () async {}),
                SizedBox(height: 50),

                SizedBox(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Menu(isActive: false),
                      Menu(isActive: true),
                      Menu(isActive: false),
                      Menu(isActive: false),
                      Menu(isActive: false),
                      Menu(isActive: true),
                      Menu(isActive: false),
                      Menu(isActive: false),
                      Menu(isActive: false),
                      Menu(isActive: true),
                      Menu(isActive: false),
                      Menu(isActive: false),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
