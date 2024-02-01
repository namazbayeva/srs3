import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    Task1(),
    Task2(),
    Task3(),
    Task4(),
    Task5(),
    Task6(),
    Task7(),
    Task8(),
    Task9(),
    Task10(),
    Task11(),
   
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
        backgroundColor: Colors.blue,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Task1',
            backgroundColor: Colors.blue,
                    ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tab),
            label: 'Task2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Task3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Task4',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            label: 'Task5',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.radio_button_checked),
            label: 'Task6',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.linear_scale),
            label: 'Task7',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_chart),
            label: 'Task8',
          ),BottomNavigationBarItem(
            icon: Icon(Icons.add_chart),
            label: 'Task9',
          ),BottomNavigationBarItem(
            icon: Icon(Icons.local_phone_sharp),
            label: 'Task10',
          ),BottomNavigationBarItem(
            icon: Icon(Icons.storage),
            label: 'Task11',
          ),
        ],
      ),
    );
  }
}
            


class Task1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Center Left Align'),
        ),
        body: CenterLeftAlign(),
      ),
    );
  }
}

class CenterLeftAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container( 
      color: Colors.grey[300],
      child: Align(
        alignment: Alignment.centerLeft, 
        child: Text(
          'Текст по середине слева',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

class Task2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Center Align'),
        ),
        body: CenterAlign(),
      ),
    );
  }
}

class CenterAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container( 
      color: Colors.grey[300],
      child: Align(
        alignment: Alignment.center, 
        child: Text(
          'Текст по центру',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

class Task3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Center Top Align'),
        ),
        body: CenterTopAlign(),
      ),
    );
  }
}

class CenterTopAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.grey[300],
      child: Align(
        alignment: Alignment.topCenter, 
        child: Text(
          'Текст по центру сверху',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}


class Task4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Column'),
        ),
        body: CustomColumn(),
      ),
    );
  }
}

class CustomColumn extends StatefulWidget {
  @override
  _CustomColumnState createState() => _CustomColumnState();
}

class _CustomColumnState extends State<CustomColumn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, left: 50),
      color: Colors.teal,
      child: Column(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Nazerke Namazbayeva', textDirection: TextDirection.ltr),
          Text('Was born in 2004', textDirection: TextDirection.ltr),
          Text('Right now she is 20 y.o.', textDirection: TextDirection.ltr),
          Text('She is a student', textDirection: TextDirection.ltr),
        ],
      ),
    );
  }
}

class Task5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row'),
        ),
        body: CustomRow(),
      ),
    );
  }
}
class CustomRow extends StatefulWidget {
  @override
  _CustomRowState createState() => _CustomRowState();
}
class _CustomRowState extends State<CustomRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: Colors.teal,
      child: Row(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        verticalDirection: VerticalDirection.down,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget> [
          Text('Tom', textDirection: TextDirection.ltr),
          Text('Bob', textDirection: TextDirection.ltr),
          Text('Sam', textDirection: TextDirection.ltr),
          Text('Alice', textDirection: TextDirection.ltr),
        ],
      )
    );
  }
}
class Task6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expanded'),
        ),
        body: CustomExpanded(),
      ),
    );
  }
}
class CustomExpanded extends StatefulWidget {
  @override
  _CustomExpandedState createState() => _CustomExpandedState();
}
class _CustomExpandedState extends State<CustomExpanded> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: Colors.teal,
      child: Row(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        verticalDirection: VerticalDirection.down,
        children: <Widget> [
          Expanded(child: Text('800 лет назад Се Лянь был наследным принцем королевства Сяньле. Всеобщий любимец, он в довольно юном возрасте вознесся на небеса, но был дважды оттуда изгнан. Теперь Се Лянь в третий раз возносится и становится посмешищем всех трех царств. Выполняя первую работу в качестве небожителя, он встречает таинственного демона, который правит призраками и наводит на небеса ужас.'))
          
        ],
      )
    );
  }
}

class Task7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack'),
        ),
        body: Center(
          child: CustomStack(),
        ),
      ),
    );
  }
}

class CustomStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Stack(
        textDirection: TextDirection.ltr,
        children: <Widget>[
           Container(
              width: 200.0,
              height: 200.0,
              color: Colors.blueGrey,
            ),
          
          Container(
              width: 150.0,
              height: 150.0,
              color: Colors.cyan,
            ),
          
       Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
            ),
          
        ],
      ),
    );
  }
}

class Task8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image'),
        ),
        body: Center(
          child: CustomImage(),
        ),
      ),
    );
  }
}

class CustomImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
        child: Image.network(
          "https://frankfurt.apollo.olxcdn.com/v1/files/317bqtfii4ck-KZ/image;s=1000x700",
        )
    );
  }
}

class Task9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image'),
        ),
        body: Center(
          child: CustomImagee(),
        ),
      ),
    );
  }
}

class CustomImagee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        "assets/desktop/genshinn.jpg",
      
      ),
    );
  }
}

class Task10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button'),
        ),
        body: Center(
          child: CustomButton(),
        ),
      ),
    );
  }
}
class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(onPressed: () {},
        child: Text('TextButton'),
        ),
      SizedBox(
        height: 20,
      ),
      ElevatedButton(onPressed: () {},
      child: Text('ElevatedButton'),
      ),
      SizedBox(
        height: 20,
      ),
        OutlinedButton(
          onPressed: () {},
          child: Text('OutlinedButton'),

        )
      ],
        );
  }}

class Task11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button'),
        ),
        body: Center(
          child: CustomInput(),
        ),
      ),
    );
  }
}

class CustomInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          icon: Icon(Icons.login),
          hintText: "Write your login",
          helperText: "You need to write for entering the system",
        ),
      ),
    );
  }
}