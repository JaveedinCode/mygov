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
                Padding(
                  padding: const EdgeInsets.only(bottom:12.0),
                  child: Container(
                    height: 55,
                    color: Colors.grey,
                    child: ListTile(
                      title:
                      Row(children:[
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(bottom:15.0, right:10),
                        child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: const Size.fromHeight(35.0),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        ), 
                        child: const Text('Xidmətlər', style: TextStyle(color:Color.fromARGB(255, 42, 59, 73)),    
                       ),
                   ),
                      ),
                          ),
                        Expanded(child: 
                          Padding(
                      padding: const EdgeInsets.only(bottom:15.0, left: 10),
                      child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 170, 167, 167),
                        minimumSize: const Size.fromHeight(33.0),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ), child: const Text('Qurumlar üzrə', style: TextStyle(color:Color.fromARGB(255, 42, 59, 73))
                      ),
                      ),
                                        ),
                                    ),
                                    ] 
                              ),
                              ),
                  ),
                ),
                  infoCard1(title:'Ailə tərkibim', subtitle: 'Ədliyyə Nazirliyi'),
                   
                  infoCard1(title:'Cərimələrim', subtitle:'Vətəndaşlara Xidmət və Sosial İnnovasiyalar üzrə Dövlət'),
                                   
                  infoCard1(title:'COVID-19 Əks-göstəriş sertifaktım', subtitle:'İcbari Tibbı Sığorta üzrə Dövlət Agentliyi'),
                                  
                  infoCard1(title:'COVID-19 İmmuntet sertifaktım', subtitle:'İcbari Tibbı Sığorta üzrə Dövlət Agentliyi'),
                               
                  infoCard1(title:'COVID-19 Peyvənd sertifaktım', subtitle:'İcbari Tibbı Sığorta üzrə Dövlət Agentliyi'),
                                   
                  infoCard1(title:'Daşınmaz əmlak məlumatlarım', subtitle:'Əmlak Məsələləri Dövlət Xidməti'),
                                
                  infoCard1(title:'Digər xidmət ödənişləri', subtitle:'Vətəndaşlara Xidmət və Sosial İnnovasiyalar üzrə Dövlət'),
                                   
                  infoCard1(title:'Diplomlarım', subtitle:'Elm və Təhsil Nazirliyi'),
                                 
                  infoCard1(title:'Doğum haqqında şəhadətnamələr', subtitle:'Ədliyyə Nazirliyi'),
                                
                  infoCard1(title:'Ədliyyə və məhkəmə ödənişləri', subtitle:'Vətəndaşlara Xidmət və Sosial İnnovasiyalar üzrə Dövlət'),
                             
                  infoCard1(title:'Hərbi qeydiyyatım və xidmət barəsimdə məlumat', subtitle:'Səfərbərlik və hərbi xidmətə çağırış üzrə Dövlət xidməti'),
                               
                  infoCard1(title:'İcazələrin alınması və Monitorinq sitemi', subtitle:'Rəqəmsal inkişaf və Nəqliyyat Nazirliyi'),
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

