import 'package:amazon_clone/features/auth/screens/auth_screen.dart';
import 'package:amazon_clone/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Amazon Clone',
        theme: ThemeData(primarySwatch: Colors.blue),
        onGenerateRoute: (settings) => generateRoute(settings),
        home: const AuthScreen(),
        // home: Scaffold(
        //   appBar: AppBar(
        //     title: const Text('Hello'),
        //   ),
        //   body: Column(
        //     children: [
        //       const Center(
        //         child: Text('Flutter Demo Home Page'),
        //       ),
        //       Builder(
        //         builder: (context) {
        //           return ElevatedButton(
        //               onPressed: () {
        //                 Navigator.pushNamed(context, AuthScreen.routeName);
        //               },
        //               child: Text('Click'));
        //         }
        //       )
        //     ],
        //   ),
         );
  }
}
