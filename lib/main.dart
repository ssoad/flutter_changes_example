import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 3.27.1 Features',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const FeaturesScreen(),
    );
  }
}

class FeaturesScreen extends StatelessWidget {
  const FeaturesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter 3.27.1 Features'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // New Card elevation behavior
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'New Card Elevation in 3.27.1',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Enhanced TextStyle
              Text(
                'Enhanced TextStyle Features',
                style: TextStyle(
                  fontSize: 24,
                  letterSpacing: 1.5,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 16),
              // New Material 3 Button Styles
              ElevatedButton(
                onPressed: () {},
                child: const Text('Material 3 Elevated Button'),
              ),
              const SizedBox(height: 16),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Material 3 Outlined Button'),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {},
                child: const Text('Material 3 Text Button'),
              ),
              const SizedBox(height: 16),
              // New IconButton with Tooltip
              Tooltip(
                message: 'New IconButton Tooltip',
                child: IconButton(
                  icon: const Icon(Icons.info),
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 16),
              // New Switch with Material 3
              Switch(
                value: true,
                onChanged: (bool value) {},
              ),
              const SizedBox(height: 16),
              // New Slider with Material 3
              Slider(
                value: 50,
                min: 0,
                max: 100,
                onChanged: (double value) {},
              ),
              const SizedBox(height: 16),
              // New ProgressIndicator with Material 3
              const CircularProgressIndicator(),
              const SizedBox(height: 16),
              const LinearProgressIndicator(),
              const SizedBox(height: 16),
              // New Checkbox with Material 3
              Checkbox(
                value: true,
                onChanged: (bool? value) {},
              ),
              const SizedBox(height: 16),
              // New Radio with Material 3
              Radio<int>(
                value: 1,
                groupValue: 1,
                onChanged: (int? value) {},
              ),
              const SizedBox(height: 16),
              // New DropdownButton with Material 3
              DropdownButton<String>(
                value: 'One',
                items: const [
                  DropdownMenuItem(value: 'One', child: Text('One')),
                  DropdownMenuItem(value: 'Two', child: Text('Two')),
                ],
                onChanged: (String? value) {},
              ),
              const SizedBox(height: 16),
              // New Chip with Material 3
              Chip(
                label: const Text('New Chip'),
                onDeleted: () {},
              ),
              const SizedBox(height: 16),
              // Row with spacing
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 16,
                children: const [
                  Text('Row Item 1'),
                  Text('Row Item 2'),
                  Text('Row Item 3'),
                ],
              ),
              const SizedBox(height: 16),
              // Column with spacing
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: const [
                  Text('Column Item 1'),
                  Text('Column Item 2'),
                  Text('Column Item 3'),
                ],
              ),
              const SizedBox(height: 16),
              // Footer with name and GitHub URL
              const Divider(),
              const Text(
                'Developed by Sohanuzzaman Soad',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text('GitHub: https://github.com/ssoad'),
            ],
          ),
        ),
      ),
    );
  }
}
