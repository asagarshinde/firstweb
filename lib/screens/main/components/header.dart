import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:first_web/controllers/menu_controller.dart';
import '../../../constants.dart';
import '../../../responsive.dart';
import 'web_menu.dart';

class Header extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kDarkBlackColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "CloudEthix",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40
                        ),
                      ),
                      const Spacer(),
                      WebMenu()
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
