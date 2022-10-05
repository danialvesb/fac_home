import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/home_itens_widget.dart';

class HomeHeaderView extends StatelessWidget {
  const HomeHeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Image.network(
                    'https://randomuser.me/api/portraits/men/1.jpg',
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Orlando Lacerda',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Gerente',
                      style: TextStyle(
                        color: Color(0XFF697c9b),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                          color: Color(0XFF6ec691),
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: const Text(
                        '1200 pontos',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const SizedBox(
                      width: 40,
                      height: 40,
                      child: Icon(
                        size: 30,
                        FontAwesomeIcons.bell,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: -3,
                      child: Container(
                        width: 24,
                        height: 24,
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          color: Color(0XFF0091ff),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        child: const Text(
                          '2',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          HomeItensWidget(),
        ],
      ),
    );
  }
}
