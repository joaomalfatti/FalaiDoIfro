import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isSecret;
  final List<TextInputFormatter>? inputFormatter;
  final TextStyle? labelStyle;

  CustomTextField({
    super.key,
    required this.icon,
    required this.label,
    this.isSecret = false,
    this.inputFormatter,
    this.labelStyle,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    isObscure = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 15,
      ),
      child: TextFormField(
        inputFormatters: widget.inputFormatter,
        obscureText: isObscure,
        decoration: InputDecoration(
            prefixIcon: Icon(widget.icon, color: const Color(0xFF800080),),
            suffixIcon: widget.isSecret
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    icon: Icon(
                        isObscure ? Icons.visibility : Icons.visibility_off, color: const Color(0xFF800080),),
                  )
                : null,
            labelText: widget.label,
            labelStyle: widget.labelStyle,
            isDense: true,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFF800080), width: 2.0),
              borderRadius: BorderRadius.circular(18),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFF800080), width: 2.0),
              borderRadius: BorderRadius.circular(18),
            ),
      ),
      ),
    );
  }
}
