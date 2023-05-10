import 'package:amazon_clone/features/account/widgets/acc_btn.dart';
import 'package:flutter/material.dart';

class TopButtom extends StatefulWidget {
  const TopButtom({Key? key}) : super(key: key);

  @override
  State<TopButtom> createState() => _TopButtomState();
}

class _TopButtomState extends State<TopButtom> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccBtn(text: 'Tu Orden', onTap: (){})
          ],
        ),
      ],
    );
  }
}
