import 'package:flutter/material.dart';

class Colaboradores extends StatefulWidget {
  const Colaboradores({super.key});

  @override
  State<Colaboradores> createState() => _ColaboradoresState();
}

class _ColaboradoresState extends State<Colaboradores> {
  final listaDeColaboradores = [
  {'nome': 'Juliana Albuquerque', 'cargo': 'Coodenadora' , 'telefone':'(81) 99731-8333', 'email':'aalbuquerque@email.com','imagem':'mulher2.png'},
  {'nome': 'Ångela Tais', 'cargo': 'Chefe de obras' , 'telefone':'(81) 99762-9832', 'email':'angelatais@email.com.com','imagem':'mulher2.png'},
  {'nome': 'Carlos Alexandre', 'cargo': 'Suporte' , 'telefone':'(81) 99631-2343', 'email':'carlosalexandre@email.com','imagem':'homem2.png'},
  {'nome': 'Ana Beatriz', 'cargo': 'Atendente' , 'telefone':'(81) 99746-2398', 'email':'anabreatriz@email.com.com','imagem':'mulher2.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:listaDeColaboradores.length,
      itemBuilder:(context, i) {
        var dados = listaDeColaboradores[i];
        return SizedBox(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/"+dados['imagem'].toString(),
                    width: 80,
                  ),
                  Column(
                    children: [
                      Text(
                        dados['nome'].toString(),
                        style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold, 
                          )),
                          Text(dados['cargo'].toString()),
                          Text(dados['telefone'].toString()),
                          Text(dados['email'].toString()),
                        ],
                       ),
                     ],
                   ),
                Divider( color: Color.fromARGB(255, 127, 127, 127),),
          ],
         ),
       );
      
    }
    );
}
}