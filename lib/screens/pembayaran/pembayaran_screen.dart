import 'package:book_app/components/default_button.dart';
import 'package:flutter/material.dart';

class PembayaranScreen extends StatefulWidget {
  const PembayaranScreen({Key? key}) : super(key: key);

  @override
  State<PembayaranScreen> createState() => _PembayaranScreenState();
}

class _PembayaranScreenState extends State<PembayaranScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color.fromARGB(255, 248, 150, 13),
        title: Text("Konfirmasi Pembayaran",
        
          style: TextStyle(color: Colors.black),
        ),
      ),
    
    

    );
  }
}
