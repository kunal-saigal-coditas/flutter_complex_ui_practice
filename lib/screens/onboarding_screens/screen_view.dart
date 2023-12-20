import 'package:complex_ui_assignment/core/theme/buildcontext_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenView extends StatelessWidget {
  const ScreenView({super.key, required this.imageUrl, required this.text});
  final String text;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 570.h,
            left: 0,
            right: 0,
            child: Container(
              height: 350.h,
              padding: const EdgeInsets.only(
                top: 30,
                left: 16,
                right: 16,
              ),
              decoration: BoxDecoration(
                color: context.appColors.background,
                borderRadius: BorderRadius.circular(
                  55,
                ),
              ),
              child: Column(
                children: [
                  Flexible(
                    child: Text(
                      text,
                      style: context.appTextTheme.titleTextStyle.copyWith(
                        color: context.appColors.onBackground,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
