import 'package:datemate/config/theme.dart';
import 'package:datemate/models/models.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class UserScreen extends StatelessWidget {
  static const String routeName = '/users';
  final User user;

  static Route route({required User user}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: ((context) => UserScreen(user:user)),
    );
  }
  const UserScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: NetworkImage(User.users[0].imageUrls[0]),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ChoiceButton(
                          color: Theme.of(context).colorScheme.secondary,
                          icon: Icons.clear_rounded,
                        ),
                        ChoiceButton(
                            width: 80,
                            height: 80,
                            size: 40,
                            color: Colors.white,
                            icon: Icons.favorite,
                            hasGradient: true),
                        ChoiceButton(
                          color: Theme.of(context).primaryColor,
                          icon: Icons.watch_later,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 8.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name}, ${user.age}',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  '${user.location}',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                ),
                SizedBox(height: 10),
                Text(
                  'About',
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  '${user.bio}',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(height: 2),
                ),
                SizedBox(height: 10),
                Text(
                  'Interest',
                  style: Theme.of(context).textTheme.headline5,
                ),
                Row(
                  children: user.interests
                      .map(
                        (interest) => Container(
                          padding: const EdgeInsets.all(6.0),
                          margin: const EdgeInsets.only(top: 5.0, right: 8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: LinearGradient(colors: [
                                Theme.of(context).primaryColor,
                                Color.fromARGB(255, 208, 211, 211),
                              ])),
                          child: Text(
                            interest,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      )
                      .toList(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
