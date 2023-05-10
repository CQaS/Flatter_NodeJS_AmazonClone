import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/features/account/widgets/saludo_appbar.dart';
import 'package:amazon_clone/features/account/widgets/top_buttom.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: /* Image.asset(
                  'assets/images/mobiles.jpeg',
                  width: 120,
                  height: 35,
                  color: Colors.black,
                ), */
                    Text('AMAZON'),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(Icons.notifications_outlined),
                    ),
                    Icon(
                      Icons.search,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: const [
          SaludoAppBar(),
          SizedBox(height: 10),
           TopButtom(),
          SizedBox(height: 20),
          /*Orders(),*/
        ],
      ),
    );
  }
}
