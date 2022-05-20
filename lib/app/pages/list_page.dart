import 'package:flutter/material.dart';

import '../model/coca_model.dart';
import '../service/api.dart';

class ListaCocoa extends StatelessWidget {
  const ListaCocoa({Key? key}) : super(key: key);

  // final cocoaModel = Cocoa();
  @override
  Widget build(BuildContext context) {
    final cocoaAPI = new CocoaAPI();
    final futureCooca = cocoaAPI.fetchData();
    print(futureCooca);
    return Container(
      child: FutureBuilder(
          future: futureCooca,
          builder: (_, AsyncSnapshot<List<Cocoa>> snapshot) {
            if (snapshot.hasData) {
              final dataCocoa = snapshot.data;
              return ListView.builder(
                itemCount: dataCocoa?.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    title: Text("fecha: ${dataCocoa![index].mes}"),
                    leading: Text("var : ${dataCocoa[index].cocoaVar}"),
                    trailing: Text("Gráfico : ${dataCocoa[index].grfico}"),
                  );
                },
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
