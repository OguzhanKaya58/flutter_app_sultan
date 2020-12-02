import 'package:despicables_me_app/models/character.dart';
import 'package:despicables_me_app/styleguide.dart';
import 'package:despicables_me_app/widgets/character_widget.dart';
import 'package:flutter/material.dart';

class CharacterOneDetailScreen extends StatefulWidget {
  final Character character;
  final int index;

  const CharacterOneDetailScreen({Key key, this.character, this.index})
      : super(key: key);

  @override
  _CharacterOneDetailScreenState createState() =>
      _CharacterOneDetailScreenState();
}

class _CharacterOneDetailScreenState extends State<CharacterOneDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.character.colors[0],
        title: Text(widget.character.name),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: CharacterWidget(index: widget.index),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0, top: 8.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Babası : " + widget.character.father,
                          style: AppTheme.display3),
                      TextSpan(text: "\n"),
                      TextSpan(
                          text: "Annesi : " + widget.character.mother,
                          style: AppTheme.display3),
                      TextSpan(text: "\n"),
                      TextSpan(
                          text: widget.character.boyChild != null
                              ? "Erkek Çocukları : " + widget.character.boyChild
                              : "Erkek Çocuğu : Yok",
                          style: AppTheme.display3),
                      TextSpan(text: "\n"),
                      TextSpan(
                          text: widget.character.girlChild != null
                              ? "Kız Çocukları : " + widget.character.girlChild
                              : "Kız Çocuğu : Yok",
                          style: AppTheme.display3),
                      TextSpan(text: "\n"),
                      TextSpan(
                          text: "Doğum Tarihi : " + widget.character.birdDate,
                          style: AppTheme.display3),
                      TextSpan(text: "\n"),
                      TextSpan(
                          text: "Ölüm Tarihi : " + widget.character.dead,
                          style: AppTheme.display3),
                      TextSpan(text: "\n"),
                      TextSpan(
                          text: "Ölüm Nedeni : " + widget.character.deathCause,
                          style: AppTheme.display3),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
