import 'package:complex_ui_assignment/screens/premium_screen/premium_page_widget/premium_plans_widget.dart';
import 'package:complex_ui_assignment/screens/premium_screen/premium_page_widget/premium_conformation_box.dart';
import 'package:flutter/material.dart';

class PremiumPageTile extends StatelessWidget {
  const PremiumPageTile({
    super.key,
    required this.boxColor,
    required this.rate,
    required this.month,
  });

  final Color boxColor;
  final double rate;
  final String month;

  Future<void> _showDialogBox(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return PremiumConformationBox(month: month);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showDialogBox(context);
      },
      child: Container(
        height: 280,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: boxColor),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: PremiumPlansWidget(rate: rate, month: month),
          ),
        ),
      ),
    );
  }
}
