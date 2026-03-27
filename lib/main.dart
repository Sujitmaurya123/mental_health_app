import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentalhealthapp/core/theme.dart';
import 'package:mentalhealthapp/features/presentation/pages/meditation_screen.dart';
import 'package:mentalhealthapp/presentation.onboarding/bottomNavBar/bloc/navigation_bloc.dart';
import 'package:mentalhealthapp/presentation.onboarding/homePage/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_)=>NavigationBloc(),),
    ], child: MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    )
    );
  }
}



