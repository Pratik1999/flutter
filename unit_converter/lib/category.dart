import 'package:flutter/material.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class Category extends StatelessWidget
{

  final ColorSwatch color;
  final String name;
  final IconData iconLocation;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        super(key: key);


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight ,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: color[50],
          splashColor: color[100],
          onTap: ()
          {
            print('I was tapped');
          },
          child: Padding(padding: EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding:EdgeInsets.fromLTRB(16, 0,16, 0),
                                child: Icon(
                                  iconLocation,
                                  size: 60.0,
                                ),
                              ),
                              Center(
                                child: Text(
                                  name,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.headline,
                                ),
                              ),
                            ],
                          ),
          ),

        ),
      ),
    );
  }

}