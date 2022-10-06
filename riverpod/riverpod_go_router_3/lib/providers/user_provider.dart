import 'package:riverpod/riverpod.dart';

import '../model/user_model.dart';

final userProvider = StateNotifierProvider<UserState, User>((ref) {
  return UserState();
});

class UserState extends StateNotifier<User> {
  UserState() : super(User(name: "kim", age: 25, gender: 'male'));
}
