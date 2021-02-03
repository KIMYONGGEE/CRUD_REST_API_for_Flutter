//분리된 다트파일 리스트

import 'package:flutter/material.dart';
import 'package:crud_rest_api_eict/models/cases.dart';
import 'detailwidget.dart';

class CasesList extends StatelessWidget {
  // Inside that class, declare these variables that hold Cases list that loaded from the main.dart and create Key for the list
  final List<Cases> cases;
  CasesList({Key key, this.cases}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cases == null ? 0 : cases.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailWidget(cases[index])),
              );
            },
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text(cases[index].name),
              subtitle: Text(cases[index].age.toString()),
            ),
          ));
        });
  }
}
