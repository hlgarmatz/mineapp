import 'package:flutter/material.dart';
import 'package:mineapp/principal_conteudo.dart';
import 'package:easy_search_bar/easy_search_bar.dart';

void main() {
  runApp( Interface());
}

class Interface extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: false,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String searchValue = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}, backgroundColor: Colors.green,
        child: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
              DrawerHeader(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://tse2.mm.bing.net/th?id=OIG1.4YM42oap2eyhTX9Q.JRs&pid=ImgGn'), fit: BoxFit.fill,
                  )
                ),
                child: CircleAvatar(),
              ),

            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 20),
              child: Text(
                  'Olá nome_jogador!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Informações da Conta'),
            ),
            ListTile(
              leading: Icon(Icons.security),
              title: Text('Segurança e Privacidade'),
            ),
            ListTile(
              leading: Icon(Icons.translate),
              title: Text('Idioma'),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Preferências'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Minhas Compras'),
            ),
            ListTile(
              leading: Icon(Icons.account_balance_wallet_rounded),
              title: Text('Carteira'),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Central de Ajuda'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
            ),
          ],
        ),
      ),
      appBar: EasySearchBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Center(
            child: Text(
          "CATALOGO",
          style: TextStyle(fontFamily: 'Minecraft', fontWeight: FontWeight.normal, color: Colors.white),
        )),
        searchHintText: 'Pesquisar...',
        backgroundColor: Colors.green,
        searchBackgroundColor: Colors.white,
        onSearch: (value) => setState(() => searchValue = value),
      ),
      body: const PrincipalConteudo(),
      backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          currentIndex: 1,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                backgroundColor: Colors.green,
                label: "Início"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shop),
                backgroundColor: Colors.green,
                label: "Loja"),
            BottomNavigationBarItem(
                icon: Icon(Icons.sports_esports),
                backgroundColor: Colors.green,
                label: "Extras"),
            BottomNavigationBarItem(
                icon: Icon(Icons.accessibility_new_sharp),
                label: "Skins"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_sharp),
                label: "Meu Perfil"),
          ],
        ),

    );
  }
}
