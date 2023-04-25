import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/pages/home/home_page.dart';
import 'package:nubank/pages/home/model/utils/functions.dart';
import 'package:nubank/pages/login/login_page.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      icon: const Icon(Icons.close)),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Icon(
                                Icons.add_a_photo_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Olá Yuri',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Agência 0001.Conta58388633-4',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Text(
                            'Banco 0260.Nu Pagamentos S.A.-Instituição de Pagamento',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Itens(
                text: 'Seguro de vida',
                icon: const Icon(EvaIcons.heartOutline),
                iButton: const Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HeaderPage()));
                }),
            const Padding(
              padding: EdgeInsets.only(top: 3),
              child: Divider(
                thickness: 1,
              ),
            ),
            Itens(
                text: 'Notificações',
                icon: const Icon(Icons.notifications_outlined),
                iButton: const Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HeaderPage()));
                }),
            const Padding(
              padding: EdgeInsets.only(top: 3),
              child: Divider(
                thickness: 1,
              ),
            ),
            Itens(
                text: 'Me ajuda',
                icon: const Icon(Icons.question_mark_rounded),
                iButton: const Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HeaderPage()));
                }),
            const Padding(
              padding: EdgeInsets.only(top: 3),
              child: Divider(
                thickness: 1,
              ),
            ),
            Itens(
                text: 'Editar dados do perfil',
                icon: const Icon(Icons.person_outline),
                iButton: const Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HeaderPage()));
                }),
            const Padding(
              padding: EdgeInsets.only(top: 3),
              child: Divider(
                thickness: 1,
              ),
            ),
            Itens(
                text: 'Segurança',
                icon: const Icon(Icons.shield_moon_outlined),
                iButton: const Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HeaderPage()));
                }),
            const Padding(
              padding: EdgeInsets.only(top: 3),
              child: Divider(
                thickness: 1,
              ),
            ),
            Itens(
                text: 'Financias abertas',
                icon: const Icon(Icons.house_outlined),
                iButton: const Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HeaderPage()));
                }),
            const Padding(
              padding: EdgeInsets.only(top: 3),
              child: Divider(
                thickness: 1,
              ),
            ),
            Itens(
                text: 'Configurar chaves pix',
                icon: const Icon(Icons.pix_outlined),
                iButton: const Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HeaderPage()));
                }),
            const Padding(
              padding: EdgeInsets.only(top: 3),
              child: Divider(
                thickness: 1,
              ),
            ),
            Itens(
                text: 'Abrir conta pj',
                icon: const Icon(Icons.house_siding_outlined),
                iButton: const Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HeaderPage()));
                }),
            const Padding(
              padding: EdgeInsets.only(top: 3),
              child: Divider(
                thickness: 1,
              ),
            ),
            Itens(
                text: 'Configurar conta',
                icon: const Icon(Icons.money_sharp),
                iButton: const Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HeaderPage()));
                }),
            const Padding(
              padding: EdgeInsets.only(top: 3),
              child: Divider(
                thickness: 1,
              ),
            ),
            Itens(
                text: 'Configurar cartão',
                icon: const Icon(Icons.credit_card_outlined),
                iButton: const Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HeaderPage()));
                }),
            const Padding(
              padding: EdgeInsets.only(top: 3),
              child: Divider(
                thickness: 1,
              ),
            ),
            Itens(
                text: 'Sobre',
                icon: const Icon(MdiIcons.pagePreviousOutline),
                iButton: const Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HeaderPage()));
                }),
            const Padding(
              padding: EdgeInsets.only(top: 3),
              child: Divider(
                thickness: 1,
              ),
            ),
            Itens(
                text: 'Informe de rendimentos',
                icon: const Icon(MdiIcons.noteOutline),
                iButton: const Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HeaderPage()));
                }),
            const Padding(
              padding: EdgeInsets.only(top: 3),
              child: Divider(
                thickness: 1,
              ),
            ),
            Itens(
                text: 'Sair do aplicativo',
                icon: const Icon(Icons.logout_outlined),
                iButton: const Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                }),
            const Padding(
              padding: EdgeInsets.only(top: 3),
              child: Divider(
                thickness: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
