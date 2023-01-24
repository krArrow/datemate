import 'package:datemate/blocs/swipe/swipe_bloc.dart';
import 'package:datemate/config/app_router.dart';
import 'package:datemate/screens/home/homeScreen.dart';
import 'package:datemate/users/users_screen.dart';
import 'package:flutter/material.dart';
import 'package:datemate/screens/home/homeScreen.dart';
import 'package:datemate/widgets/widgets.dart';
import 'package:datemate/models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:datemate/config/theme.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (_) =>
                  SwipeBloc()
                  ..add(
                    LoadUsersEvent(users: User.users),
                    ),
                  )
                  // on<LoadUsersEvent>((event, emit) {});
         ],
        // ignore: prefer_const_constructors
        child: MaterialApp(
          title: 'DateMate',
          debugShowCheckedModeBanner: false,
          // theme: theme(),
          onGenerateRoute: MyAppRouter.generateRoute,
          initialRoute: HomeScreen.routeName,
        )
        );
  }
  
  
}

