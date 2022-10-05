import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeAppbarWidget extends StatelessWidget {
  const HomeAppbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(
              size: 20,
              FontAwesomeIcons.gear,
            ),
            const Spacer(),
            const Spacer(),
            const Text('Você está em:'),
            SizedBox(
              width: 28,
              height: 28,
              child: Image.asset('assets/images/facilita-icon.png'),
            )
          ],
        ),
      ],
    );
  }
}
