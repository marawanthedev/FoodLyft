import "./helpers/dependencies.dart";

class LoginScreen extends StatefulWidget {
  List<User> users;
  @override
  LoginScreen(this.users);
  _LoginScreenState createState() => _LoginScreenState();
  final _formKey = GlobalKey<FormState>();
  var userInfo = {
    "email": "",
    "password": "",
  };
  bool paymentSuceeded = true;
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  var userAuthProvider;
}

class _LoginScreenState extends State<LoginScreen> {
  void populateLoginInfo() {
    widget.userInfo['email'] = widget.emailCtrl.text;
    widget.userInfo['password'] = widget.passwordCtrl.text;

    validateLoginInput();
  }

  void validateLoginInput() {
    widget.userAuthProvider.users.forEach((user) {
      print(user.email);
      print(user.password);
      if (user.email == widget.userInfo['email']) {
        if (user.password == widget.userInfo['password']) {
          widget.userAuthProvider.addUserInAuth(user);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RestaurantMenu()));
          print("Login successfull");
          return;
        } else {
          print("Password is incorrect");
        }
      } else {
        print("Incorrect userinfo");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    widget.userAuthProvider = Provider.of<UserAuthProvider>(context);

    return Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 20, bottom: 20),
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: CustomAppBar(),
            ),
            body: Builder(
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
                        child: PreferredSize(
                          child: FormDivider(),
                          preferredSize: Size.fromHeight(70),
                        ),
                      )),
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 15),
                          padding: EdgeInsets.only(left: 40, right: 40),
                          child: SingleChildScrollView(
                            child: Form(
                              key: widget._formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  FormInput(
                                    inputHeight: 65,
                                    inputWidth: 350,
                                    controller: widget.emailCtrl,
                                    hideInputValue: false,
                                    prefixIcon: Image(
                                        height: 30,
                                        image: AssetImage(
                                          "assets/images/user.png",
                                        )),
                                    placeHolder: 'Email',
                                    placeHolderStyle: TextStyle(
                                        fontSize: 20, fontFamily: 'Roboto'),
                                    contentPadding:
                                        EdgeInsets.only(top: 12.5, left: 5),
                                    marginRight: 0,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter a valid email';
                                      }
                                      return null;
                                    },
                                  ),
                                  FormInput(
                                    inputHeight: 65,
                                    inputWidth: 350,
                                    controller: widget.passwordCtrl,
                                    hideInputValue: true,
                                    prefixIcon: Image(
                                        height: 30,
                                        image: AssetImage(
                                          "assets/images/password.png",
                                        )),
                                    placeHolder: 'Password',
                                    placeHolderStyle: TextStyle(
                                        fontSize: 20, fontFamily: 'Roboto'),
                                    contentPadding:
                                        EdgeInsets.only(top: 12.5, left: 5),
                                    marginRight: 0,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter your password';
                                      }
                                      return null;
                                    },
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 20),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16.0),
                                      child: SizedBox(
                                        width: 400,
                                        height: 50,
                                        child: RaisedButton(
                                          onPressed: () {
                                            // Validate returns true if the form is valid, otherwise false.
                                            if (widget._formKey.currentState
                                                .validate()) {
                                              // If the form is valid, display a snackbar. In the real world,
                                              // you'd often call a server or save the information in a database.

                                              Scaffold.of(ctx)
                                                  .showSnackBar(SnackBar(
                                                content: Text(
                                                  'Processing Login Data',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                backgroundColor:
                                                    HexColor("F2A22C"),
                                              ));
                                              this.setState(() {
                                                populateLoginInfo();
                                              });
                                            }
                                          },
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              side: BorderSide(
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 0),
                                              )),
                                          child: Text("Login",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.normal,
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
                      ),
                      Footer()
                    ],
                  ),
                ),
              ),
            )));
  }
}
