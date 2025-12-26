import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(children: const [
          Task('Aprender Flutter'),
          Task('Praticar Natação'),
          Task('Praticar Yoga'),
          Task('Aprender a andar de bike'),
          Task('Aprender Flutter'),
          Task('Praticar Natação'),
          Task('Praticar Yoga'),
          Task('Aprender a andar de bike'),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: const Icon(Icons.add)
        ),
      ),
    );
  }
}

class Task extends StatelessWidget {
  final String nome;

  const Task(this.nome, {super.key});

  @override
  Widget build(BuildContext context) {
    int nivel = 0;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 140,
          ),
          Column(
            children: [
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black26,
                      width: 72,
                      height: 100,
                    ),
                    Container(
                      width: 200,
                      height: 100,
                      child: Text(
                        nome,
                        style: const TextStyle(fontSize: 24),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Icon(Icons.arrow_drop_up)),
                  ],
                ),
              ),
              Text('Nivel $nivel', style: TextStyle(color: Colors.white, fontSize: 16),)
            ],
          )
        ],
      ),
    );
  }
}
