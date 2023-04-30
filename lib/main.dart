import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/features/auth/screens/auth_screens.dart';
import 'package:amazon_clone/routers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazon Clone',
      theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
          colorScheme: const ColorScheme.light(
            primary: GlobalVariables.secondaryColor,
          ),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          )),
      onGenerateRoute: (settings) => generarRoute(settings),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Amazon Clone'),
        ),
        body: Column(
          children: [
            const Center(
              child: Text('AMAZON'),
            ),
            Builder(builder: (context) {
              return ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AuthScreens.routeName);
                  },
                  child: const Text('Click'));
            })
          ],
        ),
      ),
    );
  }
}
