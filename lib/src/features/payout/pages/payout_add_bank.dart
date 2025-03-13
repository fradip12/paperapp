import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/app_di.dart';
import '../../../core/app_router.gr.dart';
import '../../../domain/entity/ets_bank.dart';
import '../../../shared/components/display/global_text.dart';
import '../../../shared/components/interactive/global_button.dart';
import '../../../shared/components/interactive/global_textfield.dart';
import '../../../shared/extension/ext_dimens.dart';
import '../../../shared/extension/ext_misc.dart';
import '../managers/banks_bloc.dart';
import '../managers/payout_bloc.dart';

@RoutePage()
class PayoutAddBankPage extends StatefulWidget {
  const PayoutAddBankPage({super.key});

  @override
  State<PayoutAddBankPage> createState() => _PayoutAddBankPageState();
}

class _PayoutAddBankPageState extends State<PayoutAddBankPage> {
  late BanksBloc banksBloc;

  @override
  void initState() {
    super.initState();
    banksBloc = locator<BanksBloc>();
    banksBloc.add(const BanksEvent.load());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => banksBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const GlobalText.title(
            value: 'Tambah Rekening',
            color: Colors.white,
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<BanksBloc, BanksState>(
          builder: (context, state) {
            return SafeArea(
              child: Padding(
                padding: EdgeInsets.all(context.spacingMd),
                child: BlocBuilder<PayoutBloc, PayoutState>(
                  builder: (context, payoutState) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      spacing: context.spacingMd,
                      children: [
                        const GlobalText.label(
                          value: 'Bank Penerima',
                          fontWeight: FontWeight.bold,
                        ),
                        GlobalTextField(
                          hintText: 'Pilih bank penerima',
                          value: payoutState.selectedBank?.nama.orDefault,
                          isReadOnly: true,
                          suffixIcon: const Icon(Icons.keyboard_arrow_down),
                          onTap: () {
                            state.whenOrNull(
                              success: (banks) async {
                                final result = await context.pushRoute(
                                  ViewBanksListRoute(
                                    banks: state.maybeWhen(
                                      success: (banks) => banks,
                                      orElse: () => [],
                                    ),
                                  ),
                                ) as BankEts;
                                if (context.mounted) {
                                  context.read<PayoutBloc>().add(
                                        PayoutEvent.selectBank(result),
                                      );
                                }
                              },
                            );
                          },
                        ),
                        const GlobalText.label(
                          value: 'Nomor Rekening Penerima',
                          fontWeight: FontWeight.bold,
                        ),
                        GlobalTextField(
                          hintText: 'cth. 687654321',
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (value) {
                            context.read<PayoutBloc>().add(
                                PayoutEvent.selectBank(payoutState.selectedBank!
                                    .copyWith(accountNumber: value)));
                          },
                        ),
                        const GlobalText.label(
                          value: 'Nama Pemilik Rekening',
                          fontWeight: FontWeight.bold,
                        ),
                        GlobalTextField(
                          hintText: 'cth. Sunter',
                          onChanged: (value) {
                            context.read<PayoutBloc>().add(
                                PayoutEvent.selectBank(payoutState.selectedBank!
                                    .copyWith(accountName: value)));
                          },
                        ),
                        GlobalButton.filled(
                          onTap: () => context.maybePop(),
                          child: const GlobalText.label(
                            value: 'Simpan Rekening',
                            color: Colors.white,
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
