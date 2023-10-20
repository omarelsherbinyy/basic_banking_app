import 'package:basic_bank_app/transfer_sceen.dart';
import 'package:flutter/material.dart';

class Customers extends StatefulWidget {
  const Customers({super.key});

  @override
  State<Customers> createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 100,
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TransferScreen(
                          index: 0,
                        )),
              );
            },
            child: const Text('Mahmoud'),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 100,
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TransferScreen(
                          index: 1,
                        )),
              );
            },
            child: const Text('Yousef'),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 100,
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TransferScreen(
                          index: 2,
                        )),
              );
            },
            child: const Text('Mohamed'),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 100,
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TransferScreen(
                          index: 3,
                        )),
              );
            },
            child: const Text('Omar'),
          ),
        )
      ],
    );
  }
}
