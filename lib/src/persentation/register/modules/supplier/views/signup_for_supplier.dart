import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_budget/src/logic/register/supplier/supplier_states.dart';

import '../../../../../data/repository/register/supplier/supplier_repository.dart';
import '../../../../../data/service/register/supplier/supplier_service.dart';
import '../../../../../logic/register/supplier/supplier_cubit.dart';
import '../widgets/sign_up_form_for_supplier.dart';

class SignUpForSupplier extends StatefulWidget {
  const SignUpForSupplier({super.key});
  static String id = 'SignUpForSupplier';

  @override
  State<SignUpForSupplier> createState() => _SignUpWithEmailState();
}

class _SignUpWithEmailState extends State<SignUpForSupplier> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SupplierCubit(
          supplierRepository:
              SupplierRepository(supplierService: SupplierService())),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sign Up'),
        ),
        body: BlocConsumer<SupplierCubit, SupplierStates>(
          listener: (context, state) {
            if (state is SupplierWaiting) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Loading...'),
                ),
              );
            } else if (state is SupplierFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.exception.toString()),
                ),
              );
            } else if (state is SupplierSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('success'),
                ),
              );
            }
          },
          builder: (context, state) {
            return SignUpFormforSupplier();
          },
        ),
      ),
    );
  }
}
