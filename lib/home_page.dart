import 'package:flutter/material.dart';
import 'package:flutter/Cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_switching/bloc/theme_switcher_bloc.dart';
import 'package:theme_switching/bloc/theme_switcher_event.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          BlocBuilder<ThemeSwitcherBloc,ThemeData>(
            builder: (context,state) {
              return CupertinoSwitch(value: state == ThemeData.dark(), onChanged: (value) {
                context.read<ThemeSwitcherBloc>().add(ThemeSwitching());
              },);
            }
          )
        ],
      ),
      body: const Center(child: Text("Theme Change App"),),
    );
  }
}