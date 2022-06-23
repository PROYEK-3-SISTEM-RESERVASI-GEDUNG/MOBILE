import 'package:book_app/components/default_button.dart';
import 'package:flutter/material.dart';

class JadwalScreen extends StatefulWidget {
  const JadwalScreen({Key? key}) : super(key: key);

  @override
  State<JadwalScreen> createState() => _JadwalScreenState();
}

class _JadwalScreenState extends State<JadwalScreen> {
  DateTime initialDate = DateTime.now();
  DateTime firstDate = DateTime.utc(2002, 1, 1);
  DateTime lastDate = DateTime.utc(2050, 1, 1);
  TimeOfDay initialTime = TimeOfDay.now();
  TimeOfDay time = TimeOfDay(hour: 10, minute: 30);
  @override
  Widget build(BuildContext context) {
    final hours = time.hour.toString().padLeft(2, '0');
    final minutes = time.minute.toString().padLeft(2, '0');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pilih Jadwal",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(29),
        child: Column(
          children: [
            CalendarDatePicker(
                initialDate: initialDate,
                firstDate: firstDate,
                lastDate: lastDate,
                onDateChanged: (DateTime dateTime) {
                  print(dateTime);
                }),
            // sCenter(
            Text(
              '$hours:$minutes',
              style: TextStyle(fontSize: 32),
            ),
            const SizedBox(height: 16),

            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                child: Text('Pilih Jam'),
                onPressed: () async {
                  TimeOfDay? newTime = await showTimePicker(
                    context: context,
                    initialTime: time,
                  );

                  // if cancel
                  if (newTime == null) return;

                  // if ok
                  setState(() => time = newTime);
                },
              ),
            ),

            DefaultButton(
                text: "Bayar",
                press: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 500,
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              "Gedung Pertemuan  Patra Indramayu",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        );
                      });
                }),
          ],
        ),
      ),
    );
  }
}
