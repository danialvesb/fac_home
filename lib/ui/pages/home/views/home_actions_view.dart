import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_fac/ui/pages/home/cubit/home_cubit.dart';

class HomeActionsView extends StatelessWidget {
  bool isFull;
  EdgeInsets padding;

  HomeActionsView({super.key, required this.isFull, required this.padding});
  final homeActionsItens = [
    {
      'icon': FontAwesomeIcons.grip,
      'label': 'Solicitar reserva',
    },
    {
      'icon': FontAwesomeIcons.addressCard,
      'label': 'Enviar pasta digital',
    },
    {
      'icon': FontAwesomeIcons.calculator,
      'label': 'Enviar proposta',
    },
    {
      'icon': FontAwesomeIcons.circleUser,
      'label': 'Cadastrar cliente',
    },
    {
      'icon': FontAwesomeIcons.circleCheck,
      'label': 'Criar tarefa',
    },
    {
      'icon': FontAwesomeIcons.comment,
      'label': 'Novo atendimento',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          isFull ? const EdgeInsets.all(0) : const EdgeInsets.only(bottom: 50),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            padding: padding,
            decoration: const BoxDecoration(
              color: Color(0XFFebeefa),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: const Text(
                    'O que você deseja fazer?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) => AnimatedContainer(
                    width: double.infinity,
                    duration: const Duration(milliseconds: 200),
                    height: state.showActions ? 210 : 100,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(),
                    // color: ,
                    child: Center(
                      child: Wrap(
                        spacing: 7,
                        runSpacing: 7,
                        children: [
                          ...List.generate(homeActionsItens.length, (index) {
                            return Container(
                              width: 100,
                              height: 100,
                              padding: const EdgeInsets.only(
                                  top: 13, right: 0, bottom: 5, left: 12),
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      color: Color(0XFF0091ff),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50),
                                      ),
                                    ),
                                    child: Icon(
                                      homeActionsItens[index]['icon']
                                          as IconData,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    homeActionsItens[index]['label'] as String,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            );
                          }).toList(),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          if (!isFull)
            Positioned(
              bottom: -17,
              child: SvgPicture.asset('assets/images/rounded.svg'),
            ),
          if (!isFull)
            Positioned(
              bottom: -14,
              child: GestureDetector(
                onTap: () {
                  log('oi');
                  BlocProvider.of<HomeCubit>(context).toggle();
                },
                child: const SizedBox(
                  width: 20,
                  height: 20,
                  child: Center(
                    child: Icon(
                      FontAwesomeIcons.angleDown,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
