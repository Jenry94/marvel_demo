

import 'package:demo_marvel/app/data/models/marvel_response_model.dart';
import 'package:flutter/material.dart';

class CardHeroItem extends StatelessWidget {
  const CardHeroItem({super.key, required this.character, this.onTap});

  final Character character;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.black87,
        margin: EdgeInsets.all( MediaQuery.of(context).size.width * .025),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .135,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              image(context),
              Expanded(child: info(context)),
              Padding(
                padding: EdgeInsets.only(right:  MediaQuery.of(context).size.width * .025),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      )
    );
  }


  Widget image(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right:  MediaQuery.of(context).size.width * .025),
      width: MediaQuery.of(context).size.width * .3,
      height: MediaQuery.of(context).size.height * .135,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(100),
          bottomRight: Radius.circular(100),
          topLeft: Radius.circular(4),
          bottomLeft: Radius.circular(4)
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            '${character.thumbnail.path}.${character.thumbnail.extension}'
          )
        )
      )
    );
  }

  Widget info(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 6,
          child: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * .025),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                character.name,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * .04,
                  fontFamily: 'Marvel',
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
          ),
        ),
        if(character.description.isNotEmpty)
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.only(
              left:  MediaQuery.of(context).size.width * .025,
              right: MediaQuery.of(context).size.width * .025,
              bottom: MediaQuery.of(context).size.width * .025,
              ),
              child: Text(
                character.description,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * .0275,
                  overflow: TextOverflow.ellipsis
                ),
                maxLines: 3,
              ),
            ),
          ),
      ],
    );
  }
}