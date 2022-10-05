import 'package:flutter/material.dart';
import 'package:home_fac/ui/pages/home/widgets/product_item_widget.dart';

import '../widgets/text_form_field_product_widget.dart';

class HomeProductsView extends StatelessWidget {
  const HomeProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'Empreendimentos',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.only(
                  top: 2,
                  right: 10,
                  bottom: 0,
                  left: 10,
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color(0XFF5a6f92),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: const Text(
                  'Todos',
                  style: TextStyle(
                    color: Color(0XFF2b3950),
                  ),
                ),
              )
            ],
          ),
          const Text(
            'Encontre imóvel ideal para o seu cliente.',
            style: TextStyle(
              color: Color(0XFF697c9b),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          const TextFormFieldProductWidget(),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            width: double.infinity,
            height: 280,
            child: ListView.builder(
              itemCount: 10,
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) => const ProductItemWidget()),
            ),
          ),
        ],
      ),
    );
  }
}
