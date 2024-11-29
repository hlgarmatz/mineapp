import 'package:flutter/material.dart';
import 'package:mineapp/componente_produto.dart';


class PrincipalConteudo extends StatefulWidget {
  const PrincipalConteudo({super.key});

  @override
  State<PrincipalConteudo> createState() => _PrincipalConteudoState();
}

class _PrincipalConteudoState extends State<PrincipalConteudo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.fromLTRB(100,10,0,10),
          child: Text('Loja',style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0), // Altura da barra de pesquisa
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (query) {
                  setState(() {
// Atualiza a consulta de pesquisa
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Pesquisar...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            backgroundColor: Colors.green,
            label: "Início",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            backgroundColor: Colors.green,
            label: "Loja",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_esports),
            backgroundColor: Colors.green,
            label: "Extras",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_new_sharp),
            label: "Skins",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            label: "Meu Perfil",
          ),
        ],
      ),
       body: ListView(
      scrollDirection: Axis.vertical,
      children: [

        //Container com a info do minecraft
        Container(
          height: 220,
          width: 440,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/minecraft_background.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'EXPLORE A COLEÇÃO MINECRAFT E PERSONALIZE SEUS DISPOSITIVOS COM PAPÉIS DE PAREDE, BANNERS SOCIAIS E MUITO MAIS!!',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),

        Container(
            margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            color: Colors.white,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 6),
                child: Row(
                  children: <Widget>[
                    const Text(
                      'Em alta',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.tune,
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ComponenteProduto(
                        imagem:
                            'https://www.atytude.com.br/cdn/shop/files/variant-image-cor-29-28-removebg-preview.png?v=1712927170&width=400',

                   ),
                    ComponenteProduto(
                        imagem:
                                'https://havaianas.com.br/dw/image/v2/BDDJ_PRD/on/demandware.static/-/Sites-havaianas-master/default/dwbb44590d/product-images/4145125_0121_SANDALIA-HAVAIANAS-KIDS-MINECRAFT_A.png?sw=680&sh=680',

                    ),
                    ComponenteProduto(
                        imagem:
                            'https://www.worten.pt/i/b05a74d57c9c0996e8a31efa3fc626ce5675a6c2',

                   ),
                    ComponenteProduto(
                        imagem:
                            'https://cdn.awsli.com.br/2657/2657807/produto/265801930/1714436942122-removebg-preview--1--iq9fs6i1xg.png',

                        ),
                    ComponenteProduto(
                        imagem:
                            'https://superlegalbrinquedos.vtexassets.com/arquivos/ids/222434/LEGO-Minecraft---A-Arena-do-End---21242-1.png?v=638288237352000000',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://superlegalbrinquedos.vtexassets.com/arquivos/ids/206885-800-auto?v=637983449699300000&width=800&height=auto&aspect=true',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MC-CHARFACE-ENDRMN-100175-MF_1800x1800.png?v=1631810283',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MCIC-DUCKFC-100040-11oz-left-MF_1800x1800.png?v=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',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MCIC-ENDRFC-100040-11oz-Left-MF_1800x1800.png?v=1612469099',
                        ),
                    Container(
                      width: 125,
                      margin: const EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        color: Colors.grey.shade100,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          const Text(
                            'Veja mais',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Positioned(
                            top: 30,
                            child: IconButton(
                              icon: const Icon(Icons.arrow_forward),
                              onPressed: () {
                                // Adicione a ação desejada aqui
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ])),
        SizedBox(
          height: 8,
          child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.grey.shade100)),
        ),
        Container(
            margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            color: Colors.white,
            child: Column(children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 6),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Masculino',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Icon(Icons.male)
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ComponenteProduto(
                        imagem:'https://shop.minecraft.net/cdn/shop/products/MCIC-ENDRFC-100040-11oz-Left-MF_1800x1800.png?v=1612469099',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MCIC-DUCKFC-100040-11oz-left-MF_1800x1800.png?v=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',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MCIC-ENDRFC-100040-11oz-Left-MF_1800x1800.png?v=1612469099',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MC-CHARFACE-ENDRMN-100175-MF_1800x1800.png?v=1631810283',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MCIC-DUCKFC-100040-11oz-left-MF_1800x1800.png?v=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',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MCIC-ENDRFC-100040-11oz-Left-MF_1800x1800.png?v=1612469099',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MC-CHARFACE-ENDRMN-100175-MF_1800x1800.png?v=1631810283',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MCIC-DUCKFC-100040-11oz-left-MF_1800x1800.png?v=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',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MCIC-ENDRFC-100040-11oz-Left-MF_1800x1800.png?v=1612469099',
                        ),
                    Container(
                      width: 125,
                      margin: const EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        color: Colors.grey.shade100,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          const Text(
                            'Veja mais',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Positioned(
                            top: 30,
                            child: IconButton(
                              icon: const Icon(Icons.arrow_forward),
                              onPressed: () {
                                // Adicione a ação desejada aqui
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ])),
        SizedBox(
          height: 8,
          child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.grey.shade100)),
        ),
        Container(
            margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            color: Colors.white,
            child: Column(children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 6),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Feminino',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Icon(Icons.female)
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MC-CHARFACE-ENDRMN-100175-MF_1800x1800.png?v=1631810283',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MCIC-DUCKFC-100040-11oz-left-MF_1800x1800.png?v=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',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MCIC-ENDRFC-100040-11oz-Left-MF_1800x1800.png?v=1612469099',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MC-CHARFACE-ENDRMN-100175-MF_1800x1800.png?v=1631810283',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MCIC-DUCKFC-100040-11oz-left-MF_1800x1800.png?v=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',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MCIC-ENDRFC-100040-11oz-Left-MF_1800x1800.png?v=1612469099'
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MC-CHARFACE-ENDRMN-100175-MF_1800x1800.png?v=1631810283',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MCIC-DUCKFC-100040-11oz-left-MF_1800x1800.png?v=1614203653BCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAFwAXAMBEQACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAEBQYHAgMIAAH/xABBEAACAQMDAQUFBgIFDQAAAAABAgMEBREAEiEGEzFBUWEHIjJxgRQVkaGxskJEI8HR4fAIJTNSU2NkcnN0gpKi/8QAGQEAAgMBAAAAAAAAAAAAAAAAAwQAAQIF/8QALxEAAgIBBAECBAUEAwAAAAAAAQIAEQMEEiExQQVRExQiYTJxkaHwFWKBwVKx4f/aAAwDAQACEQMRAD8AiF0Tdda/n+al/edLugYzraXVNgBAFg1+3XU0pAMFsgEnJwvrnz1j4I45jP8AU3AI2Dk3+9xbc6poHVEwyqy5YjjcGDY/x56IunRuL/hFTD+pZwocjixzz2G3f+flAvvBxjZGgAIIHJ7mLfmTrfyq+TMf1bKD9KgDj38Nu/cmeNc3ZlFiVeCAcngZzj8dT5cA2TMN6izYzj2gXY89E3X6+e5Kegqmn7Wdap90jRsAW/hXHA/HnS2rQiqg8LC4yordM1PUGlEz1JmkQiJiDw3Hd6Y0BqoVGW4gUtjvMCyVVxglWNOMyA+eoaEGpHiEQVcs001LLEEd4/dbGc48fn4fXUJrmb5MXEbs5GPQ+GncZsRV+5omTnRBBkQFo3ycHUqVHdyT/Otcf+Jl/edZM0vU1uQlNI4PwKTqL+KQyPtcoy6tsk43EcjgkDu9OPz1gaV6PInWf1bFuB2ni664sDr7cQCpcPUO6LtDOcLpzCm1QD4nF1GVcuZnUUCbqYHcByOdWzCYAjrpumYyvNIxWKIbpDn8vrpLKSRUZxKBzLj9iqdol6q295GqgiOw7yF97H10EALK1LE0BLDutFBcqKWknUMkqFT9dUV3mLoxQ2Jzz0XVOeprjQzjc1IrqpPd7hK51nU4wigzo6fKXZh7TRP7ssgP+sdHwniBy9waU40wJgzQ0fOpMxpc3VbtWgn+Zk/edYMteoIKd5kZQuAc8kjn0/x56XCuGsfedp9VgbGqM1ilFV0R2f53EzGhjqthhX+BSpU4+I7j4eGNFC5yvfvBHP6cMtlQR9Pg+53EdeKmTikhmC1KAMUGF25yRkEg8+mrrORS+/vMY8vp17sg7A4o982R39oOKgFS0qxggfFGw90eq+P00dkNziqxAjnp2xS36rSFbjFFEDl1Cnco8wDwdK5GCxvF9Ut6jvFi6JoobbK8kaxLu7OGJpHbxLHA8fM40FbdoTKAFhNu9pdvulT2dDAixopcmepRXZQO9UBJOjBa5igQHzKf6Vk7OuuVzziaumZIPUM5JOg6w2oAjejSiT7xvf7ZJSypMVK9qNx/5tTTZAwqaz4ipuJJR3ZOnV6i8+gauVxC7mp+9q44/mZP3nWJF6no3G3aTjUkJiW+0IMn2qAbicdoo/UaKrcVBss+rAtztkUkUqCqpWOAWwWUnJBH56yzFOpW25LujrJSVlIlQYYaiEsJDDKvwOOM/wB2lmzPGExXDbdaLdD7Q7bFSll7R2eVVPGSM4A8B6awTu7lkFJZvUvSdFcjHJ2Ue5M5R13K48iDqiApgFyFuDEd3tFNYuiaresYWlgdafcTI6Fu87nyfTA41s5Lm0X6qlJrLLQ1dJKEJjiQSKvmvd+Wsgb1NxkNsIklvHURvkUKpEY4ohgE8Fj46Hp8JRuYXNmUiolmLnT9xEz4GbA41dyoxuhb7zrv+5k/edYlr1BcDx1Rk4no1XtBuJwdWCZDUXXS30TSmdjJGT3qgHOtq19wTcRh0Xe2osxdodmT3nnv0DMntD4slR1bayam68o7i8Ms0IySIlyRgaEBxNm2l5TTy1MSSxqYwwyFJGSNYeybgsaqpo8yH9cW269SWeW22cIzLtklVn27wD8Knz1vGN0I7DHKYuEddBJHbrnD2E1G3wSJtkUHwznkfkdGXCfEGcwMISUtyTk60MZWVuBnmYEc61cviai4zq5UI6nrloaytbgytUyBFPj7x51EUsZh3CgSNNeq+U7EKAk8BI8nTLIqjmL72PUdQdJ9bXCnE0NvqXiYcHei5+mQdBOXFU2FyR9VdO1FHaaVKymlglWJVk3rkBvHnu79A3ru4kOPIZC/um826dphbKsw7j7wiJUjzyNGLIRIFdfElHT8N7nq4aq01NSXAwYw6o0fgc7hgj5jSzMo4nQwgeZalggvkVKReKqrXuCRSSpJ/wDSju9PDS7tcLtS7WSG0LFDfDMpkzJSrGcg4JDMe70z36JiaolnViLkD/yg7Q1yis01uopamuDyIxgjLNswDzj17vrp1HW+YptPtKhm6S6opadqmWyXSOJRln7B8Aeei70MlMItirqunOBK/B5R+f11YRW6k3MI7gm7aJZB/EMnQyouGV+IJ1ZUNP1Hcs52x1MqAeWHOi4lrmAdrjPoO3CarNTIm7aQF0rqcvFRnT4ubM6SskawWiNnAB25OfDSAJIhMv49ombNb66F0k7KRCMMpwQR66o2JX1jgSORVXTzVMtvoKsUksTBTEr9nj5A8EfLV2YYBq5htRYbfXRiSZKaaQD/AErSDd9SMaogmV8SoSKN6SlVKWWjDKMAM7EAam0yxl3eDAKSKZqpnqxSSFcgNChJH/kdT8oUi+4fSiONy5KoB5nU+qZdQBBRcKfqOpqrRRyE08IAqJkPBfghOOceJ551CcnUAVCjcZVPtu6SmtCW67mZJhKzQTtHEI1VviXC5PGN3efDXR0zECjFMh3G5WdNXvTxdmo4znRyBcyGqF9RZbqK6IvJaumA/wDc63upJirMs72e2kRx08RHPDNx365OY206uFaSS/2yXd7P0AYqaRopqudIFZOCB8R5+S6JgQMeYnkYhrE5+pr9d6U5p7lVRnOeJDp86dYP4re8d0HWN0qHRKy5FZAfdlkjQ/icZ0B9OviEXUMO5OrD1B1VWHsKCmp61lUHDRKi4JwCW7saVOMA1GFyFhHdxFht4+1dQR2v7fDh3it+7KsOeXyB+I1khuhJuH4pDeoPbBcJZXhslJBTQDhZHBZiPlpjHpr7gTqGHUhtd1l1BXIY57lKEPeqe7nRxp1BmG1Dt3LK9idyC0jwu3vmQlj4k6Uz/S3EZwnelGWb19Yx1N0bX29BumaLtIf+ovK/pj66vG1GKMtGclkEEhgQRwQfDXRXkQUk32X7T1pciQcLWzH67zpfI1LDYU3NLs6NohEiOfADXNY2Y+OBUiPt7q3qKi12+Jh2cET1M3PAydq/o2ndLxzEcwJlSw0E09O88YBVGAI8edNPqERgrdmEw6HNmwNmxiwpA+/M2S2ypiqDD2bSOqhiIxnGdYXU42XdcJl9M1WLKcW2yBfHPcNpvvVLe1PTVTiGRRL2SM27vxgf2aG2bEGo+8InpmpbHuXni6891+sA7OsNK8IScwxvudQpwreui78IrmKDS6hgx2Gl746mIoaltuKeX3u7CnnWvmMY8yxotSSAEPPXExNFUbXfsJAifExUjHz1PioSBfco6TOFZihod8dSa+y6tNLXvF3HcDg6U1awulPidFWuoEtOrDSgagJMy8znX2l9GXCh6yrzbLZU1FHUt9oiaCJmC7+SvA4w2ePLGuhjyDbFjjbxGdltm/qG4uw5atmOcf7xtL5n4qNYBQlt2lFhgVfDHOlCfEYJlIe1y6Gr6wr6cNlKdo4zjxwg/rzrq4F4E52VrNSLW2rlihaKNxEVbtN554xjGPrqs2FXfc3tUc0vqGXT4TjxcG7v/FVU3x3aR3KrBu3BAMOAcr45I/q0I6QUOff942vrbbjaeF882vmyDMJrg5jliaBlfYUJ3d3vbs92tfLBTd+f9VBn1V3QqE8Vd/3br6/xM/vZ3dpPs6lgzOn9J8ORg5GOdV8nQ7hG9a3MXOPmyRz1Yo3xz+01JdWWTPZZUwrEV3+WORkenlqzpbWr83Bp6uwybtvG0LV+3nkf6n2a6mWGSMwbi4OC7htvhnu7+NWmlpgQepMvqvxcToyXu9zdffrv8iB9oX0fV9hd4wOPdPPnzq9QOJztOaadDdO3Edigzxj8dc0cR7IA0PmuAEh5/PU5lAACV3ZodlyrGxwamT9x0Zjybg16EmdJKVX0xoPFzZ6nNt+qjW365VLZLy1TkDGf4j/drsYRxOa/cxtcgjuMJn2oo7yeB3eOsaoFsTBe496VkTHrMbZDQF9/kYxSSnaSnFVOkk6K57RTgZ42gn8dKFMig7AQOOP+51xl0uRsa6lwzgNyOv7QTxPNPSqjxAqqS1C9oFck7dvJyPDP66nw8pbd5AP6yHPo0Q4hQVnF0b+mueQern0R20z52wAbcZ7QEDnvxny+upu1G3z+ksJ6ac3IUCv+Qrvur9vvc19nbxSj34GkyCCDtPxcg5z4a1uz7/P8ED8L0/5fllLcdcH8XI7PiC3QUgcGmEZG34UPA58SDzo+l+IQd8Q9VGmGRfgVVePH5myDPWhilRBMq8B9hbHiedXmBqJ4hzLlsVftpk55HGueRzHhzD3riXJ3D8dVUuoBQcVtTj/bv+462RyYJOhJEWK0crLwViZh88azQmz1OcbkoW4zY/iO4/M8nXW0/wCGc7KOZqTMjjczHPGSdafjkTC8mjCKqBYKgxKWIwDk9+sYju7mnAXgTWeAMa0xqUJ8PeRqKbmH4hVvRWllyM/0LH640NzRhsagiCIuceuNHU2Jhp5qudCVRyqg8AfroGTmbUyyenaiV6KEs2SUGue45j2M/TH286zCT//Z',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MCIC-ENDRFC-100040-11oz-Left-MF_1800x1800.png?v=1612469099',
                        ),
                    Container(
                      width: 125,
                      margin: const EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(5)),
                        color: Colors.grey.shade100,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          const Text(
                            'Veja mais',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Positioned(
                            top: 30,
                            child: IconButton(
                              icon: const Icon(Icons.arrow_forward),
                              onPressed: () {
                                // Adicione a ação desejada aqui
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ])),
        SizedBox(
          height: 8,
          child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.grey.shade100)),
        ),
        Container(
            margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
            color: Colors.white,
            child: Column(children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 6),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Infantil',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ComponenteProduto(
                        imagem:
                            'https://www.centroxogo.pt/media/catalog/product/cache/b360a400a3def578629000afbc000986/3/7/372mc00007_1.png',

                    ),
                    ComponenteProduto(
                        imagem:
                            'https://mpbrinquedos.vteximg.com.br/arquivos/ids/227443-1000-1000/21181b.png?v=637837224410770000',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MCIC-ENDRFC-100040-11oz-Left-MF_1800x1800.png?v=1612469099',
                        ),
                    ComponenteProduto(
                        imagem:
                        "https://www.atytude.com.br/cdn/shop/files/variant-image-cor-29-28-removebg-preview.png?v=1712927170&width=400",
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MCIC-DUCKFC-100040-11oz-left-MF_1800x1800.png?v=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',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MCIC-ENDRFC-100040-11oz-Left-MF_1800x1800.png?v=1612469099',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MC-CHARFACE-ENDRMN-100175-MF_1800x1800.png?v=1631810283',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MCIC-DUCKFC-100040-11oz-left-MF_1800x1800.png?v=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',
                        ),
                    ComponenteProduto(
                        imagem:
                            'https://shop.minecraft.net/cdn/shop/products/MCIC-ENDRFC-100040-11oz-Left-MF_1800x1800.png?v=1612469099',
                        ),
                    Container(
                      width: 125,
                      margin: const EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(5)),
                        color: Colors.grey.shade100,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          const Text(
                            'Veja mais',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Positioned(
                            top: 30,
                            child: IconButton(
                              icon: const Icon(Icons.arrow_forward),
                              onPressed: () {
                                // Adicione a ação desejada aqui
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ])),
          ],

       ),
    );

  }
}
