import 'package:arquitetura_flutter/app/modules/home/presentation/controllers/home_controller.dart';
import 'package:arquitetura_flutter/app/core/services/local/local_store_service.dart';
import 'package:arquitetura_flutter/app/core/services/local/local_store_service_impl.dart';
import 'package:arquitetura_flutter/app/core/viewmodels/change_theme_viewmodel.dart';
import 'package:arquitetura_flutter/app/modules/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addSingleton(HomeController.new);
    i.addSingleton(ChangeThemeViewmodel.new);
    i.addSingleton<LocalStoreService>(LocalStoreServiceImpl.new);
  }

  @override
  void routes(r) {
    r.module(Modular.initialRoute, module: HomeModule());
  }
}
