import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:test_for_max/di_setup.dart';
import 'package:test_for_max/features/details_screen/presentation/cubit/details_cubit.dart';
import 'package:test_for_max/features/details_screen/presentation/ui/details_screen.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(create: (context) => HomeCubit(getIt())),
        BlocProvider<DetailsCubit>(create: (context) => DetailsCubit(getIt())),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: ThemeData(
          textTheme: const TextTheme(
              titleMedium: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 26)),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          '/home_screen': (context) => const HomeScreen(),
          '/details_screen': (context) => const DetailsScreen()
        },
        initialRoute: '/home_screen',
      ),
    );
  }
}
