import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

class InfoBox extends StatelessWidget {
  const InfoBox({Key? key, required this.typeInfo, required this.value})
      : super(key: key);
  final int typeInfo;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      fit: FlexFit.loose,
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  _selectTitle(typeInfo),
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary),
                ),
              ),
              Text(
                value > 0 ? value.toString() : '--',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
              if (typeInfo <= 2)
                typeInfo == 2
                    ? Text(
                        translate('app.modal.duration_metric'),
                        style: Theme.of(context).textTheme.caption?.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary),
                      )
                    : Text(
                        translate('app.modal.episode_season_metric'),
                        style: Theme.of(context).textTheme.caption?.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
            ],
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      ),
    );
  }

  String _selectTitle(int typeInfo) {
    switch (typeInfo) {
      case 0:
        return translate('app.modal.seasons');
      case 1:
        return translate('app.modal.episodes');
      case 2:
        return translate('app.modal.duration');
      case 3:
        return translate('app.modal.season');
      case 4:
        return translate('app.modal.episode');
      default:
        return translate('app.modal.undefined');
    }
  }
}
