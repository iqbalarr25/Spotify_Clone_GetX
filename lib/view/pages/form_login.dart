part of 'pages.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);
  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final FormController _formController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Obx(
          () => _formController.hasLogin.value
              ? const HomePage()
              : buildFormLoginComponent(context),
        ),
      ),
    );
  }

  Widget buildFormLoginComponent(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text("Email atau nama pengguna", style: textWhiteForm),
          buildUsernameForm(),
          SizedBox(height: 20),
          Text("Kata Sandi", style: textWhiteForm),
          buildPasswordForm(),
          SizedBox(height: 45),
          buildLoginButton(context),
          SizedBox(height: 25),
          Center(
            child: RaisedButton(
              child: Text('Masuk tanpa kata sandi',
                  style: textWhiteForgetPassword),
              color: Colors.transparent,
              shape: new RoundedRectangleBorder(
                  side: BorderSide(color: borderForgotPassword),
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget buildUsernameForm() {
    return TextFormField(
      controller: _formController.emailController,
      style: textWhiteLogin,
      cursorColor: whiteColor,
      autofocus: false,
      decoration: InputDecoration(
        filled: true,
        focusColor: inputFormFocus,
        fillColor: inputForm,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: inputForm),
        ),
      ),
    );
  }

  Widget buildPasswordForm() {
    return TextFormField(
      controller: _formController.passwordController,
      style: textWhiteLogin,
      cursorColor: whiteColor,
      obscureText: _formController.obscureText.value,
      autofocus: false,
      decoration: InputDecoration(
        filled: true,
        focusColor: inputFormFocus,
        fillColor: inputForm,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: inputForm),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            _formController.toggle();
          },
          icon: Icon(
              _formController.obscureText.value
                  ? Icons.visibility
                  : Icons.visibility_off,
              color: whiteColor),
        ),
      ),
    );
  }

  Widget buildLoginButton(BuildContext context) {
    return Center(
      child: ButtonTheme(
        minWidth: 125,
        height: 50,
        child: Obx(
          () => RaisedButton(
            child: Text('Masuk', style: textBlackLogin),
            color:
                _formController.buttonLogin.value ? Colors.white : Colors.grey,
            shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            onPressed: () {
              if (_formController.buttonLogin.value) {
                Get.to<void>(()=>const HomePage());
                _formController.login();
              } else {
                () {};
              }
            },
          ),
        ),
      ),
    );
  }
}
