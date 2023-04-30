import 'package:flutter/material.dart';
import 'const.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0, // remove the shadow from app bar
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                _showBottomSheet(context); // show the bottom sheet
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height / 3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 5,
                spreadRadius: 10,
                offset: Offset(0, -1),
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: 5,
                width: 50,
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text('Location'),
                      onTap: () {
                        // TODO: Implement action for location button
                        Navigator.pop(context); // close the bottom sheet
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.history),
                      title: Text('History'),
                      onTap: () {
                        // TODO: Implement action for history button
                        Navigator.pop(context); // close the bottom sheet
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.info),
                      title: Text('About Petpal'),
                      onTap: () {
                        // TODO: Implement action for about button
                        Navigator.pop(context); // close the bottom sheet
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
