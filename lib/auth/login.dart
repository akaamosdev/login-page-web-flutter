import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login_form_web/components/colors_component.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isRemember = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        height: MediaQuery.of(context).size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height - 200,
                width: MediaQuery.of(context).size.width / 2 - 200,
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 5)],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    /* border: Border.all(width: 2, color: Colors.black) */
                    ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Connexion".toUpperCase(),
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text('Vous n\'avez pas de compte ?'),
                        TextButton(onPressed: () {}, child: Text('S\'inscrire'))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Adresse Email',
                      style: _styleBold(),
                    ),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Mot de passe ', style: _styleBold()),
                        TextButton(
                            onPressed: () {},
                            child: Text('Mot de passe oublié ?'))
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: _isRemember,
                            onChanged: (valu) {
                              setState(() {
                                _isRemember = !_isRemember;
                              });
                            }),
                        Text('Se souvenir de moi')
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text('Se connecter'),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(pink_c),
                            textStyle: MaterialStateProperty.all<TextStyle>(
                                TextStyle(fontSize: 16))),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Ou se connecter avec '),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.red)),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/image/google.png',
                                fit: BoxFit.contain,
                                height: 20,
                              ),
                              Text(
                                'GOOGLE',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.blue)),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/image/facebook.png',
                                fit: BoxFit.contain,
                                height: 20,
                              ),
                              Text(
                                'Facebook',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
                flex: 2,
                child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/image/bg-page-2.jpg'),
                            fit: BoxFit.fitWidth))))
          ],
        ),
      ),
    );
  }

  TextStyle _styleBold() {
    return TextStyle(fontWeight: FontWeight.bold);
  }
}
