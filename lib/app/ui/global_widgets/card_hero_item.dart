

import 'package:flutter/material.dart';

class CardHeroItem extends StatelessWidget {
  const CardHeroItem({super.key, this.onTap});

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.black87,
        margin: EdgeInsets.all( MediaQuery.of(context).size.width * .025),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            image(context),
            Flexible(child: info(context)),
            Padding(
              padding: EdgeInsets.only(right:  MediaQuery.of(context).size.width * .025),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
            )
          ],
        ),
      )
    );
  }


  Widget image(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right:  MediaQuery.of(context).size.width * .025),
      width: MediaQuery.of(context).size.width * .3,
      height: MediaQuery.of(context).size.width * .3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(100),
          bottomRight: Radius.circular(100),
          topLeft: Radius.circular(12),
          bottomLeft: Radius.circular(12)
        ),
        image: DecorationImage(
          image: NetworkImage(
            'https://flash.comiccruncher.com/images/characters/0b80ff30.jpg'
          )
        )
      )
    );
  }

  Widget info(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * .025),
              child: Text(
                '#1',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * .07,
                  fontFamily: 'Marvel',
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
            Text(
              'IRON MAN',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * .07,
                fontFamily: 'Marvel',
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ],
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(
             left:  MediaQuery.of(context).size.width * .025,
             right: MediaQuery.of(context).size.width * .025,
             bottom: MediaQuery.of(context).size.width * .025,
            ),
            child: Text(
              'EL HOMBRE DE HIERROooooooooooooooooooooooooooooooooooooooooo',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width * .03,
                overflow: TextOverflow.ellipsis
              ),
              maxLines: 2,
            ),
          ),
        ),
      ],
    );
  }
}