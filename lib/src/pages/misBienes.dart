import 'package:flutter/material.dart';

class MisBienes  extends StatelessWidget {
  @override
      Widget build(BuildContext context) {
        return MaterialApp(

          debugShowCheckedModeBanner: false,
          title: 'ListViews',
          theme: ThemeData(
            backgroundColor: Color.fromRGBO(140, 208, 242, 1),
            primarySwatch: Colors.blue,
          ),
          home: Scaffold(
            backgroundColor: Color.fromRGBO(140, 208, 242, 1),
            appBar: AppBar(title: Text('Mis Bienes')),
            body: MisBienesView(),
          ),
        );
      }
    }

    class MisBienesView extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return _myListView(context);
      }
    }

void actionTest() {
    print('asdsad');
  }

    class DetalleBienView extends StatelessWidget {
      @override
      final test = 'Lorem ipsum dolor sit amet consectetur ';
      final data;
      DetalleBienView({this.data});
      

      Widget build(BuildContext context) {
          return Scaffold(
              backgroundColor: Color.fromRGBO(140, 208, 242, 1),
              appBar: AppBar(
                  title: Text('${data}'),
                  leading: new IconButton(
                    icon: new Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.of(context).pop(),
                  ), 
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: <Widget>[
                      Card(
                        child:Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 25 ),
                  child: 
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            ListTile(
                              title: Text("Número #"),
                              subtitle: Text('19232'),
                            ),
                            ListTile(
                              title: Text("Estado Actual"),
                              subtitle: Text("Robado"),
                            ),
                             new SizedBox(
                              
                              width: 300.0,
                              height: 120.0,
                              child:   ListTile(
                              title: Text("Descripción del bien"),
                              subtitle: Text(test+test+test),
                            ),
                            ),
                          
                            new SizedBox(
                              
                              width: 300.0,
                              height: 60.0,
                              child: new RaisedButton(
                                child: new Text('Modificar Datos'),
                                onPressed: actionTest,
                              ),
                            ),
                            new SizedBox(
                              width: 300.0,
                              height: 60.0,
                              child: new RaisedButton(
                                child: new Text('Descargar Cerficado'),
                                onPressed: actionTest,
                              ),
                            ),
                            new SizedBox(
                              width: 300.0,
                              height: 60.0,
                              child: new RaisedButton(
                                child: new Text('Cambiar Estado'),
                                onPressed: actionTest,
                              ),
                            ),
                          ],
                        )),
                      ),
                    ],
                  ),
                ),
              )
          );
    }

  }

    // replace this function with the code in the examples
    Widget _myListView(BuildContext context) {
    
      final europeanCountries = ['HUAWEI P9', 'PS4', 'HUAWEI P9', 'HUAWEI P9', 
              'HUAWEI P9', 'HUAWEI P9', 'HUAWEI P9', 'HUAWEI P9', 'Refrigerador',
              ];

      return ListView.builder(
          itemCount: europeanCountries.length,
          itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: FlutterLogo(size: 56.0),
              title: Text(europeanCountries[index]),
              subtitle: Text('Here is a second line'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => DetalleBienView(
                      data: europeanCountries[index],
                      )
                      )
                  );
              },
            ),
          );    
        },
      );
    }

    