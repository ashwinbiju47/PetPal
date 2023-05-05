import 'package:flutter/material.dart';
// ignore: unused_import
import 'const.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, size: 45),
          onPressed: () {
            _showBottomSheet(context);
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
        actions: [
          Container(
            width: 60,
            child: Expanded(
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: const Icon(Icons.person, color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Center(
          child: Container(
        margin: const EdgeInsets.only(right: 18, left: 18),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: RichText(
                  text: TextSpan(
                    text: "Explore",
                    children: const [
                      TextSpan(
                        text: " Options",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.only(top: 10, bottom: 8),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.search),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 10),
                            border: InputBorder.none,
                            hintText: "Search....",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                            )),
                      ))
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 9,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 15),
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Expanded(
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.grey.shade300,
                        image: const DecorationImage(
                          image: AssetImage("assets/images/bg.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                itemCount: 3,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Flexible(
              flex: 4,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 15),
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300,
                      image: const DecorationImage(
                        image: AssetImage("assets/images/bg.png"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                itemCount: 3,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Flexible(
              flex: 4,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 15),
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300,
                      image: const DecorationImage(
                        image: AssetImage("assets/images/bg.png"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                itemCount: 3,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      )),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height / 3,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 5,
                spreadRadius: 10,
                offset: const Offset(0, -1),
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
                      leading: const Icon(Icons.location_on),
                      title: const Text('Location'),
                      onTap: () {
                        //  Implement action for location button
                        Navigator.pop(context); // close the bottom sheet
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.history),
                      title: const Text('History'),
                      onTap: () {
                        //  Implement action for history button
                        Navigator.pop(context); // close the bottom sheet
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.info),
                      title: const Text('About Petpal'),
                      onTap: () {
                        //  Implement action for about button
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
