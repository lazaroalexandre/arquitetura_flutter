import 'package:arquitetura_flutter/app/presentation/home/controllers/home_controller.dart';
import 'package:arquitetura_flutter/app/presentation/home/controllers/user_controller.dart';
import 'package:arquitetura_flutter/app/presentation/home/pages/home_page.dart';
import 'package:arquitetura_flutter/app/repositories/user_repository.dart';
import 'package:arquitetura_flutter/app/repositories/user_repository_impl.dart';
import 'package:arquitetura_flutter/app/services/client/client_service.dart';
import 'package:arquitetura_flutter/app/services/client/client_service_impl.dart';
import 'package:arquitetura_flutter/app/services/local/local_store_service.dart';
import 'package:arquitetura_flutter/app/services/local/local_store_service_impl.dart';
import 'package:arquitetura_flutter/app/viewmodels/change_theme_viewmodel.dart';
import 'package:arquitetura_flutter/app/viewmodels/user_viewmodel.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModuler extends Module {

  @override
  void binds(i) {
    i.addSingleton(UserController.new);
    i.addSingleton(UserViewmodel.new);
    i.addSingleton<UserRepository>(UserRepositoryImpl.new);
    i.addSingleton<ClientService>(ClientServiceImpl.new);

    i.addSingleton(HomeController.new);
    i.addSingleton(ChangeThemeViewmodel.new);
    i.addSingleton<LocalStoreService>(LocalStoreServiceImpl.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
  }
}
