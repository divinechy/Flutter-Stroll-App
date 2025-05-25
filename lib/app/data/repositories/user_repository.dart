import 'dart:async';

import 'package:stroll_app/app/data/models/user.dart';
import 'package:stroll_app/app/theme/images.dart';

class UserRepository {
  Future<User> fetchCurrentUser() async {
    await Future.delayed(Duration(seconds: 1));
    return User.fromJson({
      'name': 'Angelina',
      'dob': '1992-12-10',
      'avatarUrl': ACTOR,
      'question': 'What is your favorite time\n of the day?',
      'answer': 'Mine is definitely the peace in the morning.',
    });
  }

  Future<List<User>> fetchUsers() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      {
        'name': 'Grace',
        'dob': '1912-06-23',
        'avatarUrl': '',
        'question': 'How do you like your salads?',
        'answer': 'I like them with a lot of dressing.',
      },
      {
        'name': 'Bugzy',
        'dob': '1906-12-09',
        'avatarUrl': '',
        'question': 'Who is your mentor?',
        'answer': 'My mentor is my Bill Gates',
      },
    ].map((json) => User.fromJson(json)).toList();
  }
}
