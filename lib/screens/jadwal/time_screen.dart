import 'package:flutter/material.dart';
import 'package:flutter/src/material/time.dart';

class TimeScreen extends StatefulWidget {
  const TimeScreen({Key? key}) : super(key: key);

  @override
  State<TimeScreen> createState() => _TimeScreenState();
}

class _TimeScreenState extends State<TimeScreen> {
  TimeOfDay time = TimeOfDay(hour: 10, minute:30);
  @override
  Widget build(BuildContext context) {
    final hours = time.hour.toString().padLeft(2, '0');
    final minutes = time.minute.toString().padLeft(2, '0');
    return Scaffold(
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$hours:$minutes',
              style: TextStyle(fontSize: 32),     
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                child: Text('Bayar'),
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
          ],
        ),
      ),
    ); 
  }
}