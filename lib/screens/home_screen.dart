çimport 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Finança+'),
        backgroundColor: Colors.green[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Resumo Financeiro',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Card(
              color: Colors.green[100],
              child: ListTile(
                title: const Text('Saldo Total'),
                subtitle: const Text('R\$ 2.450,00'),
                leading: const Icon(Icons.account_balance_wallet),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              color: Colors.red[100],
              child: ListTile(
                title: const Text('Despesas'),
                subtitle: const Text('R\$ 1.250,00'),
                leading: const Icon(Icons.trending_down),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              color: Colors.blue[100],
              child: ListTile(
                title: const Text('Receitas'),
                subtitle: const Text('R\$ 3.700,00'),
                leading: const Icon(Icons.trending_up),
              ),
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Aqui poderá ir para a tela de adicionar transações
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[800],
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                ),
                child: const Text('Adicionar Transação'),
onPressed: () {
  Navigator.pushNamed(context, '/nova-transacao');
},

              ),
            ),
          ],
        ),
      ),
    );
  }
}
