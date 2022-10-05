import 'package:flutter/material.dart';
import 'package:home_fac/ui/pages/home/widgets/customer_card_widget.dart';

class HomeCustomersView extends StatelessWidget {
  const HomeCustomersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: 27,
        bottom: 50,
      ),
      decoration: const BoxDecoration(
        color: Color(0XFFeff2fc),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              bottom: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Meus clientes',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(3),
                      margin: const EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(6))),
                      child: const Text('Todos'),
                    ),
                  ],
                ),
                Container(
                  child: const Text(
                    'Estes são os clientes com últimas atualizações',
                    style: TextStyle(
                      color: Color(0XFF6c7b95),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // const Divider(),
          ...List.generate(10, (index) => const CustomerCardWidget()),
        ],
      ),
    );
  }
}
