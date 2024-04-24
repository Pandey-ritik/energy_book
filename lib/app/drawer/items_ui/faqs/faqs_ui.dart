import 'package:digital_discom/app/global/appcolor.dart';
import 'package:flutter/material.dart';
class FaqsUi extends StatefulWidget {

  const FaqsUi({super.key});

  @override
  State<FaqsUi> createState() => _FaqsUiState();
}

class _FaqsUiState extends State<FaqsUi> {
  int selectedTile = -1;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              //Icon(Icons.arrow_back_ios_new_outlined),
              SizedBox(width: 100,),
              const Text("FAQs",style: TextStyle(fontWeight: FontWeight.w500),),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            key: Key(selectedTile.toString()),
            itemCount: getData().length,
            itemBuilder: (context, index) {
              final Faqs faq = getData()[index];
              return Card(
                color: appcolor.white,
                surfaceTintColor:  appcolor.white,
                child: ExpansionTile(
                  key: Key(index.toString()),
                  initiallyExpanded: index == selectedTile,
                  title: Text(faq.title),
                  shape: const Border(),
                  children: [
                    Container(color: appcolor.Whiteback,height: 8,),
                    ColoredBox(color:  appcolor.Whiteback,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(faq.message),
                        )),
                  ],onExpansionChanged: (newState){
                  if (newState) {
                    setState(() {
                      selectedTile = index;
                    });
                  } else {
                    setState(() {
                      selectedTile = -1;
                    });
                  }
                },
                ),
              );
            },
          ),
        ));
  }

  List<Faqs> getData(){
    List<Faqs> list = [];
    list.add(Faqs("What is Lorem Ipsum?", "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here, making it look like readable English."));
    list.add(Faqs("Why do we use it?", "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, 2"));
    list.add(Faqs("What is Lorem Ipsum? ", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer"));
    list.add(Faqs("Why do we use it? ", "t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum "));
    list.add(Faqs("Where can I get some?", "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't lo"));
    return list;
  }
}

class Faqs{
  String title;
  String message;

  Faqs(this.title, this.message);
}
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
