import 'package:flutter/material.dart';
import 'package:mytrialdb/db/functions.dart';
import 'package:mytrialdb/screen/model.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: ageController,
              decoration: InputDecoration(
                  hintText: 'age', border: OutlineInputBorder()),
            ),
            ElevatedButton(
              onPressed: () async {
                // Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                //   return list();
                // }));

                final _stud =
                      
                       Model(
                        id: 0,
                      name: nameController.text,
                      age: ageController.text);
                     await addStudent(_stud);
               

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.green,
                    content: Text(
                      "Added successfully",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
                nameController.clear();
                ageController.clear();
              },
              child: Text('save'),
            ),
          ],
        ),
      ),
    );
  }
}
