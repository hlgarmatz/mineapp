import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mineapp/principal_conteudo.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
  final usuario = TextEditingController();
  final senha = TextEditingController();
  final email = TextEditingController(); // Controlador para o campo de email

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.brown.shade900, // Marrom escuro
              Colors.green.shade800,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(10), // Formato mais quadrado
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 15,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(24.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Entre para viajar entre mundos!',
                        style: TextStyle(
                          fontSize: 36.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      _buildTextField(usuario, 'Usuário', Icons.person, false, 'Insira seu nome de usuário, por favor.'),
                      const SizedBox(height: 16.0),
                      _buildTextField(senha, 'Senha', Icons.lock, true, 'Insira sua senha, por favor.'),
                      const SizedBox(height: 24.0),
                      ElevatedButton(
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            setState(() {
                              isLoading = true;
                            });
                            final url = Uri.parse('https://dummyjson.com/auth/login');
                            final response = await http.post(
                              url,
                              body: {
                                'username': usuario.text,
                                'password': senha.text,
                              },
                            );

                            if (response.statusCode == 200) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PrincipalConteudo()),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Usuário ou senha incorretos'),
                                  backgroundColor: Colors.redAccent,
                                ),
                              );
                            }
                            setState(() {
                              isLoading = false;
                            });
                          }
                        },
                        child: isLoading
                            ? const CircularProgressIndicator(color: Colors.white)
                            : const Text(
                          'Login',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal.shade600, // Verde mais escuro
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5), // Bordas mais quadradas
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      TextButton(
                        onPressed: () {
                          _showForgotPasswordDialog(context);
                        },
                        child: const Text(
                          'Esqueceu a senha?',
                          style: TextStyle(
                            color: Colors.teal, // Cor do texto
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: const BorderSide(color: Colors.teal), // Borda do botão
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        'Venha Conhecer o Nosso Mundo!',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label, IconData icon, bool obscure, String validationMessage) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.green.shade200, Colors.green.shade400],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(5), // Bordas mais quadradas
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscure,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.black54),
          prefixIcon: Icon(icon, color: Colors.black),
          filled: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5), // Bordas mais quadradas
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        ),
        validator: (valor) {
          if (valor == null || valor.isEmpty) {
            return validationMessage; // Retorna a mensagem de validação personalizada
          }
          return null;
        },
      ),
    );
  }

  void _showForgotPasswordDialog(BuildContext context) {
    final emailController = TextEditingController(); // Controlador para o campo de email
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Recuperação de Senha'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Digite seu e-mail para receber instruções de recuperação de senha.',
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text('Enviar', style: TextStyle(color: Colors.teal)),
              onPressed: () {
                // Verificação do email válido
                if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(emailController.text)) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Por favor, insira um e-mail válido.'),
                      backgroundColor: Colors.redAccent,
                    ),
                  );
                  return; // Interrompe a execução se o email não for válido
                }

                // Aqui você pode simular o envio do email
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Instruções de recuperação de senha enviadas para ${emailController.text}.'),
                    backgroundColor: Colors.green,
                  ),
                );
                Navigator.of(context).pop(); // Fecha o diálogo
              },
            ),
            TextButton(
              child: const Text('Fechar', style: TextStyle(color: Colors.teal)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
