import 'package:flutter/material.dart';
import 'package:my_plan_app/src/pages/home_info/base_page.dart';
import 'package:my_plan_app/src/pages/login/login_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          BasePage(
            image: "assets/images/info_1.png",
            slide: "assets/images/slide_1.png",
            title: "Controle de cartões de crédito",
            text:
                "Gerencie com precisão as despesas nos cartões de crédito e tenha o controle por cartão do titular e adicionais",
            callback: () {
              controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.linear);
            },
          ),
          BasePage(
            image: "assets/images/info_2.png",
            slide: "assets/images/slide_2.png",
            title: "Usuários adicionais",
            text:
                "Crie usuários adicionais para seu cônjuge e seus filhos e deixe toda família participar da organização das finanças",
            callback: () {
              controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.linear);
            },
          ),
          BasePage(
            image: "assets/images/info_3.png",
            slide: "assets/images/slide_3.png",
            title: "Ajuda na realização de metas",
            text:
                "Controle de metas de despesas, receitas e investimentos e relatório de evolução",
            callback: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
      ),
    );
  }
}
