// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

import 'package:arquitetura_flutter/app/core/viewmodels/change_theme_viewmodel.dart';

class HomeController extends ChangeNotifier {
  final ChangeThemeViewmodel changeThemeViewmodel;
  HomeController({
    required this.changeThemeViewmodel,
  });

  bool get isDark => changeThemeViewmodel.appConfigModel.themeSwitch.value;

  ValueNotifier<bool> get themeSwitch =>
      changeThemeViewmodel.appConfigModel.themeSwitch;

  init() async {
    await changeThemeViewmodel.init();
    notifyListeners();
  }
}