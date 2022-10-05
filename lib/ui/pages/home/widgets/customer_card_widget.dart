import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomerCardWidget extends StatelessWidget {
  const CustomerCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      width: double.infinity,
      height: 127,
      child: Stack(
        children: [
          Column(
            children: [
              const Divider(),
              Row(
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: const Color(0XFF2f87de),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                    ),
                    child: const Text(
                      'Facebook',
                      style: TextStyle(color: Color(0XFF2f87de)),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: const Color(0XFF2f87de),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                    ),
                    child: const Text(
                      'Em atendimento',
                      style: TextStyle(color: Color(0XFF2f87de)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Text(
                    'Eduardo Pereira da Cruz',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 8,
                  ),
                  FaIcon(
                    FontAwesomeIcons.clock,
                    size: 10,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text('1 dia'),
                ],
              )
            ],
          ),
          Positioned(
              top: 50,
              right: 0,
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                    color: Color(0XFF6ec691),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: const Center(
                  child: FaIcon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.white,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
