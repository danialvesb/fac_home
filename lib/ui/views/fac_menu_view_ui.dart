import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_fac/ui/widgets/menu_item_widget.dart';

class FacMenuViewUi extends StatelessWidget {
  FacMenuViewUi({Key? key}) : super(key: key);

  List itens = [
    {
      'title': 'Home',
      'subtitle': 'Acesso rápido aos principais recursos do app.',
    },
    {
      'title': 'Funil de Vendas',
      'subtitle': 'Todas as etapas da jornada do seu cliente.',
    },
    {
      'title': 'Empreendimentos',
      'subtitle': 'Informações, fotos e tabela de preço.',
    },
    {
      'title': 'Reservas',
      'subtitle': 'Evite venda duplicadas.',
    },
    {
      'title': 'Propostas',
      'subtitle': 'Envie e acompanhe todos os status.',
    },
    {
      'title': 'Tarefas',
      'subtitle': 'Organize seu dia de trabalho.',
    },
    {
      'title': 'Novidades',
      'subtitle': 'Fique ligado em tudo que acontece.',
    },
    {
      'title': 'Pontos',
      'subtitle': 'Seu extrato de pontos.',
    },
    {
      'title': 'Prêmios',
      'subtitle': 'Veja os prêmios disponível para resgate.',
    },
  ];

  List settingItem = [
    {
      'label': 'Editar meu Perfil',
    },
    {
      'label': 'Alterar foto do Perfil',
    },
    {
      'label': 'Personalizações',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .9,
      decoration: const BoxDecoration(
        color: Color(0XFF2b3950),
      ),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Color(0XFF2b3950),
        ),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Bem vindo.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ...List.generate(
                itens.length,
                (index) => MenuItemWidget(item: itens[index]),
              ).toList(),
              Container(
                padding: const EdgeInsets.only(
                    top: 40, left: 15, right: 14, bottom: 40),
                decoration: const BoxDecoration(
                  color: Color(0XFFebeefa),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                // child: HomeActionsView(
                //   isFull: true,
                //   padding: const EdgeInsets.all(0),
                // ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                    top: 30, right: 20, bottom: 80, left: 20),
                decoration: const BoxDecoration(
                  color: Color(0XFFd2d8f0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Configurações',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ...List.generate(
                      settingItem.length,
                      (index) => Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, .7),
                        ),
                        child: Row(
                          children: [
                            Text(settingItem[index]['label']),
                            const Spacer(),
                            const FaIcon(FontAwesomeIcons.angleRight)
                          ],
                        ),
                      ),
                    ).toList(),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                padding: const EdgeInsets.only(
                    top: 20, right: 30, bottom: 40, left: 30),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned.fill(
                      top: -40,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: const Center(
                            child: FaIcon(
                              FontAwesomeIcons.solidHeart,
                              color: Color(0XFFde678b),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Avaliar Aplicativo'),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              'Você gosta do APP Facilita? ',
                              style: TextStyle(
                                color: Color(0XFF0091ff),
                              ),
                            )
                          ],
                        ),
                        Wrap(
                          children: const [
                            Text(
                              'Deixe seu comentário na loja e ajude-nos a crescer ainda mais.',
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              backgroundColor: Colors.white),
                          onPressed: () {},
                          child: const Text(
                            'Avaliar no Google Play',
                            style: TextStyle(
                              color: Color(0XFF0091ff),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
