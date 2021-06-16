import 'package:agenda/models/contact.dart';
import 'package:agenda/provider/contacts.dart';
import 'package:agenda/screens/details.dart';
import 'package:agenda/style.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus contatos"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        itemBuilder: builder,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: grayDivider,
            thickness: 1,
          );
        },
        itemCount: listOfContacts.length,
      ),
    );
  }

  Widget builder(BuildContext _, int index) {
    // ignore: unnecessary_statements
    Contact _contact = listOfContacts.elementAt(index);
    return ListTile(
        leading: IconButton(
          icon: Icon(
            (_contact.isFavorite) ? Icons.star : Icons.star_border,
            color: (_contact.isFavorite)
                ? Theme.of(context).primaryColor
                : grayTheme,
            size: 20,
          ),
          onPressed: () {
            setState(() {
              _contact.isFavorite = !_contact.isFavorite;
            });
          },
        ),
        title: Row(
          children: [
            ClipOval(
              child: Image.asset(
                _contact.photo,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 14,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _contact.name,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: grayTheme),
                ),
                Text(
                  _contact.cellPhone,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: grayTheme),
                ),
                Text(_contact.email),
              ],
            )
          ],
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.chevron_right,
            size: 15,
            color: grayTheme,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext _) {
                return Details();
              }),
            );
          },
        ));
  }
}
