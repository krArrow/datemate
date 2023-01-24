// ignore_for_file: prefer_const_constructors

import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final int age;
  final String gender;
  final String location;
  final List<String> interests;
  // final String email;
  // final String password;
  // final String profileImage;
  final List<String> imageUrls;
  final String bio;
  // final Map<String, dynamic> preferences;
  // final bool match;
  // final DateTime lastActive;

  const User({
    required this.imageUrls,
    required this.id,
    required this.name,
    required this.age,
    required this.gender,
    required this.bio,
    required this.location,
    required this.interests,
    //  required this.email,
    //  required this.password,
    //  required this.profileImage,
    //  required this.preferences,
    //  required this.match,
    //  required this.lastActive,
  });

  @override
  List<Object> get props => [
        id,
        name,
        age,
        gender,
        bio,
        location,
        // email,
        // password,
        // profileImage,
        // preferences,
        // match,
        // lastActive
      ];
  static List<User> users = [
    User(
        imageUrls: [
          "https://i.pinimg.com/736x/9f/3e/e7/9f3ee71ffe58a25e543afa909c0d6c96.jpg"
        ],
        id: 1,
        name: "Daina Flair",
        age: 28,
        gender: "F",
        bio: "Swipe Right if you're crazy like me !",
        location: 'Ludhiyana, Punjab',
        interests: ['Music','Hiking', 'Dance','Badminton'],
        ),
    User(
        imageUrls: ["https://i.imgur.com/ncaiZdb.jpeg"],
        id: 2,
        name: "Monalika",
        interests: ['Music','Hiking', 'Dance','Badminton'],
        age: 18,
        gender: "F",
        bio: "Swipe Right if you're crazy like me",
        location: 'Jalandhar, Punjab'),
    User(
        imageUrls: ["https://i.imgur.com/kInVdvG.png"],
        id: 3,
        name: "Mehak",
        age: 23,
        gender: "F",
        bio: "I am BORING :/",
        location: 'Phagwara, Punjab',
        interests: ['Music','Hiking', 'Dance','Badminton'],
       ),
    User(
        imageUrls: ["https://i.imgur.com/dMapiub.jpeg"],
        id: 4,
        name: "Aditi",
        age: 28,
        gender: "F",
        bio: "It is very diffcult to explain the BIO, I am a maths student no!",
        interests: ['Music','Hiking', 'Dance','Badminton'],
        location: 'Hardaspur, Punjab'),
    // ignore: prefer_const_constructors
    User(
        imageUrls: ["https://i.imgur.com/8vpzAmK.jpeg"],
        id: 5,
        name: "Roshni",
        age: 28,
        gender: "F",
        interests: ['Music','Hiking', 'Dance','Badminton'],
        bio: "Love me like you're ex.",
        location: 'Hosiyarpur, Punjab'),
    User(
        imageUrls: ["https://i.imgur.com/VYM6zd0.jpeg"],
        id: 6,
        name: "Ruby",
        interests: ['Music','Hiking', 'Dance','Badminton'],
        age: 28,
        gender: "F",
        bio: "DM for Free Service babessss !!!!",
        location: 'Jalandhar City, Punjab'),
  ];
}
