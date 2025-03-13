import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../domain/entity/ets_bank.dart';
import '../../../shared/assets/colors.gen.dart';
import '../../../shared/components/display/global_text.dart';
import '../../../shared/components/interactive/global_textfield.dart';
import '../../../shared/extension/ext_dimens.dart';
import '../../../shared/extension/ext_misc.dart';

@RoutePage()
class ViewBanksListPage extends StatefulWidget {
  final List<BankEts> banks;
  const ViewBanksListPage({super.key, required this.banks});

  @override
  State<ViewBanksListPage> createState() => _ViewBanksListPageState();
}

class _ViewBanksListPageState extends State<ViewBanksListPage> {
  final TextEditingController _searchController = TextEditingController();
  List<BankEts> _filteredBanks = [];

  @override
  void initState() {
    super.initState();
    _filteredBanks = widget.banks;
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    setState(() {
      _filteredBanks = widget.banks
          .where((bank) =>
              (bank.nama?.toLowerCase().contains(query.toLowerCase()) ?? false))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const GlobalText.title(
          value: 'Daftar Bank',
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(context.spacingMd),
        child: Column(
          spacing: context.spacingMd,
          children: [
            GlobalTextField(
              hintText: 'Cari bank penerima',
              onChanged: (value) {
                _onSearchChanged(value ?? '');
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredBanks.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      context.maybePop(_filteredBanks[index]);
                    },
                    child: Container(
                      padding: EdgeInsets.all(context.spacingSm),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: ColorName.grayLight,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: GlobalText.label(
                        value: (_filteredBanks[index].nama).orDefault,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
