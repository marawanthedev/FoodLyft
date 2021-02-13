import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodlyft/app/dependencies.dart';
import 'package:foodlyft/providers/UserAuth.provider.dart';
import 'package:provider/provider.dart';

import 'Profile_viewmodel.dart';
import 'widgets/Custom_Dialog.dart';
   class Constants {
  Constants._();
  static const double padding = 20;
  static const double avatarRadius = 45;
  
}
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
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
    final userAuthProvider = Provider.of<UserAuthProvider>(context);

    var userInAuth;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ChangeNotifierProvider.value(
        value: dependency<ProfileViewModel>(),
        // child:
        //     Consumer<SignupViewModel>(builder: (context, viewmodel, _) {
        //   return Builder(
        //     builder: (ctx) => SingleChildScrollView(
        child: Consumer<ProfileViewModel>(builder: (context, viewmodel, _) {
          userInAuth=viewmodel.getUserInAuth();
          return SingleChildScrollView(
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
                                border:
                                    Border.all(width: 5, color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: CircleAvatar(
                              backgroundColor: Color.fromRGBO(255, 167, 39, 1),
                              backgroundImage: NetworkImage(
                                "${userInAuth != null ? userInAuth.imageSrc != null ? userInAuth.imageSrc : "https://i.pinimg.com/originals/57/1b/a6/571ba67a5d3cf25533fd4ed7f29a79cb.jpg" : "https://i.pinimg.com/originals/57/1b/a6/571ba67a5d3cf25533fd4ed7f29a79cb.jpg"}",
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
                            "Name",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                          subtitle: Text(
                              '${userInAuth != null ? userInAuth.name : "User Name"}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        ListTile(
                          title: Text(
                            "Email",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                          subtitle: Text(
                              '${userInAuth != null ? userInAuth.email : "User Email"}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        ListTile(
                          title: Text(
                            "Phone",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                          subtitle: Text(
                              '${userInAuth != null ? userInAuth.phoneNumber : ""}',
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
                                  return 
                               




    Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: 
      Stack(children: <Widget>[
      Container(
        padding: EdgeInsets.only(
            left: Constants.padding,
            top: Constants.avatarRadius + Constants.padding,
            right: Constants.padding,
            bottom: Constants.padding),
        margin: EdgeInsets.only(top: Constants.avatarRadius),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(Constants.padding),
            boxShadow: [
              BoxShadow(
                  color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
            ]),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Color.fromRGBO(255, 167, 39, 1),
                ),
                hintText: 'What do people call you?',
                labelText: '${userInAuth != null ?userInAuth.name:""}',
                focusColor: Color.fromRGBO(255, 167, 39, 1),
              ),
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: Color.fromRGBO(255, 167, 39, 1),
                ),
                hintText: 'What is your email address?',
                labelText: '${userInAuth != null ?userInAuth.email:""}',
              ),
            ),
            TextFormField(
              controller: phoneController,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.phone_android_outlined,
                  color: Color.fromRGBO(255, 167, 39, 1),
                ),
                hintText: 'What is your phone number?',
                labelText: '${userInAuth != null ?userInAuth.phoneNumber:""}',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        margin: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                            color: Color.fromRGBO(255, 167, 39, 1),
                            width: 3,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(255, 167, 39, 1)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        // print(nameController.text);
                        if (nameController.text.isEmpty) {
                          nameController.text = userInAuth.name;
                        }
                        if (emailController.text.isEmpty) {
                          emailController.text = userInAuth.email;
                        }
                        if (phoneController.text.isEmpty) {
                          phoneController.text = userInAuth.phoneNumber;
                        }
                        print(userInAuth.id);

                        
                        viewmodel.updateUserInfo(userInAuth.id,{"name":nameController.text,
                        "email":emailController.text,"phoneNumber":phoneController.text});
                        // userAuthProvider.updateAttributes(nameController.text,
                        //     emailController.text, phoneController.text);
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.all(3),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 167, 39, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(
                          child: Text(
                            'Save',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ])
    );


                                });

                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 20),
                            width: MediaQuery.of(context).size.width - 30,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 167, 39, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Center(
                              child: Text(
                                'Edit Profile',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
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
          );
        }),
      ),
    );
  }
}
