import 'package:sample_project/data/model/User.dart';
import 'package:sample_project/data/util/DioService.dart';

class UserDataSource {
  final DioServices _dioServices = DioServices();

  Future<User> getUser({required String name}) async {
    try {
      final response = await _dioServices.dio.get(
          "/search/users",
          queryParameters: { 'q': name }
      );
      return User.fromJson(response.data);
    } catch (e) {
      print(e);
      throw Exception("Failed to getUser for dataSource");
    }

  }
}