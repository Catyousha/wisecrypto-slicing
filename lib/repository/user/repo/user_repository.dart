import '../../../services/services.dart';
import '../models/models.dart';

class UserRepository {
  Future<User> getUser() async {
    final user = await UserServices.getUser();
    return user;
  }
}
