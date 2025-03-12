import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/app_di.dart';
import '../managers/accounts_bloc.dart';
import '../../../shared/assets/colors.gen.dart';
import '../../../shared/components/interactive/global_textfield.dart';
import '../../../shared/extension/ext_dimens.dart';
import '../../../shared/extension/ext_theme.dart';
import '../widgets/payout_account_card.dart';

@RoutePage()
class PayoutPartnerSelectionPage extends StatefulWidget {
  const PayoutPartnerSelectionPage({super.key});

  @override
  State<PayoutPartnerSelectionPage> createState() =>
      _PayoutPartnerSelectionPageState();
}

class _PayoutPartnerSelectionPageState
    extends State<PayoutPartnerSelectionPage> {
  late AccountsBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = locator<AccountsBloc>();
    bloc.add(const AccountsEvent.load());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Pilih Mitra'),
        ),
        body: Padding(
          padding: EdgeInsets.all(context.spacingMd),
          child: Column(
            spacing: context.spacingMd,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GlobalTextField(
                hintText: 'Cari Mitra Anda',
                prefixIcon: const Icon(Icons.search),
                onChanged: (value) {
                  if (value?.isEmpty ?? false) {
                    bloc.add(const AccountsEvent.load());
                    return;
                  }
                  bloc.add(AccountsEvent.search(value!));
                },
              ),
              Text(
                'Kirim Pembayaran Kepada : ',
                style: context.textTheme.bodyMedium
                    ?.copyWith(color: ColorName.textSub),
              ),
              Expanded(
                child: BlocBuilder<AccountsBloc, AccountsState>(
                  builder: (context, state) {
                    if (state.state.isLoading) {
                      return const Center(
                        child:
                            CircularProgressIndicator(color: ColorName.primary),
                      );
                    }
                    if (state.state.isSuccess) {
                      return ListView.builder(
                        itemBuilder: (_, index) {
                          return PayoutAccountCard(
                            account: state.accounts![index],
                          );
                        },
                        itemCount: state.accounts?.length,
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
