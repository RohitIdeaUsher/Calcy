import 'package:calcy/constant/string.dart';
import 'package:calcy/screen/splash.dart';
import 'package:calcy/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) => runApp(const MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: StringConstant.appName,
      theme: CalcyTheme.defaultTheme,
      home: const Splash(),
    );
  }
}
