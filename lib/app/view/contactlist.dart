import 'package:flutter/material.dart';
import 'package:flutterapp/app/my_app.dart';

class ContactList extends StatelessWidget {
  final lista = [
    {
      "Nome": "LUCAS DEPRESSIVO",
      "tel": "14998343434",
      "Avatar":
          "https://media.istockphoto.com/id/840110250/pt/foto/asian-man-in-despair.jpg?s=1024x1024&w=is&k=20&c=caA-oS6RZYu2zKVZ8KoTEQ_6OmYp1oPWcqXFVmZNKIs="
    },
    {
      "Nome": "PEDRO TRISTÃO",
      "tel": "14998343434",
      "Avatar":
          "https://media.istockphoto.com/id/665950252/pt/foto/sad-cheerless-man-covering-his-face.jpg?s=1024x1024&w=is&k=20&c=dSiXfNpiUvL1pvlg-9ORhSbYqKqYrOrXZPw7KCneDnY="
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("FLUTTER"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(MyApp.CONTACT_LIST);
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, i) {
            var contato = lista[i];
            var avatar = CircleAvatar(
              backgroundImage: NetworkImage(contato["Avatar"] ?? ''),
            );
            return ListTile(
              leading: avatar,
              title: Text(contato["Nome"]?.toString() ?? ""),
              subtitle: Text(contato['tel']?.toString() ?? ''),
              trailing: Container(
                width: 100,
                child: const Row(
                  children: [
                    IconButton(onPressed: null, icon: Icon(Icons.edit)),
                    IconButton(onPressed: null, icon: Icon(Icons.delete))
                  ],
                ),
              ),
            );
            /* ?. >> este é um operador de acesso seguro, serve para verificar se
            o valor será nulo ou não.
            ?? >> já este operador me diz que irá retornar uma string vazia
            por padrão caso ele seja nulo */
          }),
    );
  }
}
