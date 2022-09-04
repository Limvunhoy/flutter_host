import 'package:flutter/material.dart';
import 'package:app_a/main.dart' as appA;
import 'package:app_b/feature/view/home_page.dart' as appBHomePage;
import 'package:app_a/feature/view/home_page.dart' as appAHomePage;
import 'package:app_b/main.dart' as appB;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Host"),
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                child: const Text("Open App A"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const appAHomePage.HomePage()
                        // Scaffold(
                        //     appBar: AppBar(
                        //       title: const Text("Test"),
                        //     ),
                        //     backgroundColor: Colors.red),
                        ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text("Open App B"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const appBHomePage.HomePage()
                        // const appB.MyApp(),
                        ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
