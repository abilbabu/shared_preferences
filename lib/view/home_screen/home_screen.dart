import 'package:flutter/material.dart';
import 'package:shared_sample/controller/homeScreen_controller/homescreen_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController namecontroller = TextEditingController();
  
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        await HomescreenController.initSharedprefs();
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            HomescreenController.getData();
            setState(() {});
          },
          child: Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: namecontroller,
                decoration: InputDecoration(
                    hintText: "Enter Name", border: OutlineInputBorder()),
              ),
              ElevatedButton(
                  onPressed: () {
                    HomescreenController.addData(namecontroller.text);
                  },
                  child: Text("Save the data")),
              Expanded(
                  child: Center(
                child: Text(HomescreenController.data.toString()),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
