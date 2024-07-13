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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Name of Your Product",
              style: GoogleFonts.playfairDisplay(
                  color: Colors.amber[800],
                  fontSize: 18,
                  fontWeight: FontWeight.w500,)),
              TextFormField(
                controller: productNameCont,
                decoration: InputDecoration(
                  hintText: "Write the name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  )
                  ),
              ),
              SizedBox(height: 8,),
              Text("What it Provide",
              style: GoogleFonts.playfairDisplay(
                  color: Colors.amber[800],
                  fontSize: 18,
                  fontWeight: FontWeight.w500,)),
              TextFormField(
                controller: whatProvideCont,
                decoration: InputDecoration(
                  hintText: "What your product do",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  ),
                maxLines: 4,
              ),
              SizedBox(height: 8,),
              Text("Any Features? (Optional)",
              style: GoogleFonts.playfairDisplay(
                  color: Colors.amber[800],
                  fontSize: 18,
                  fontWeight: FontWeight.w500,)),
              TextFormField(
                controller: someFeaturesCont,
                decoration: InputDecoration(
                  hintText: "Mention your product features, if any",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  )
                  ),
              ),
              SizedBox(height: 8,),

              ElevatedButton(
                onPressed: (){
                  chatText = "I want a social media post about ${productNameCont.text} that do ${whatProvideCont.text} and have these features: ${someFeaturesCont.text}";
                  print(chatText);
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => ChatScreen(
                    title: "Generating a post about ${productNameCont.text}", 
                    chatMessageUpper: chatText)));
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
    );
  }
}