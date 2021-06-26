import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/boleto_list/boleto_list_controller.dart';
import 'package:payflow/shared/widgets/boleto_list/boleto_list_widget.dart';

class MeuExtratoPage extends StatefulWidget {
  const MeuExtratoPage({Key? key}) : super(key: key);

  @override
  _MeuExtratoPageState createState() => _MeuExtratoPageState();
}

class _MeuExtratoPageState extends State<MeuExtratoPage> {
  final controller = BoletoListController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Row(
                  children: [
                    Text(
                      'Meu extrato',
                      style: TextStyles.titleBoldHeading,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Divider(
                  thickness: 1,
                  height: 1,
                  color: AppColors.stroke,
                ),
              ),
              BoletoListWidget(
                controller: controller,
              )
            ],
          ),
        ),
      ],
    );
  }
}
