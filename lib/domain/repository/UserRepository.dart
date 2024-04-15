import 'package:sample_project/data/datasource/UserDataSource.dart';

import '../../data/model/User.dart';

class UserRepository {
  final UserDataSource userDataSource;

  UserRepository(this.userDataSource);

  Future<User> getUser({required String name}) async {
    try {
      return await userDataSource.getUser(name: name);
    } catch (e) {
      print(e);
      throw Exception("Failed to getUser for repository");
    }
  }
}