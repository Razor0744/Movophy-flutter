import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_for_max/di_setup.dart';
import 'package:test_for_max/features/home_screen/presentation/bloc/home_cubit.dart';
import 'package:test_for_max/features/home_screen/presentation/ui/home_screen.dart';

void main() {
  diSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(getIt()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: const TextTheme(
            titleMedium: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 26
            )
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
