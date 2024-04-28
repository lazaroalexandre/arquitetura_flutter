import 'package:arquitetura_flutter/app/modules/home/models/user_model.dart';

abstract interface class UserRepository {
  Future<List<UserModel>> getUsers();
}
