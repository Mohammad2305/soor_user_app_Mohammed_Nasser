import 'package:flutter/material.dart';
import '../../../../../../../core/const/colors.dart';

class PolicyCheckBox extends StatefulWidget {
  const PolicyCheckBox({super.key});

  @override
  State<PolicyCheckBox> createState() => _PolicyCheckBoxState();
}

class _PolicyCheckBoxState extends State<PolicyCheckBox> {
  bool agreementPolicy = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: Color(0xff2D9EC4),
      checkboxScaleFactor: 1.5,
      controlAffinity: ListTileControlAffinity.leading,
      contentPadding: EdgeInsets.zero,
      title: Row(
        children: [
          Text(
            "Agree service terms and ",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          TextButton(
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            onPressed: () {},
            child: Text(
              "privacy policy",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.mainColor,
              ),
            ),
          ),
        ],
      ),
      value: agreementPolicy,
      onChanged: (val) {
        setState(() {
          agreementPolicy = val! ;
        });
      },
    );

  }
}
