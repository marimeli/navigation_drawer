import 'package:flutter/material.dart';

class Business extends StatelessWidget {
  //const Business({Key key}) : super(key: key);
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
       final options = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    /* return Container(
      child: Center(
        child: Text(
          'Business page',
          style: optionStyle,
        ),
      ),
    ); */
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Page'),
        //backgroundColor: Colors.red[800],
      ),
      body: ListView(
        children: _createItems()
      ),
    );
  }

  List<Widget> _createItems(){
    List<Widget> list = new List<Widget>();
    for (String opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      list..add(tempWidget)
          ..add(Divider());
    }
    return list;
  }
}