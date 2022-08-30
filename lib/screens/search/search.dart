import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hoverColor: Colors.red,
                fillColor: Colors.grey.shade300,
                filled: true,
                hintText: 'Item ou loja',
                prefixIcon: const Icon(Icons.search, color: Colors.red),
                suffixIcon: IconButton(
                  onPressed: _controller.clear,
                  icon: const Icon(MdiIcons.closeCircle),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          const Center(
              child: Text(
            'Busca',
            style: TextStyle(fontSize: 50),
          )),
        ],
      ),
    );
  }
}
