import 'package:flutter/material.dart';
import 'package:mygov/widgets/card_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App', 
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 197, 195, 195),
        appBar: AppBar(
          title: const Text('Xidmətlər' , style: TextStyle(color: Color.fromARGB(255, 42, 59, 73),fontWeight:FontWeight.bold),), centerTitle: true, actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.search), iconSize: 27,)],
        ),
        body:   SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(left:20, top:30, right: 20),
            child: Column(
              children: [
                Container
                (height: 50,
                  decoration:  BoxDecoration(color: const Color.fromARGB(255, 170, 167, 167),
                  borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children:[
                    Padding(
                      padding: EdgeInsets.only(left:50),
                      child: Text('Xidmətlər',style: TextStyle(color:Color.fromARGB(255, 42, 59, 73),fontWeight:FontWeight.bold, fontSize: 17),
                      ),
                    ), 
                    Padding(
                      padding: EdgeInsets.only(left:100),
                      child: Text('Qurumlar üzrə',style: TextStyle(color:Color.fromARGB(255, 42, 59, 73),fontWeight:FontWeight.bold, fontSize: 17),
                    ),
                   ),
                   ],
                   ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top:20),
                    child: infoCard(title:'Ailə tərkibim', subtitle: 'Ədliyyə Nazirliyi',),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: infoCard(title:'Cərimələrim', subtitle:'Vətəndaşlara Xidmət və Sosial İnnovasiyalar üzrə Dövlət',),
                  ),
                        Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: infoCard(title:'COVID-19 Əks-göstəriş sertifaktım', subtitle:'İcbari Tibbı Sığorta üzrə Dövlət Agentliyi',),
                  ),
                        Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: infoCard(title:'COVID-19 İmmuntet sertifaktım', subtitle:'İcbari Tibbı Sığorta üzrə Dövlət Agentliyi',),
                  ),
                        Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: infoCard(title:'COVID-19 Peyvənd sertifaktım', subtitle:'İcbari Tibbı Sığorta üzrə Dövlət Agentliyi',),
                  ),
                        Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: infoCard(title:'Daşınmaz əmlak məlumatlarım', subtitle:'Əmlak Məsələləri Dövlət Xidməti',),
                  ),
                        Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: infoCard(title:'Digər xidmət ödənişləri', subtitle:'Vətəndaşlara Xidmət və Sosial İnnovasiyalar üzrə Dövlət',),
                  ),
                    Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: infoCard(title:'Diplomlarım', subtitle:'Elm və Təhsil Nazirliyi',),
                  ),
                    Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: infoCard(title:'Doğum haqqında şəhadətnamələr', subtitle:'Ədliyyə Nazirliyi',),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: infoCard(title:'Ədliyyə və məhkəmə ödənişləri', subtitle:'Vətəndaşlara Xidmət və Sosial İnnovasiyalar üzrə Dövlət',),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: infoCard(title:'Hərbi qeydiyyatım və xidmət barəsimdə məlumat', subtitle:'Səfərbərlik və hərbi xidmətə çağırış üzrə Dövlət xidməti',),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: infoCard(title:'İcazələrin alınması və Monitorinq sitemi', subtitle:'Rəqəmsal inkişaf və Nəqliyyat Nazirliyi',),
                  ),
              ],
            ),
          ),
          ),
          bottomNavigationBar: 
          BottomNavigationBar(type:BottomNavigationBarType.fixed,
            items: const [BottomNavigationBarItem(icon:Icon(Icons.home), label: 'Ana səhifə'),
            BottomNavigationBarItem(icon:Icon(Icons.square), label: 'Xidmətlər'),
            BottomNavigationBarItem(icon:Icon(Icons.person), label: 'Məlumatlarım'),
            BottomNavigationBarItem(icon:Icon(Icons.line_style ), label: 'Kabinet'),
             ],
            ),
        ),
      );
  }
}
