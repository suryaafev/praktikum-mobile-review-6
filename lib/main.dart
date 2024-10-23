import 'package:flutter/material.dart';
import 'package:pertemuan7b1/model/task_data.dart';
import 'package:pertemuan7b1/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:pertemuan7b1/dark_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (BuildContext context) => TaskData(),
          ),
          ChangeNotifierProvider(
            create: (BuildContext context) => ThemeModeData(),
          )
        ],
        builder: (context) {
          return MaterialApp(
            themeMode: Provider.of<ThemeModeData>(context).themeMode,
            darkTheme: ThemeData.dark(useMaterial3: true),
            home: TasksScreen(),
          );
        });
  }
}
