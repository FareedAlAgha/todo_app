import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Slidable(

        startActionPane: ActionPane(
          extentRatio: 0.2,
          motion: DrawerMotion(),
          children: [
            SlidableAction(
              onPressed: (buildContext) {},
              backgroundColor: Colors.red,
              label: 'Delete',
              icon: Icons.delete,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                bottomLeft: Radius.circular(18),
              ),
            )
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'This is Title',
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(color: Theme.of(context).primaryColor),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text('This is Description'),
                  ],
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Theme.of(context).primaryColor,
                ),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 32,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
