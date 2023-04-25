import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank/pages/home/account/account.dart';
import 'package:nubank/pages/home/actions/menu_itens.dart';
import 'package:nubank/pages/home/creditsCard/credit_card.dart';
import 'package:nubank/pages/home/creditsCard/my_credits_card.dart';
import 'package:nubank/pages/home/findOut/find_Out.dart';
import 'package:nubank/pages/home/investiments/investiments.dart';
import 'package:nubank/pages/home/model/header.dart';
import 'package:nubank/pages/home/notification/notification_page.dart';
import 'package:nubank/pages/home/security/securityLife.dart';
import 'package:nubank/pages/home/shopping/shopping_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Header(),
              AccountNubank(),
              MenuItens(),
              Divider(
                thickness: 1.6,
              ),
              MyCreditCard(),
              Divider(),
              Notifications(),
              Divider(
                thickness: 1.6,
              ),
              CreditCard(),
              Divider(
                thickness: 1.6,
              ),
              Investiments(),
              Divider(
                thickness: 1.6,
              ),
              SecurityLife(),
              Divider(
                thickness: 1.6,
              ),
              ShoppingView(),
              Divider(
                thickness: 1.6,
              ),
              FindOutMore(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ));
  }
}
