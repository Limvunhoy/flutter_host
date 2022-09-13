import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_host/feature/view/home_page.dart';
import 'package:app_a/main.dart' as appA;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.delayed(const Duration(milliseconds: 250));
  const channel = MethodChannel("dev.wingmoney.com/eco");
  var result = await channel.invokeMethod("requestEntryPoint");
  switch (result) {
    case 'flutterHost':
      return appA.main();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
