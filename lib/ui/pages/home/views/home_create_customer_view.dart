import 'package:flutter/material.dart';

class HomeCreateCustomerView extends StatelessWidget {
  const HomeCreateCustomerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFFeff2fc),
      padding: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 20,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        decoration: const BoxDecoration(
          color: Color(0XFFdde2f3),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Nenhum cliente aguardando atendimento.',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0XFF627aa0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Deseja cadastrar um agora?',
                  style: TextStyle(
                    color: Color(0XFF627aa0),
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {}, child: const Text('Cadastrar Cliente'))
          ],
        ),
      ),
    );
  }
}
