import 'package:arquitetura_flutter/app/modules/home/presentation/controllers/user_controller.dart';
import 'package:flutter/material.dart';

import 'package:arquitetura_flutter/app/modules/home/models/user_model.dart';
import 'package:arquitetura_flutter/uikit/uikit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ConfirmDeleteUserModalWidget extends StatelessWidget {
  final UserModel userModel;
  ConfirmDeleteUserModalWidget({
    Key? key,
    required this.userModel,
  }) : super(key: key);
  final controller = Modular.get<UserController>();

  @override
  Widget build(BuildContext context) {
    return ModalDefault(
      title:
          "${AppLocalizations.of(context)!.title_confirm_delete} ${userModel.name}?",
      content: BodyText(
        text: AppLocalizations.of(context)!.text_confirm_delete,
      ),
      actions: [
        GroupModalButtons(
          back: AppLocalizations.of(context)!.cancel,
          next: AppLocalizations.of(context)!.confirm,
          onPressedBack: () => Navigator.of(context).pop(),
          onPressedNext: () {
            controller.deleteUser(userModel.id.toString());
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
