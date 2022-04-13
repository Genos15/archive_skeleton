import 'package:fluent_ui/fluent_ui.dart';

void contactSupportUseCase(BuildContext context) => showDialog(
      context: context,
      builder: (context) => ContentDialog(
        title: const Text('Contact Support'),
        content: RichText(
          text: const TextSpan(
            text: 'contact us at ',
            style: TextStyle(color: Colors.grey),
            children: [
              TextSpan(
                text: '699-99-99-99',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(text: '\n\nfrom '),
              TextSpan(
                text: '9:00',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(text: ' to '),
              TextSpan(
                text: '21:30',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        actions: [
          Button(
            child: const Text('Ok'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    ).ignore();
