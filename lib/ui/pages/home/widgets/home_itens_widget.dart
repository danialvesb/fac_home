import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeItensWidget extends StatelessWidget {
  HomeItensWidget({Key? key}) : super(key: key);

  final homeItens = [
    {
      'icon': FontAwesomeIcons.rectangleList,
      'label': 'Funil de vendas',
    },
    {
      'icon': FontAwesomeIcons.circleUser,
      'label': 'Clientes',
    },
    {
      'icon': FontAwesomeIcons.grip,
      'label': 'Reservas',
    },
    {
      'icon': FontAwesomeIcons.fileContract,
      'label': 'Propostas',
    },
    {
      'icon': FontAwesomeIcons.circleCheck,
      'label': 'Tarefas',
    },
    {
      'icon': FontAwesomeIcons.building,
      'label': 'Empreendimentos',
    },
    {
      'icon': FontAwesomeIcons.mugHot,
      'label': 'Novidades',
    },
    {
      'icon': FontAwesomeIcons.trophy,
      'label': 'Pontos',
    },
    {
      'icon': FontAwesomeIcons.handHolding,
      'label': 'Resgates',
    },
    {
      'icon': FontAwesomeIcons.gift,
      'label': 'Prêmios',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 105,
      padding: const EdgeInsets.only(top: 15, left: 15, bottom: 0, right: 15),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...List.generate(homeItens.length, (index) {
            return Container(
              margin: const EdgeInsets.only(right: 7),
              width: 111,
              height: 90,
              padding:
                  const EdgeInsets.only(top: 5, right: 0, bottom: 5, left: 12),
              decoration: const BoxDecoration(
                color: Color(0XFF2b3950),
                borderRadius: BorderRadius.all(
                  Radius.circular(7),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    homeItens[index]['icon'] as IconData,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    homeItens[index]['label'] as String,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
