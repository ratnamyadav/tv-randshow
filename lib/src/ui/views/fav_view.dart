import 'package:flutter/material.dart';

import 'package:tv_randshow/src/models/fav_model.dart';
import 'package:tv_randshow/src/ui/views/base_view.dart';
import 'package:tv_randshow/src/utils/states.dart';

class FavView extends StatefulWidget {
  FavView({Key key}) : super(key: key);

  _FavViewState createState() => _FavViewState();
}

class _FavViewState extends State<FavView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<FavModel>(onModelReady: (model) {
      model.getFavs();
    }, builder: (context, child, model) {
      return SafeArea(
        child: Container(
          child: _renderData(model),
        ),
      );
    });
  }

  Widget _renderData(FavModel model) {
    if (model.state != ViewState.loading) {
      if (model.listTvShow == null || model.listTvShow.isEmpty) {
        return Center(child: const Text('Empty list'));
      } else {
        return Column(
          children: <Widget>[
            const Text('Choose a random episode form your favorites'),
            Expanded(
              child: GridView.builder(
                semanticChildCount: model.listTvShow.length,
                padding: const EdgeInsets.all(16.0),
                itemCount: model.listTvShow.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return model.listTvShow[index];
                },
              ),
            ),
          ],
        );
      }
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }
}
