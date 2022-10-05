import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 280,
      margin: const EdgeInsets.only(
        right: 10,
      ),
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Stack(
        children: [
          Image.network(
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              'https://www.opus.inc/main/uploads/2022_07/images/resized/fotos_geo_home6[1920x1080].jpg'),
          Container(
            width: 240,
            height: 84,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.transparent,
                  Color(0XFF1b2535),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 240,
              height: 84,
              decoration: const BoxDecoration(
                color: Colors.blue,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Color(0XFF1b2535),
                  ],
                ),
              ),
            ),
          ),
          Container(
              width: double.infinity,
              height: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.white,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                        ),
                        child: const Text(
                          'Lancamento',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Color(0XFF0091ff),
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                        ),
                        child: const Text(
                          'Apartamento',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Text(
                        'Oasis Laguna',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.locationPin,
                            color: Colors.white,
                            size: 12,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Oasis Laguna',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
