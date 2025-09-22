// Arislanbek Kalbaev
// Lab 5
// 220081

// Task 1
// 1
Container(
  padding: const EdgeInsets.all(16.0),
  color: Colors.redAccent,
  height: 150,             
  width: 100,
  child: const Text('Hello!'),
)

// 2
Container(
  padding: const EdgeInsets.all(16.0),
  color: Colors.redAccent,
  height: 150,
  width: 100,
  child: const Icon(
    Icons.home,
    color: Colors.white,
    size: 32,
  ),
)


// 3
Container(
  padding: const EdgeInsets.all(16.0),
  height: 150,
  width: 100,
  decoration: BoxDecoration(
    color: Colors.redAccent, 
    borderRadius: BorderRadius.circular(16),
  ),
  child: const Icon(
    Icons.home,
    color: Colors.white,
    size: 32,
  ),
)

// 4
Container(
  margin: const EdgeInsets.all(20.0),
  padding: const EdgeInsets.all(16.0),
  height: 150,
  width: 100,
  decoration: BoxDecoration(
    color: Colors.redAccent,
    borderRadius: BorderRadius.circular(16),
  ),
  child: const Icon(
    Icons.home,
    color: Colors.white,
    size: 32,
  ),
)

// Task 2
// 1
Column(
  children: const <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
  ],
)


// 2
Row(
  children: const <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
  ],
)

// 3
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: const <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
  ],
)

// 4
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: const <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
  ],
)


// Task 3
// 1
const TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Enter your password',
  ),
)

// 2
const TextField(
  obscureText: true,
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Enter your password',
  ),
)

// 3
const TextField(
  obscureText: true,
  decoration: InputDecoration(
    icon: Icon(Icons.person),
    border: OutlineInputBorder(),
    labelText: 'Enter your password',
  ),
)

// 4
import 'package:flutter/material.dart';

class MyTextFieldExample extends StatefulWidget {
  const MyTextFieldExample({super.key});

  @override
  State<MyTextFieldExample> createState() => _MyTextFieldExampleState();
}

class _MyTextFieldExampleState extends State<MyTextFieldExample> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      obscureText: true,
      decoration: const InputDecoration(
        icon: Icon(Icons.person),
        border: OutlineInputBorder(),
        labelText: 'Enter your password',
      ),
    );
  }
}


// Task 4
// 1
Row(
  children: <Widget>[
    Expanded(
      child: Container(width: 100, height: 100, color: Colors.red),
    ),
    Expanded(
      child: Container(height: 100, color: Colors.green),
    ),
  ],
)


// 2
Row(
  children: <Widget>[
    Expanded(
      flex: 1,
      child: Container(height: 100, color: Colors.red),
    ),
    Expanded(
      flex: 2,
      child: Container(height: 100, color: Colors.green),
    ),
  ],
)

// 3
Column(
  children: <Widget>[
    Expanded(
      flex: 1,
      child: Container(color: Colors.red),
    ),
    Expanded(
      flex: 2,
      child: Container(color: Colors.green),
    ),
  ],
)

// 4
Row(
  children: <Widget>[
    Container(width: 100, height: 100, color: Colors.red),
    const Spacer(),
    Container(width: 100, height: 100, color: Colors.green),
  ],
)
