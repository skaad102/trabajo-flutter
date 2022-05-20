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
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: const Text("xxxx"),
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
