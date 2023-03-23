import '../widgets/widgets.dart';

import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCartType1(),
          SizedBox(
            height: 10,
          ),
          CustomCartType2(
            imageUrl:
                'https://www.eea.europa.eu/themes/biodiversity/state-of-nature-in-the-eu/state-of-nature-2020-subtopic/image_print',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCartType2(
            cartTitle: 'a beutifull image',
            imageUrl:
                'https://previews.123rf.com/images/dinozzaver/dinozzaver1905/dinozzaver190500523/125488440-agua-turquesa-de-la-cascada-kuang-si-luang-prabang-laos.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCartType2(
            imageUrl:
                'https://th.bing.com/th/id/R.5917cfd4eb6c6f33647d5538acdd1cc3?rik=e%2flNXb3HKZaiqg&pid=ImgRaw&r=0',
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
