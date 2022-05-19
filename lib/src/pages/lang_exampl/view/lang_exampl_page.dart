import 'package:flutter/material.dart';

import '../../../common/l10n/generated/l10n.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: ListTile(
              leading: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Lang.load(const Locale('en'));
                  });
                },
                child: const Text('ENGLISH'),
              ),
              trailing: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Lang.load(const Locale('ru'));
                  });
                },
                child: const Text('Русский'),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Text(
                    Lang.of(context).pageHomeListTitle,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text(""),
                  Text(
                    Lang.of(context).pageHomeSamplePlaceholder('John'),
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    Lang.of(context)
                        .pageHomeSamplePlaceholdersOrdered('John', 'Doe'),
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    Lang.of(context).pageHomeSamplePlural(2),
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    Lang.of(context).pageHomeSampleTotalAmount(2500.0),
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    Lang.of(context).pageHomeSampleCurrentDateTime(
                        DateTime.now(), DateTime.now()),
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ))
        ],
      ),
    );
  }
}
