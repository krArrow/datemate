import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

final theme = ThemeData(
    primaryColor: Colors.blue,
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline2: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline3: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline4: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline5: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      subtitle1: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Arial'),
    ),
    buttonTheme: ButtonThemeData(
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        height: 50.0,
        minWidth: 150.0),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green));

// ThemeData lightTheme() {
//   TextTheme _basicTextTheme(TextTheme base) {
//     return base.copyWith(
//       headline1: base.headline1!.copyWith(
//         fontSize: 72.0,
//         fontWeight: FontWeight.bold,
//         fontFamily: 'Lato',
//         color: Colors.white,
//       ),
//       headline6: base.headline6!.copyWith(
//         fontSize: 23.0,
//         fontFamily: 'Lato',
//       ),
//       bodyText2: base.bodyText2!.copyWith(
//         fontSize: 16.0,
//         fontFamily: 'Lato',
//         color: Colors.deepPurple[300],
//       ),
//       headline4: base.headline4!.copyWith(
//         fontSize: 18.0,
//         fontFamily: 'Lato',
//         color: Colors.deepPurple[600],
//       ),
//       headline5: base.headline4!.copyWith(
//         fontSize: 18.0,
//         fontFamily: 'Lato',
//         color: Colors.deepPurple[50],
//         //buttons
//       ),
//       caption: base.headline5!.copyWith(
//         fontSize: 12.0,
//         fontFamily: 'Lato',
//       ),
//       bodyText1: base.bodyText1!.copyWith(
//         color: Colors.deepPurple[300],
//         fontSize: 14,
//       ),
//     );
//   }

//   final ThemeData base = ThemeData.light();
//   return base.copyWith(
//       textTheme: _basicTextTheme(base.textTheme),
//       primaryColor: Colors.deepPurple[300],
//       iconTheme: IconThemeData(
//         color: Colors.deepPurple[300],
//         size: 20.0,
//       ),
//       buttonTheme: ButtonThemeData(
//         buttonColor: Colors.deepPurple[300],
//         shape: RoundedRectangleBorder(),
//         textTheme: ButtonTextTheme.primary,
//       ),
//       sliderTheme: SliderThemeData(
//         activeTrackColor: Colors.deepPurple[300],
//         overlayColor: Colors.deepPurple[300]!.withAlpha(32),
//         thumbColor: Colors.deepPurple[300],
//       ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.deepPurple[300]),
//       );
// }