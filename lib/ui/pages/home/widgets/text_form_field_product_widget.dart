import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextFormFieldProductWidget extends StatelessWidget {
  const TextFormFieldProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextFormField(
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0XFFe9edfd),
                hintText: 'Buscar empreendimentos',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                    ),
                    borderSide: BorderSide.none),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              ),
              strutStyle: const StrutStyle(),
              style: const TextStyle(
                  // background: Color(0XFFe9edfd),
                  // backgroundColor: Color(0XFFe9edfd),
                  ),
            ),
          ),
          Container(
            width: 55,
            height: 55,
            decoration: const BoxDecoration(
              color: Color(0XFF2b3950),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
            ),
            child: const Icon(
              FontAwesomeIcons.sliders,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
