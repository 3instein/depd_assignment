import 'package:depd_mission1/views/detail_keyboard.dart';
import 'package:flutter/material.dart';

class AddKeyboardPage extends StatefulWidget {
  const AddKeyboardPage({super.key});

  @override
  State<AddKeyboardPage> createState() => _AddKeyboardPageState();
}

class _AddKeyboardPageState extends State<AddKeyboardPage> {
  var layout = ['TKL', '75%', '65%', '60%'];
  String? _dropdownValue = null;

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
                  prefixIcon: Icon(Icons.keyboard),
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
                  prefixIcon: Icon(Icons.keyboard),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  return value.toString().isEmpty
                      ? 'Fields cannot be empty!'
                      : null;
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField(
                  isExpanded: true,
                  hint: const Text("Layout"),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  value: _dropdownValue,
                  items: layout.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  validator: (value) {
                    return value == null ? 'Option be selected' : null;
                  },
                  onChanged: (String? value) {
                    setState(() {
                      _dropdownValue = value!;
                    });
                  }),
              const SizedBox(height: 32),
              ElevatedButton(
                  onPressed: () {
                    if (_loginKey.currentState!.validate()) {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Add keyboard confirmation'),
                              content: Text(
                                  'Keyboard name: ${ctrlName.text}\nKeyboard maker: ${ctrlMaker.text}\nKeyboard layout: ${_dropdownValue.toString()}'),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Okay'),
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil<dynamic>(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const DetailKeyboardPage()),
                                      (route) => false,
                                    );
                                  },
                                ),
                              ],
                            );
                          });
                    } else {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Add keyboard failed'),
                              content:
                                  const Text("Please fill all the fields!"),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Okay'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          });
                    }
                  },
                  child: const Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
