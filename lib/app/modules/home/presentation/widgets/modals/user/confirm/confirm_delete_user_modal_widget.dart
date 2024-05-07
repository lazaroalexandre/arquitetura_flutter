// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:arquitetura_flutter/app/modules/home/presentation/controllers/user_controller.dart';
import 'package:flutter/material.dart';

import 'package:arquitetura_flutter/app/modules/home/models/user_model.dart';
import 'package:arquitetura_flutter/app/uikit/uikit.dart';
import 'package:flutter_getit/flutter_getit.dart';

class ConfirmDeleteUserModalWidget extends StatelessWidget {
  final UserModel userModel;
  ConfirmDeleteUserModalWidget({
    Key? key,
    required this.userModel,
  }) : super(key: key);
  final controller = Injector.get<UserController>();

  @override
  Widget build(BuildContext context) {
    return SmallModal(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SuperTitleText(
                text:
                    "Tem certeza que deseja apagar o contato de ${userModel.name}?",
              ),
              const MediumSpace(),
              const BodyText(
                  text:
                      "Ao confirmar, todos os dados do contato serão apagados!\nSe você não tiver certeza no que está prestes a fazer, clique em cancelar, por favor."),
            ],
          ),
          GroupModalButtons(
            back: "Cancelar",
            next: "Confirmar",
            onPressedBack: () => Navigator.of(context).pop(),
            onPressedNext: () {
              controller.deleteUser(userModel.id.toString());
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}