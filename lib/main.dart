import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_fac/ui/cubit/app_cubit.dart';
import 'package:home_fac/ui/pages/home/home_page.dart';
import 'package:home_fac/ui/views/base_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, child) => BaseWidget(child: child),
        home: const HomePage(),
      ),
    );
  }
}
