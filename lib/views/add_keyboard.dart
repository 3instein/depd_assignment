import 'package:flutter/material.dart';

class AddKeyboardPage extends StatefulWidget {
  const AddKeyboardPage({super.key});

  @override
  State<AddKeyboardPage> createState() => _AddKeyboardPageState();
}

class _AddKeyboardPageState extends State<AddKeyboardPage> {
  var layout = ['TKL', '75', '65', '60'];
  String dropdownValue = 'TKL';

  @override
  void initState() {
    super.initState();
  }

  final _loginKey = GlobalKey<FormState>();
  final ctrlName = TextEditingController();
  final ctrlMaker = TextEditingController();
  final ctrlLayout = TextEditingController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(220, 215, 213, 100),
        title: const Text('Add Keyboard'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _loginKey,
          child: Column(
            children: [
              TextFormField(
                controller: ctrlName,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  labelText: "Keyboard name",
                  prefixIcon: Icon(Icons.abc),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  return value.toString().isEmpty
                      ? 'Fields cannot be empty!'
                      : null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: ctrlMaker,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  labelText: "Keyboard maker",
                  prefixIcon: Icon(Icons.abc),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  return value.toString().isEmpty
                      ? 'Fields cannot be empty!'
                      : null;
                },
              ),
              const SizedBox(height: 16),
              DropdownButton(
                  isExpanded: true,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  value: dropdownValue,
                  items: layout.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  }),
              const SizedBox(height: 32),
              ElevatedButton(onPressed: () {}, child: const Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
