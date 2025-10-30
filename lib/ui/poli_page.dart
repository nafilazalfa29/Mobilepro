import 'package:flutter/material.dart';
import '../widget/sidebar.dart';
import '../model/poli.dart';
import 'poli_detail.dart';
import 'poli_item.dart';
import 'poli_form.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: const Text("Data Poli"),
        backgroundColor: Color.fromRGBO(5, 5, 237, 0.612),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PoliForm()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          PoliItem(
            poli: Poli(namaPoli: "Poli Anak", namaDokter: "Rio Ferdinand"),
          ),
          PoliItem(
            poli: Poli(namaPoli: "Poli Kandungan", namaDokter: "Budi Laksono"),
          ),
          PoliItem(
            poli: Poli(namaPoli: "Poli Gigi", namaDokter: "Lia Erawati"),
          ),
          PoliItem(poli: Poli(namaPoli: "Poli THT", namaDokter: "Reymond")),
        ],
      ),
    );
  }
}
