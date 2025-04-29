import 'package:flutter/material.dart';

class PasswordChangeScreen extends StatefulWidget {
  static const routeName = "/index";
  @override
  _PasswordChangeScreenState createState() => _PasswordChangeScreenState();
}

class _PasswordChangeScreenState extends State<PasswordChangeScreen> {
  
  final _formKey = GlobalKey<FormState>();
  final _oldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A237E),
        title: Text(
          'PENGATURAN',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              const Align(
              alignment: Alignment.center, 
              child: Text(
                'UBAH PASSWORD',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0A2574),
                ),
              ),
            ),
            SizedBox(height: 20),
              _buildPasswordField(
                controller: _oldPasswordController,
                labelText: 'Password Lama',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan password lama';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              _buildPasswordField(
                controller: _newPasswordController,
                labelText: 'Password Baru',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan password baru';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              _buildPasswordField(
                controller: _confirmPasswordController,
                labelText: 'Konfirmasi Password Baru',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Konfirmasi password baru';
                  }
                  if (value != _newPasswordController.text) {
                    return 'Password tidak cocok';
                  }
                  return null;
                },
              ),
              SizedBox(height: 44),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Simpan'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordField({
    required TextEditingController controller,
    required String labelText,
    required String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: true,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        // Add grey color to the TextFormField
        fillColor: Colors.grey[200],
        filled: true,
        // Optional: Customize the enabled and focused border colors
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
      validator: validator,
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Implement password change logic here
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Password berhasil diubah')),
      );
    }
  }

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}