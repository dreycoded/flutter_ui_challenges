import 'package:flutter/material.dart';

void main() {
  runApp(const Test());
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fuel Voucher Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const VoucherHomePage(),
    );
  }
}

class VoucherHomePage extends StatefulWidget {
  const VoucherHomePage({super.key});

  @override
  State<VoucherHomePage> createState() => _VoucherHomePageState();
}

class _VoucherHomePageState extends State<VoucherHomePage> {
  // This will store our starting voucher number
  int startingNumber = 12582;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fuel Voucher Generator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Title
            const Text(
              'Generate Fuel Vouchers',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            
            const SizedBox(height: 40),
            
            // Input field for starting voucher number
            TextField(
              decoration: const InputDecoration(
                labelText: 'Starting Voucher Number',
                border: OutlineInputBorder(),
                hintText: 'e.g., 12582',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                // Update the starting number when user types
                if (value.isNotEmpty) {
                  startingNumber = int.tryParse(value) ?? 12582;
                }
              },
            ),
            
            const SizedBox(height: 20),
            
            // Display info about what will be generated
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  const Text(
                    'This will generate:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text('• 50 vouchers'),
                  Text('• Starting from FUA$startingNumber'),
                  Text('• Ending at FUA${startingNumber + 49}'),
                ],
              ),
            ),
            
            const SizedBox(height: 40),
            
            // Generate button
            ElevatedButton(
              onPressed: () {
                // For now, just show a message
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Generating vouchers FUA$startingNumber to FUA${startingNumber + 49}'),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16),
              ),
              child: const Text(
                'Generate PDF',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}