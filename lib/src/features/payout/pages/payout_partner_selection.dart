import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/app_di.dart';
import '../../../shared/assets/colors.gen.dart';
import '../../../shared/components/display/global_text.dart';
import '../../../shared/components/interactive/global_textfield.dart';
import '../../../shared/extension/ext_dimens.dart';
import '../managers/payout_bloc.dart';
import '../widgets/card_payout_account.dart';

@RoutePage()
class PayoutPartnerSelectionPage extends StatefulWidget {
  const PayoutPartnerSelectionPage({super.key});

  @override
  State<PayoutPartnerSelectionPage> createState() =>
      _PayoutPartnerSelectionPageState();
}

class _PayoutPartnerSelectionPageState
    extends State<PayoutPartnerSelectionPage> {
  @override
  void initState() {
    super.initState();
    context.read<PayoutBloc>().add(const PayoutEvent.load());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const GlobalText.title(
          value: 'Pilih Mitra',
          color: Colors.white,
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
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
                  locator<PayoutBloc>().add(const PayoutEvent.load());
                  return;
                }
                locator<PayoutBloc>().add(PayoutEvent.search(value!));
              },
            ),
            const GlobalText.caption(value: 'Kirim Pembayaran Kepada : '),
            Expanded(
              child: BlocBuilder<PayoutBloc, PayoutState>(
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
    );
  }
}
