import 'package:flutter/material.dart';

class HomeTaskView extends StatelessWidget {
  const HomeTaskView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Você tem',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            padding: const EdgeInsets.all(2),
            color: const Color(0XFFff6492),
            child: const Text(
              '3',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          const Text(
            'tarefas pendentes',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
