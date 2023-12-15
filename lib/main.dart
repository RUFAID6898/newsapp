import 'package:flutter/material.dart';
import 'package:new_app/datafecting.dart';
import 'package:new_app/main_home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TechNotifire>(
          create: (_) => TechNotifire(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // appBarTheme: AppBarTheme(backgroundColor: Colors.grey),
          // scaffoldBackgroundColor: Colors.grey,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MainHomeScreem(),
      ),
    );
  }
}
