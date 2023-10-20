import 'package:flutter/material.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key, required this.index});

  final int index;

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  final TextEditingController _textEditingController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int amount;
    Map<String, int> balance = {
      'Mahmoud': 2000,
      'Yousef': 10000,
      'Mohamed': 8000,
      'Omar': 20000,
    };
    int senderBalance;
    int receiverBalance;
    var name = ['Mahmoud', 'Yousef', 'Mohamed', 'Omar'];
    return MaterialApp(
      title: 'Basic Bank App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basic Bank App'),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                style: const TextStyle(fontSize: 20),
                name[widget.index].toString(),
              ),
              const SizedBox(height: 40),
              Text(
                style: const TextStyle(fontSize: 20),
                'Balance: ${balance[name[widget.index]].toString()}',
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  const Text(
                    style: TextStyle(fontSize: 20),
                    'Amount',
                  ),
                  const SizedBox(width: 95),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      style: const TextStyle(fontSize: 20),
                      onTapOutside: (event) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: '10.0',
                      ),
                      controller: _textEditingController,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  const Text(
                    style: TextStyle(fontSize: 20),
                    'Customer Name',
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      style: const TextStyle(fontSize: 20),
                      onTapOutside: (event) =>
                          FocusManager.instance.primaryFocus?.unfocus(),
                      decoration: const InputDecoration(
                        hintText: 'Mohamed',
                      ),
                      controller: _textEditingController2,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        setState(() {
                          amount =
                              int.parse(_textEditingController.text.toString());
                          int index2 =
                              name.indexOf(_textEditingController2.text);
                          senderBalance = balance[name[widget.index]]! - amount;
                          balance.update(
                            name[widget.index],
                            (value) => senderBalance,
                          );
                          receiverBalance = balance[name[index2]]! + amount;
                          balance.update(
                            name[index2],
                            (value) => receiverBalance,
                          );
                          Navigator.pop(context);
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: const Text(
                                  'Your Transaction has been done',
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Ok'),
                                  )
                                ],
                              );
                            },
                          );
                        });
                      },
                      child: const Text('Transfer')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
