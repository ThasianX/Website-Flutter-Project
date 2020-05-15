import 'package:kevinli/models/project_model.dart';
import 'package:flutter/material.dart';

class ProjectWidget extends StatelessWidget {
  final Project _project;
  ProjectWidget(this._project);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            flex: 40,
            child: 
          )
        ],
      ),
    );
  }
}

class ImageGrid extends StatelessWidget {
  final List<String> _images;
  ImageGrid(this._images);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(children: <Widget>[
        Image.asset(_images[0]),
        Image.asset(_images[1])
      ],),
      Row(children: <Widget>[
        Image.asset(_images[2]),
        Image.asset(_images[3])
      ],)
    ],);
  }
}