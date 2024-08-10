import "package:comai_project/home_page.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";



class TextInputPage extends StatefulWidget {
  const TextInputPage({super.key});

  @override
  State<TextInputPage> createState() => _TextInputPageState();
}

class _TextInputPageState extends State<TextInputPage> {
  String chatText = "";
  TextEditingController productNameCont = TextEditingController();
  TextEditingController whatProvideCont = TextEditingController();
  TextEditingController someFeaturesCont = TextEditingController();

  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                children: [
                  Container(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Icon(
                          Icons.share, 
                          color: Colors.white, 
                          size: 90,)),
                    ),
                  
                  Positioned(
                    right: 17,
                    bottom: 15,
                    child: Icon(
                      Icons.ads_click_rounded,
                      color: Colors.amber, 
                      size: 34,
                      shadows: [
                        Shadow(
                          color: Colors.black45, 
                          blurRadius: 1.5, 
                          offset: Offset.fromDirection(1.2)
                          )],
                          ),
                      ),
                ],),
                  Container(
                    width: 200,
                    child: Text("Now you can get your product or service advertaised easily!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.playfairDisplay(
                        color: Colors.amber[700],
                        fontSize: 12,
                        fontWeight: FontWeight.w500,)),
                  ),
                  SizedBox(height: 18,),
                  Text("Name of Your Product/Service",
                  style: GoogleFonts.playfairDisplay(
                      color: Colors.amber[800],
                      fontSize: 18,
                      fontWeight: FontWeight.w500,)),
              
                  TextFormField(
                    controller: productNameCont,
                    style: GoogleFonts.playfairDisplay(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,),
                    decoration: InputDecoration(
                      hintText: "Write the name",
                      hintStyle: GoogleFonts.playfairDisplay(
                      color: Color.fromARGB(117, 255, 255, 255),
                      fontSize: 14,
                      fontWeight: FontWeight.w300,),
                      fillColor: Color.fromARGB(255, 89, 88, 88),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                      ),
                      ),
                    validator: (value) {
                       if (value == null || value.isEmpty) {
                          return 'This field can\'t be empty';
                        }
                      return null;
                
                    },
                    enableInteractiveSelection: true,
                  ),
                  SizedBox(height: 8,),
              
                  Text("What it Provide",
                  style: GoogleFonts.playfairDisplay(
                      color: Colors.amber[800],
                      fontSize: 18,
                      fontWeight: FontWeight.w500,)),
              
                  TextFormField(
                    controller: whatProvideCont,
                    style: GoogleFonts.playfairDisplay(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,),
                    decoration: InputDecoration(
                      hintText: "What your product do",
                      hintStyle: GoogleFonts.playfairDisplay(
                      color: Color.fromARGB(117, 255, 255, 255),
                      fontSize: 14,
                      fontWeight: FontWeight.w300,),
                      fillColor: Color.fromARGB(255, 89, 88, 88),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                      ),
                      ),
                    maxLines: 4,
                    validator: (value) {
                       if (value == null || value.isEmpty) {
                          return 'This field can\'t be empty';
                        }
                      return null;
                
                    },
                  ),
                  
                  SizedBox(height: 8,),
                  Text("Any Features? (Optional)",
                  style: GoogleFonts.playfairDisplay(
                      color: Colors.amber[800],
                      fontSize: 18,
                      fontWeight: FontWeight.w500,)),
              
                  TextFormField(
                    controller: someFeaturesCont,
                    style: GoogleFonts.playfairDisplay(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,),
                    decoration: InputDecoration(
                      hintText: "Mention your product features, if any",
                      hintStyle: GoogleFonts.playfairDisplay(
                      color: Color.fromARGB(117, 255, 255, 255),
                      fontSize: 14,
                      fontWeight: FontWeight.w300,),
                      fillColor: Color.fromARGB(255, 89, 88, 88),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                      )
                      ),
                  ),
                  
                  SizedBox(height: 18,),
                  ElevatedButton(
                    onPressed: (){
                      if (_formKey.currentState!.validate()) {
                      someFeaturesCont.text.isEmpty ?
                       chatText = "I want a social media post about ${productNameCont.text} that do ${whatProvideCont.text}"
                       : chatText = "I want a social media post about ${productNameCont.text} that do ${whatProvideCont.text} and have these features: ${someFeaturesCont.text}";
                       
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => ChatScreen(
                        title: "Generating a post about ${productNameCont.text}", 
                        chatMessageUpper: chatText)));
                      }
                    }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber[800]
                  ),
                  child: Text("Generate",
                  style: GoogleFonts.playfairDisplay(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,)))
                ],
                ),
            ),
          ),
        ),
      ),
    );
  }
}