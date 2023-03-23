import 'package:flutter/material.dart';

class CustomCartType2 extends StatelessWidget {
  final String imageUrl;
  final String? cartTitle;

  const CustomCartType2({Key? key, required this.imageUrl, this.cartTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 700),
          ),
          if (cartTitle != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 20),
              child: Text(
                cartTitle!, //?? 'Hola paisaje'
              ),
            )
        ],
      ),
    );
  }
}
