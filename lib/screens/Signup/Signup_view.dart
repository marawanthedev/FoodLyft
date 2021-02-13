import 'package:foodlyft/app/dependencies.dart';
import 'helpers/dependencies.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();

  final _formKey = GlobalKey<FormState>();
  var userInfo = {"email": "", "password": ""};
  List<User> users = List<User>();
  bool paymentSuceeded = true;
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final confrimPasswordCtrl = TextEditingController();
  final nameCtrl = TextEditingController();
  final numberCtrl = TextEditingController();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // object type is related to abstract class = Getit var name

  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Colors.white,
        padding: EdgeInsets.only(top: 20, bottom: 20),
        child: Scaffold(
            // backgroundColor: Colors.white,
            appBar: PreferredSize(
                child: CustomAppBar(), preferredSize: Size.fromHeight(60)),
            body: ChangeNotifierProvider.value(
              value: dependency<SignupViewModel>(),
              child:
                  Consumer<SignupViewModel>(builder: (context, viewmodel, _) {
                return Builder(
                  builder: (ctx) => SingleChildScrollView(
                    child: Container(
                      width: 450,
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                              child: SocialMediaAppBar(
                            onPressedFunctions: {
                              'google': () => {print("Google")},
                              'facebook': () => {print("Facebook")},
                              'twitter': () => {print("twitter")},
                            },
                          )),
                          Center(
                              child: Container(
                            margin: EdgeInsets.only(top: 40),
                            child: FormDivider(),
                          )),
                          Center(
                            child: Container(
                              margin: EdgeInsets.only(top: 15),
                              padding: EdgeInsets.only(left: 40, right: 40),
                              child: Form(
                                key: widget._formKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    FormInput(
                                      inputWidth: 350,
                                      inputHeight: 65,
                                      marginRight: 0,
                                      hideInputValue: false,
                                      controller: widget.emailCtrl,
                                      prefixIcon: Image(
                                          height: 30,
                                          image: AssetImage(
                                            "assets/images/user.png",
                                          )),
                                      placeHolder: "Email",
                                      placeHolderStyle: TextStyle(
                                          fontSize: 20, fontFamily: 'Roboto'),
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please enter a valid email';
                                        }
                                        if (!RegExp(
                                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                            .hasMatch(value)) {
                                          return "Please Enter A valid email";
                                        }
                                        return null;
                                      },
                                      contentPadding:
                                          EdgeInsets.only(top: 12.5, left: 5),
                                    ),
                                    FormInput(
                                      inputWidth: 350,
                                      inputHeight: 65,
                                      marginRight: 0,
                                      hideInputValue: true,
                                      controller: widget.passwordCtrl,
                                      prefixIcon: Image(
                                          height: 30,
                                          image: AssetImage(
                                            "assets/images/password.png",
                                          )),
                                      placeHolder: "Password",
                                      placeHolderStyle: TextStyle(
                                          fontSize: 20, fontFamily: 'Roboto'),
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please enter a your password';
                                        }
                                        if (value.length < 6) {
                                          return "Please Enter A valid pasword";
                                        }
                                        return null;
                                      },
                                      contentPadding:
                                          EdgeInsets.only(top: 12.5, left: 5),
                                    ),
                                    FormInput(
                                      inputWidth: 350,
                                      inputHeight: 65,
                                      marginRight: 0,
                                      hideInputValue: true,
                                      controller: widget.confrimPasswordCtrl,
                                      prefixIcon: Image(
                                          height: 30,
                                          image: AssetImage(
                                            "assets/images/password.png",
                                          )),
                                      placeHolder: "Confirm Password",
                                      placeHolderStyle: TextStyle(
                                          fontSize: 20, fontFamily: 'Roboto'),
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please confirm your password';
                                        }
                                        if (value != widget.passwordCtrl.text) {
                                          return "Password are not matching";
                                        }
                                        return null;
                                      },
                                      contentPadding:
                                          EdgeInsets.only(top: 12.5, left: 5),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        FormInput(
                                          inputWidth: 155,
                                          inputHeight: 65,
                                          marginRight: 0,
                                          hideInputValue: false,
                                          controller: widget.nameCtrl,
                                          prefixIcon: Image(
                                              height: 30,
                                              image: AssetImage(
                                                "assets/images/name.png",
                                              )),
                                          placeHolder: "Name",
                                          placeHolderStyle: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Roboto'),
                                          validator: (value) {
                                            if (value.isEmpty) {
                                              return 'Please Enter your Name';
                                            }
                                            return null;
                                          },
                                          contentPadding: EdgeInsets.only(
                                              top: 12.5, left: 5),
                                        ),
                                        FormInput(
                                          inputWidth: 155,
                                          inputHeight: 65,
                                          marginRight: 0,
                                          hideInputValue: false,
                                          controller: widget.numberCtrl,
                                          prefixIcon: Image(
                                              height: 30,
                                              image: AssetImage(
                                                "assets/images/phone.png",
                                              )),
                                          placeHolder: "Phone ",
                                          placeHolderStyle: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Roboto'),
                                          validator: (value) {
                                            if (value.isEmpty) {
                                              return 'Please Enter your  Number';
                                            }
                                            return null;
                                          },
                                          contentPadding: EdgeInsets.only(
                                              top: 12.5, left: 5),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 16.0),
                                        child: SizedBox(
                                          width: 400,
                                          height: 50,
                                          child: RaisedButton(
                                            onPressed: () async {
                                              // Validate returns true if the form is valid, otherwise false.
                                              if (widget._formKey.currentState
                                                  .validate()) {
                                                // If the form is valid, display a snackbar. In the real world,
                                                // you'd often call a server or save the information in a database.

                                                Scaffold.of(ctx)
                                                    .showSnackBar(SnackBar(
                                                  content: Text(
                                                    'Processing Signup Data',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                  backgroundColor:
                                                      HexColor("F2A22C"),
                                                ));
                                                final user = User(
                                                  email: widget.emailCtrl.text,
                                                  password:
                                                      widget.passwordCtrl.text,
                                                  name: widget.nameCtrl.text,
                                                  phoneNumber:
                                                      widget.numberCtrl.text,
                                                  imageSrc: null,
                                                );
                                                if (!await viewmodel
                                                    .checkForDuplicity(user)) {
                                                  Scaffold.of(ctx)
                                                      .showSnackBar(SnackBar(
                                                    content: Text(
                                                      'Signup successfull',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    backgroundColor:
                                                        HexColor("F2A22C"),
                                                  ));
                                                  Timer(
                                                      Duration(seconds: 2),
                                                      () => viewmodel
                                                          .addUser(user));
                                                } else {
                                                  Scaffold.of(ctx)
                                                      .showSnackBar(SnackBar(
                                                    content: Text(
                                                      'Email Address is already in use',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    backgroundColor:
                                                        HexColor("F2A22C"),
                                                  ));
                                                }
                                              }
                                            },
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                side: BorderSide(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0),
                                                )),
                                            child: Text("Signup",
                                                style: TextStyle(
                                                    //color: Colors.white,
                                                    fontFamily: 'Roboto',
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 20)),
                                            color: HexColor("123C69"),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          CustomFooter(),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            )));
  }
}
