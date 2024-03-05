import 'package:flutter/material.dart';
import 'package:mytrialdb/db/functions.dart';
import 'package:mytrialdb/screen/homescreen.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDatabase();
  // await createAtable();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.amber
        
        
      ),
      home:homescreen(),
    );
  }
}

