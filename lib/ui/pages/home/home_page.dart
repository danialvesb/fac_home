import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_fac/ui/cubit/app_cubit.dart';
import 'package:home_fac/ui/pages/home/cubit/home_cubit.dart';
import 'package:home_fac/ui/pages/home/views/home_actions_view.dart';
import 'package:home_fac/ui/pages/home/views/home_create_customer_view.dart';
import 'package:home_fac/ui/pages/home/views/home_customers_view.dart';
import 'package:home_fac/ui/pages/home/views/home_header_view.dart';
import 'package:home_fac/ui/pages/home/views/home_task_view.dart';
import 'package:home_fac/ui/pages/home/widgets/home_appbar_widget.dart';
import 'package:home_fac/ui/views/fac_menu_view_ui.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../views/appbar_view_ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppCubit, AppState>(
      listener: ((context, state) {
        // print(state.showModal);
        if (state.showModal == true) {
          showMaterialModalBottomSheet(
            clipBehavior: Clip.hardEdge,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            context: context,
            builder: (context) => FacMenuViewUi(),
          );
        } else {
          Navigator.of(context).pop();
        }
      }),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Container(
              clipBehavior: Clip.none,
              color: const Color(0XFF2b3950),
              child: Column(
                children: [
                  AppbarViewUi(
                    height: 50,
                    width: double.infinity,
                    child: const HomeAppbarWidget(),
                  ),
                  const HomeHeaderView(),
                  const HomeTaskView(),
                  BlocProvider(
                    create: (context) => HomeCubit(),
                    child: HomeActionsView(
                      isFull: false,
                      padding: const EdgeInsets.only(
                          top: 40, right: 15, bottom: 45, left: 15),
                    ),
                  ),
                  // const HomeProductsView(),
                  const HomeCustomersView(),
                  const HomeCreateCustomerView(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
