import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add New Task',
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextFormField(
              maxLines: 4,
              minLines: 4,
              decoration: InputDecoration(
                labelText: 'Description',
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Select Date',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 8,
            ),
            InkWell(
              onTap: (){
                showTaskDatePiker();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('12/12/2022',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: Theme.of(context).primaryColor,
                        )),
              ),
            ),
            ElevatedButton(onPressed: (){}, child: Text('Submit')),
          ],
        ),
      ),
    );
  }

  void showTaskDatePiker(){
    showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));

  }
}
