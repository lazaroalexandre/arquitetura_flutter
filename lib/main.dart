import 'package:arquitetura_flutter/app/app_moduler.dart';
import 'package:flutter/material.dart';
import 'app/app_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() => runApp(ModularApp(module: AppModuler(), child: const AppWidget(),));
