

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_switching/bloc/theme_switcher_bloc.dart';
import 'package:theme_switching/bloc/theme_switcher_event.dart';
import 'package:theme_switching/home_page.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => ThemeSwitcherBloc()..add(SetInitialTheme()),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeSwitcherBloc,ThemeData>(
      builder: (context,state) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: state,
          debugShowCheckedModeBanner: false,
          home: const MyHomePage(),
        );
      }
    );
  }
}
