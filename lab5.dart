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

// Task 5
// 1
import 'package:flutter/material.dart';

class UserProfileCard extends StatelessWidget {
  const UserProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row with avatar + username + @handle
          Row(
            children: [
              const CircleAvatar(
                child: Text('A'),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'User Name',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      '@username',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'A short bio about the user goes here...',
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Follow')),
              ElevatedButton(onPressed: () {}, child: const Text('Message')),
            ],
          )
        ],
      ),
    );
  }
}

// 2
import 'package:flutter/material.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Image.network(
              'https://via.placeholder.com/100',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Product Title',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'A brief description of the item goes here...',
                  style: TextStyle(fontSize: 14, color: Colors.black87),
                ),
                SizedBox(height: 8),
                Text(
                  '\$99.99',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
