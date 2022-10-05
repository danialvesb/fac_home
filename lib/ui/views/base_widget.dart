import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_fac/ui/cubit/app_cubit.dart';
import 'dart:math' as math;

class BaseWidget extends StatelessWidget {
  Widget? child;

  BaseWidget({required this.child});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return ElevatedButton(
            onPressed: () {
              context.read<AppCubit>().toogle();
            },
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(0),
                tapTargetSize: MaterialTapTargetSize.padded,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)))),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: !state.showModal ? 130 : 60,
              height: 60,
              decoration: const BoxDecoration(
                // color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AnimatedRotation(
                          duration: const Duration(milliseconds: 200),
                          turns: (state.showModal ? 7 : 0) * (math.pi / 180.0),
                          child: Container(
                            // margin: const EdgeInsets.only(right: 1),
                            height: 2,
                            width: 20,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        if (!state.showModal)
                          const SizedBox(
                            height: 4,
                          ),
                        if (!state.showModal)
                          Container(
                            height: 2,
                            width: 15,
                            margin: const EdgeInsets.only(bottom: 5),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                        AnimatedRotation(
                          duration: const Duration(milliseconds: 200),
                          turns: (state.showModal ? -6 : 0) * (math.pi / 180.0),
                          child: Container(
                            height: 2,
                            width: 20,
                            margin: const EdgeInsets.only(left: 1),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  if (!state.showModal)
                    const Text(
                      'Menu',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
      body: Stack(
        children: [
          child ?? Container(),
        ],
      ),
    );
  }
}
