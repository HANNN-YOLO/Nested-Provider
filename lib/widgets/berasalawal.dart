import 'package:flutter/material.dart';
import '../models/barang.dart';
import './datagrid.dart';
import 'package:provider/provider.dart';
import '../providers/barangku.dart';

class builder extends StatelessWidget {
  // const builder({super.key, required this.dataku});

  // final List<Barang> dataku;

  @override
  Widget build(BuildContext context) {

    final data = Provider.of<Barangku>(context);
    final dataku = data.dumydata;

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: dataku.length,
      itemBuilder:
          (context, index) => ChangeNotifierProvider.value(
            value: dataku[index],
              // create: (ctx) => dataku[index],
            child: tampilan(),
              // dataku[index].id!,
              // dataku[index].nama!,
              // dataku[index].urlgambar!,
            // ),
          )

      // {
      //   return tampilan(dataku: dataku);
      // },

    );
  }
}
