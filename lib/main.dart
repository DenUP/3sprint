import 'package:flutter/material.dart';
import 'package:matule2026/getit.dart';
import 'package:matule2026/home.dart';
import 'package:matule2026/login.dart';
import 'package:matule2026/user/user_provider.dart';
import 'package:network/network.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final network = getIt<Network>();
  final userProvider = UserProvider(network: network);
  await userProvider.getUser();
  await setup();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider(network: getIt())),
      ],
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = context.read<UserProvider>();
    return MaterialApp(
      home: userProvider.user == null ? Login(network: getIt()) : Home(),
    );
  }
}
