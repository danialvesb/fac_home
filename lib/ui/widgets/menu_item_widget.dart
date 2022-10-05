import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuItemWidget extends StatelessWidget {
  dynamic item;

  MenuItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        item['title'],
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        item['subtitle'],
                        style: const TextStyle(
                          color: Color(0XFF8d9aad),
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const Positioned(
                right: 0,
                child: FaIcon(
                  FontAwesomeIcons.arrowRight,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        const Divider(
          color: Color(0XFF3f4d64),
        ),
      ],
    );
  }
}
