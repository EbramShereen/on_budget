import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_budget/src/utils/components/button.dart';
import 'package:on_budget/src/utils/components/failure_dialouge.dart';
import 'package:on_budget/src/utils/components/waiting_progress_loader.dart';
import 'package:on_budget/src/utils/helper/constants/colors.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import '../../../../home/views/home.dart';
import '../../../../../data/repository/register/customer/customer_repository.dart';
import '../../../../../data/service/register/customer/customer_service.dart';
import '../../../../../logic/register/customer/customer_cubit.dart';
import '../../../../../logic/register/customer/customer_state.dart';
import '../../account_created/views/account_created.dart';
import '../widgets/sign_up_form_for_customer.dart';
import '../../../../../utils/components/leading_icon.dart';

class SignUpForCustomer extends StatefulWidget {
  const SignUpForCustomer({super.key});
  static String id = 'SignUpWithEmailForCustomer';

  @override
  State<SignUpForCustomer> createState() => _SignUpForCustomerState();
}

class _SignUpForCustomerState extends State<SignUpForCustomer> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CustomerCubit(CustomerRepository(CustomerService())),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sign Up'),
          leading: const LeadingIcon(),
        ),
        body: BlocConsumer<CustomerCubit, CustomerStates>(
          listener: (context, state) {
            if (state is CustomerWaiting) {
              const WaitingProgressLoader();
            } else if (state is CustomerSuccess) {
              Navigator.pushNamed(context, AccountCreated.id,
                  arguments: state.id);
            } else if (state is CustomerFailure) {
              showDialog(
                  context: context,
                  builder: (context) => const FailureDialouge());
            }
          },
          builder: (context, state) {
            return SignUpFormforCustomer();
          },
        ),
      ),
    );
  }
}
