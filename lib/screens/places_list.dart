import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/places.dart';
import './add_place.dart';

class PlacesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Places',
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlace.routeName);
            },
          )
        ],
      ),
      body: Consumer<Places>(
        child: Center(
          child: const Text('No places added yet. Start adding them!'),
        ),
        builder: (ctx, places, ch) => places.places.length <= 0
            ? ch
            : ListView.builder(
                itemCount: places.places.length,
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: FileImage(places.places[index].image),
                  ),
                  title: Text(places.places[index].title),
                  onTap: () {
                    //....
                  },
                ),
              ),
      ),
    );
  }
}
