import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:gradient_app_bar/gradient_app_bar.dart';


class Landingpage extends StatefulWidget {
  @override
  _LandingpageState createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  _lauchurl(String url)async{
if(await canLaunch(url)){
  await launch(url);
}
else {
  throw "Could Not Launch $url";
}
  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text("Portfolio",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 29,fontStyle: FontStyle.italic),),
        centerTitle: true,
        backgroundColor: Colors.grey[400]
        // Image.asset("images/portfolio.jpg",height:50,width:MediaQuery.of(context).size.width)
      ),
      body:Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient:LinearGradient(colors: [
            Color(0xffFD6E6A),Color(0xffFFC600)
          ])
        ),
        child:Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
    SizedBox(height:90)    , 
    ClipRRect(
      borderRadius:  BorderRadius.circular(17),
      child:
  Image.asset("images/hritick1.jpg",height: MediaQuery.of(context).size.height-500,
  ),),
  SizedBox(height:20),
Text("Hritick Goyal ",style: TextStyle(color: Colors.redAccent,fontSize: 20,fontWeight: FontWeight.bold),),
SizedBox(height:13),
Text("I'm an energetic and passionate college student who is currently exploring Mobile app/web development using flutter and looking for an internship opportunities for the same.",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),textAlign: TextAlign.center,)
,SizedBox(height: 30,) ,
Text("Connect with me",style: TextStyle(color: Colors.black38,fontSize: 15,fontWeight: FontWeight.w700),textAlign: TextAlign.center,)
,SizedBox(height: 30,),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
InkWell(
  onTap: (){
    _lauchurl("https://instagram.com/goyalhritick52?igshid=h5p5ez4mgq7n");
  },
  child:
Image.asset("images/instagram.png",height: 35,width:35,fit: BoxFit.cover,)),
SizedBox(width:15),
InkWell(
  onTap: (){
    _lauchurl("https://www.linkedin.com/in/hritick-goyal-91b1b6191");
    Toast.show("Linkden",context,gravity: Toast.BOTTOM);
  },
  child:
Image.asset("images/linkedin.png",height: 35,width:35,fit: BoxFit.cover)),
SizedBox(width:15),

InkWell(
  onTap: (){
    _lauchurl("https://github.com/Hritickgoyal524");
    Toast.show("Linkden",context,gravity: Toast.BOTTOM);
  },
  child:
Image.asset("images/github.png",height: 35,width:35,fit: BoxFit.cover)),
SizedBox(width:15),
InkWell(
  onTap: (){
    _lauchurl("https://twitter.com/GoyalHritick");
    Toast.show("Twitter",context,gravity: Toast.BOTTOM);
    
  },
  child:
Image.asset("images/twitter.png",height: 35,width:35,fit: BoxFit.cover))

],),
SizedBox(height:29),
RaisedButton(child:Text(" View My Resume",style: TextStyle(color: Colors.green),),onPressed:(){
  _lauchurl("https://drive.google.com/file/d/1Qudket6Ue1ssSqLA_EKR3tFgqiGVL-2o/view?usp=sharing");
},
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side:BorderSide(color: Colors.black
)))
,SizedBox(height:16),
RaisedButton(child:Text(" View My Achivements",style: TextStyle(color: Colors.brown),),onPressed:(){
  _lauchurl("https://drive.google.com/drive/u/0/folders/1mCNbxbH2ho1409IjzY09lwScLug9mIW7");
},
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side:BorderSide(color: Colors.black
)))
 ],)
 
,    )
    );
  }
}