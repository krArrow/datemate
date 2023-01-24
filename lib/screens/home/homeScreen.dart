// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:datemate/blocs/swipe/swipe_bloc.dart';
import 'package:datemate/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  const HomeScreen({super.key});
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: 
        BlocBuilder<SwipeBloc, SwipeState>(
          builder: (context, state) {
            if (state is SwipeLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is SwipeLoaded) {
              return Column(
                children: [
                  InkWell(
                    onDoubleTap: () {
                      Navigator.pushNamed(
                        context,
                        '/users',
                        arguments: state.users[0]
                      );
                    },
                    child: Draggable<User>(
                      data: state.users[0],
                      feedback: UserCard(user: User.users[0]),
                      child: UserCard(user: User.users[0]),
                      childWhenDragging: UserCard(user: User.users[1]),
                      onDragEnd: (drag) {
                        if (drag.velocity.pixelsPerSecond.dx < 0) {
                          // ignore: avoid_single_cascade_in_expression_statements
                          context.read<SwipeBloc>()
                            ..add(SwipeLeftEvent(user: state.users[0]));
                          print("Swiped Left");
                        } else {
                          // ignore: avoid_single_cascade_in_expression_statements
                          context.read<SwipeBloc>()
                            ..add(SwipeRightEvent(user: state.users[0]));
                          print("Swiped Right");
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            // ignore: avoid_single_cascade_in_expression_statements
                            context.read<SwipeBloc>()
                              ..add(SwipeLeftEvent(user: state.users[0]));
                            print("Swiped Left");
                          },
                          child: ChoiceButton(
                            width: 60,
                            height: 60,
                            size: 25,
                            hasGradient: false,
                            color: Theme.of(context).primaryColorDark,
                            icon: Icons.clear_rounded,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // ignore: avoid_single_cascade_in_expression_statements
                            context.read<SwipeBloc>()
                              ..add(SwipeRightEvent(user: state.users[0]));
                            print("Swiped Right");
                          },
                          child: ChoiceButton(
                            width: 80,
                            height: 80,
                            size: 30,
                            hasGradient: true,
                            color: Colors.white,
                            icon: Icons.favorite,
                          ),
                        ),
                        ChoiceButton(
                          width: 60,
                          height: 60,
                          hasGradient: false,
                          size: 25,
                          color: Theme.of(context).primaryColor,
                          icon: Icons.watch_later,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return const Text('something went wrong.');
            }
          },
        ),
      ),
    );
  }
}
