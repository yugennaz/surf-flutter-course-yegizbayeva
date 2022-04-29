import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_list_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SightListScreen(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyFirstStatefultWidget(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyFirsStatelesstWidget extends StatelessWidget {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    counter++;
    print(counter);
    //Всегда 1, Stateless пересоздается при hotreload.
    return Container(
      child: Center(
        child: Text('Hello! $counter'),
      ),
    );
  }
}
// Ошибка: The getter 'context' isn't defined for the class 'MyFirstWidget'
// Type getContextRuntimeType() => context.runtimeType;

class MyFirstStatefultWidget extends StatefulWidget {
  @override
  _MyFirstStatefultWidget createState() => _MyFirstStatefultWidget();
}

class _MyFirstStatefultWidget extends State<MyFirstStatefultWidget> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    _counter++;
    print(_counter++);
    //Счетчик увеличивается при хотрелоад, выводится значение 2,
    // у Stateful состояние живёт дольше виджета и при перерисовке контекст не теряется.
    return Container(
      child: Center(
        child: Text('Hello! $_counter'),
      ),
    );
  }
}
