import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCartType1 extends StatelessWidget {
  const CustomCartType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: const Text('I Am a  tarjet'),
            subtitle: Text(
                'Aliquip irure mollit fugiat eiusmod magna. Amet officia sunt elit velit. Aliquip cupidatat dolore labore aliqua adipisicing quis minim velit fugiat qui cupidatat. Nulla cupidatat ut ipsum id ea nostrud enim dolore aliquip elit. Magna ad mollit et do et nisi. Ut in nostrud veniam eiusmod duis quis amet ut ex voluptate mollit fugiat ipsum. Dolor tempor cupidatat aliqua sit elit occaecat fugiat exercitation sit ut eu est.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancelar')),
                TextButton(onPressed: () {}, child: const Text('Ok')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
