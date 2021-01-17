import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../providers/Profile_Provider.dart';
import 'package:provider/provider.dart';

import 'Custom_Dialog.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final profile_provider = Provider.of<ProfileProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              // top bar
              Container(
                height: 180,
                color: Color.fromRGBO(255, 167, 39, 1),
                child: Stack(
                  alignment: Alignment.center,
                  overflow: Overflow.visible,
                  children: [
                    Positioned(
                      top: 30,
                      left: 20,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 4,
                            ),
                            Text(
                              "Profile",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ]),
                    ),
                    // image
                    Positioned(
                      top: 100,
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            border: Border.all(width: 5, color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: CircleAvatar(
                          backgroundColor: Color.fromRGBO(255, 167, 39, 1),
                          backgroundImage: NetworkImage(
                            "${profile_provider.image}",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // content
              Expanded(
                  child: Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    Expanded(child: SizedBox()),
                    ListTile(
                      title: Text(
                        'Name',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      subtitle: Text('${profile_provider.name}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ),
                    ListTile(
                      title: Text(
                        'Email',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      subtitle: Text('${profile_provider.email}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ),
                    ListTile(
                      title: Text(
                        'Phone',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      subtitle: Text('${profile_provider.phone}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ),
                    Expanded(child: SizedBox()),
                    InkWell(
                      // onTap: profile_provider.updateAttributes,
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return CustomDialogBoxState();
                            });
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        width: MediaQuery.of(context).size.width - 30,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 167, 39, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
