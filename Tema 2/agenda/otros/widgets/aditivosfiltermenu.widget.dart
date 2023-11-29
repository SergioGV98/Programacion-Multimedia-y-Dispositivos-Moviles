import 'package:flutter/material.dart';
import 'package:listadoaditivos/models/filterstate.dart';

class AditivosFilterMenuButton extends StatefulWidget {
  @override
  _AditivosFilterMenuButtonState createState() =>
      _AditivosFilterMenuButtonState();
}

class _AditivosFilterMenuButtonState extends State<AditivosFilterMenuButton>
    with AutomaticKeepAliveClientMixin {
  late FilterState _filterState;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _filterState = FilterState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // Necesario para mantener el estado

    return PopupMenuButton(
      icon: Icon(Icons.filter_alt),
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry>[
          PopupMenuItem(
            child: Column(
              children: [
                SwitchListTile(
                  title: Text('Saludable'),
                  value: _filterState.bSaludable,
                  onChanged: (value) {
                    setState(() {
                      _filterState.bSaludable = value;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text('Inofensivo'),
                  value: _filterState.bInofensivo,
                  onChanged: (value) {
                    setState(() {
                      _filterState.bInofensivo = value;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text('Precaución'),
                  value: _filterState.bPrecaucion,
                  onChanged: (value) {
                    setState(() {
                      _filterState.bPrecaucion = value;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text('Peligroso'),
                  value: _filterState.bPeligroso,
                  onChanged: (value) {
                    setState(() {
                      _filterState.bPeligroso = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ];
      },
    );
  }
}
