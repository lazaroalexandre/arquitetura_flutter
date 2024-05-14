import 'package:arquitetura_flutter/app/modules/home/services/client/client_service.dart';
import 'package:arquitetura_flutter/app/modules/home/services/client/client_service_impl.dart';
import 'package:arquitetura_flutter/app/modules/home/presentation/controllers/user_controller.dart';
import 'package:arquitetura_flutter/app/modules/home/presentation/pages/home_page.dart';
import 'package:arquitetura_flutter/app/modules/home/repositories/user_repository.dart';
import 'package:arquitetura_flutter/app/modules/home/repositories/user_repository_impl.dart';
import 'package:arquitetura_flutter/app/modules/home/viewmodels/user_viewmodel.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  
  @override
  void binds(i) {
    i.addLazySingleton(UserController.new);
    i.addLazySingleton(UserViewmodel.new);
    i.addLazySingleton<UserRepository>(UserRepositoryImpl.new);
    i.addLazySingleton<ClientService>(ClientServiceImpl.new);
  }

  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      child: (_) => const HomePage(),
    );
  }
}
