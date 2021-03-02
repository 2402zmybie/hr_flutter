import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormDemo'),
        elevation: 0,
      ),
      body: Theme(
        //只覆盖primaryColor这个主题, 其他的主题都会保留
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegisterForm()
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String username,password;
  bool autovalidate = false;

  void submitRegisterForm() {
    //执行验证
    if(registerFormKey.currentState.validate()) {
      registerFormKey.currentState.save();
      debugPrint('usernmae: ${username}, password: ${password}');
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Registering...'),
        )
      );
    }else {
      setState(() {
        autovalidate = true;
      });
    }

  }

  String validateUsername(value) {
    if(value.isEmpty) {
      return 'Username is required.';
    }
    return null;
  }

  String validatePassword(value) {
    if(value.isEmpty) {
      return 'Password is required.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              helperText: ''
              // border: OutlineInputBorder()
            ),
            onSaved: (value) {
              username = value;
            },
            validator: validateUsername,
            //自动执行验证
            autovalidate: autovalidate,
          ),
          TextFormField(
            //密码输入小圆点
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'Password',
                helperText: ''
                // border: OutlineInputBorder()
            ),
            onSaved: (value) {
              password = value;
            },
            validator: validatePassword,
            //自动执行验证
            autovalidate: autovalidate,
          ),
          SizedBox(height: 32,),
          Container(
            width: double.infinity,
            child: RaisedButton(
              onPressed: submitRegisterForm,
              color: Theme.of(context).accentColor,
              child: Text('Register', style: TextStyle(color: Colors.white),),
              elevation: 0,
            ),
          )
        ],
      ),
    );
  }
}




class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    //初始值
    // textEditingController.text = 'hi';
    textEditingController.addListener(
            () {
          debugPrint('${textEditingController.text}');
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      // onChanged: (value) {
      //   debugPrint('input: ${value}');
      // },
      controller: textEditingController,
      onSubmitted: (value) {
        debugPrint('submit: ${value}');
      },
      decoration: InputDecoration(
          icon: Icon(Icons.subject),
          labelText: 'Title',
          hintText: 'Enter the post title',
          // border: InputBorder.none,   //去掉下划线输入框
          // border: OutlineInputBorder(),  //带边框的输入框
          filled: true
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
    );
  }
}





