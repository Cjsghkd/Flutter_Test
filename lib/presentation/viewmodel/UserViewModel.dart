import 'package:flutter/cupertino.dart';
import 'package:sample_project/data/model/User.dart';
import 'package:sample_project/domain/usecase/user/GetUserUseCase.dart';

class UserViewModel with ChangeNotifier {
  final GetUserUseCase getUserUseCase;
  User user = User.empty();

  UserViewModel(this.getUserUseCase);

  Future<void> getUser({required String name}) async {
    try {
      user = await getUserUseCase.getUser(name: name);
      notifyListeners();
    } catch (e) {
      print("Failed to getUser for viewModel : $e");
      notifyListeners();
    }
  }
}