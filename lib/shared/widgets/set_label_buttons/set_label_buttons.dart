import 'package:flutter/material.dart';
import 'package:payflow/shared/widgets/divider_vertical/divider_vertical_widget.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryCb;
  final String secondaryLabel;
  final VoidCallback secondaryCb;
  const SetLabelButtons({
    Key? key,
    required this.primaryLabel,
    required this.primaryCb,
    required this.secondaryLabel,
    required this.secondaryCb,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: primaryLabel,
              onPressed: primaryCb,
            ),
          ),
          DividerVerticalWidget(),
          Expanded(
            child: LabelButton(
              label: secondaryLabel,
              onPressed: secondaryCb,
            ),
          ),
        ],
      ),
    );
  }
}
