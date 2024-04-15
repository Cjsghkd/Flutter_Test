import 'package:sample_project/domain/repository/UserRepository.dart';
import '../../../data/model/User.dart';

class GetUserUseCase {
  final UserRepository userRepository;

  GetUserUseCase(this.userRepository);

  Future<User> getUser({required String name}) async {
    try {
      return await userRepository.getUser(name: name);
    } catch (e) {
      print(e);
      throw Exception("Failed to getUser for useCase");
    }
  }
}