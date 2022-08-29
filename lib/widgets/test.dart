import 'package:flutter/material.dart';

class AddressSearch extends StatelessWidget {
  const AddressSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hoverColor: Colors.red,
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    hintText: 'Endereço e número',
                    prefixIcon: const Icon(Icons.search, color: Colors.red),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 3, color: Colors.white),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                for (var i = 0; i <= 3; i++)
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: FlutterLogo(),
                      title: Text('Casa'),
                      subtitle: Text(
                          'Trav. Magondi, 40 - Chácara Sonho Azul, São Paulo - SP'),
                      trailing: Icon(Icons.more_vert, color: Colors.red),
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
