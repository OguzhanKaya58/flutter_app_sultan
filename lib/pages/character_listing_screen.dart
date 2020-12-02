import 'package:despicables_me_app/models/character.dart';
import 'package:despicables_me_app/pages/character_onedetail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CharacterListingScreen extends StatefulWidget {
  @override
  _CharacterListingScreenState createState() => _CharacterListingScreenState();
}

class _CharacterListingScreenState extends State<CharacterListingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Osmanlı Sultanları",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      body: createList(),
    );
  }

  createList() {
    return ListView.builder(
        itemCount: characters.length,
        itemBuilder: (BuildContext context, int index) {
          return oneSultan(context, index);
        });
  }

  oneSultan(BuildContext context, int index) {
    Character addedSultan = characters[index];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: characters.length.toDouble(),
        color: addedSultan.colors[0],
        child: ListTile(
          onTap: () {
            Navigator.push(
                context,
                PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 350),
                    pageBuilder: (context, _, __) => CharacterOneDetailScreen(
                      character: characters[index],
                      index: index,
                    )));
          },
          leading: Image.asset(
            addedSultan.imagePath,
            width: 64,
            height: 64,
          ),
          title: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text(
              addedSultan.name,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              addedSultan.date,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
          ),
          trailing: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(Icons.arrow_forward_ios, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
