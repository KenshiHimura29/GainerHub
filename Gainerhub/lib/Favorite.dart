///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutterviz/Transaksi.dart';


class Favorite extends StatelessWidget {

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xffffffff),
body:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:MediaQuery.of(context).size.width,
height:160,
decoration: BoxDecoration(
color:Color(0xe5000000),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.zero,
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:
Padding(
padding:EdgeInsets.fromLTRB(16, 30, 16, 16),
child:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
Row(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisSize: MainAxisSize.max,
  children: [
    // Back Button (Navigate Back)
    IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Color(0xffdedede),
        size: 24,
      ),
      onPressed: () {
        Navigator.pop(context); // Go back to the previous page
      },
    ),
    Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        child: Text(
          "My Favorite",
          textAlign: TextAlign.start,
          overflow: TextOverflow.clip,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Color(0xffefefef),
          ),
        ),
      ),
    ),
    PopupMenuButton<String>(
  icon: Icon(
    Icons.more_vert,
    color: Color(0xffefefef),
    size: 24,
  ),
  onSelected: (value) {
    // Handle menu item clicks
    if (value == 'filter') {
      // Implement filter functionality here
      print('Filter selected');
    } else if (value == 'sort') {
      // Implement sort functionality here
      print('Sort selected');
    }
  },
  itemBuilder: (BuildContext context) {
    return [
      PopupMenuItem(
        value: 'filter',
        child: Text('Filter'),
      ),
      PopupMenuItem(
        value: 'sort',
        child: Text('Sort'),
      ),
    ];
  },
)
  ],
),

Padding(
padding:EdgeInsets.fromLTRB(0, 16, 0, 0),
child:TextField(
controller:TextEditingController(),
obscureText:false,
textAlign:TextAlign.start,
maxLines:1,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
decoration:InputDecoration(
disabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0x00ffffff),
width:1
),
),
focusedBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0x00ffffff),
width:1
),
),
enabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0x00ffffff),
width:1
),
),
hintText:"Search by products, prices",
hintStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff939393),
),
filled:true,
fillColor:Color(0xfff9f9f9),
isDense:true,
contentPadding:EdgeInsets.symmetric(vertical: 8,horizontal:12),
prefixIcon:Icon(Icons.search,color:Color(0xff939393),size:24),
),
),
),
],),),
),
Expanded(
flex: 1,
child: 
GridView( 
padding:EdgeInsets.all(16),
shrinkWrap:true,
scrollDirection:Axis.vertical,
physics:ClampingScrollPhysics(), 
gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( 
crossAxisCount:2,
crossAxisSpacing:16,
mainAxisSpacing:0,
childAspectRatio:0.55,
),
children:[
Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:200,
height:100,
decoration: BoxDecoration(
color:Color(0xffffffff),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.zero,
),
child:

Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisSize: MainAxisSize.max,
  children: [
    Stack(
      alignment: Alignment.topRight,
      children: [
        ///***If you have exported images you must have to copy those images in assets/images directory.
        GestureDetector(
          onTap: () {
            // Navigasi ke halaman transaksi
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Transaksi()),
            );
          },
          child: Image(
            image: AssetImage("assets/images/id-11134207-7r98s-lve4h6q98ipba7.jpeg"),
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 8, 8, 0),
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Color(0xffa0a0a0),
            shape: BoxShape.circle,
            border: Border.all(color: Color(0x4d9e9e9e), width: 1),
          ),
          child: Icon(
            Icons.favorite,
            color: Color(0xffffffff),
            size: 18,
          ),
        ),
      ],
    ),
    Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "Bucket version",
              textAlign: TextAlign.start,
              maxLines: 1,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Color(0xff000000),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 4, 0, 8),
              child: RatingBar.builder(
                initialRating: 5,
                unratedColor: Color(0xff9e9e9e),
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Color(0xffffc107),
                ),
                itemCount: 5,
                itemSize: 20,
                direction: Axis.horizontal,
                allowHalfRating: false,
                onRatingUpdate: (value) {},
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Price:",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff393939),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                  child: Text(
                    "Rp. 530.000",
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff3a57e8),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  ],
)

),
Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:200,
height:100,
decoration: BoxDecoration(
color:Color(0xffffffff),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.zero,
),
child:

Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [

Stack(
alignment:Alignment.topRight,
children: [
///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:AssetImage("assets/images/img.png"),
height:MediaQuery.of(context).size.height * 0.2,
width:MediaQuery.of(context).size.width,
fit:BoxFit.cover,
),
Container(
margin:EdgeInsets.all(8),
padding:EdgeInsets.all(6),
decoration: BoxDecoration(
color:Color(0xffa0a0a0),
shape:BoxShape.circle,
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:
Icon(
Icons.favorite,
color:Color(0xffffffff),
size:18,
),
),
],),
Expanded(
flex: 1,
child: Padding(
padding:EdgeInsets.fromLTRB(0, 8, 0, 0),
child:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
Text(
"Evomass",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 4, 0, 8),
child:RatingBar.builder(
initialRating: 4,
unratedColor: Color(0xff9e9e9e),
itemBuilder: (context, index) => Icon(
Icons.star,
color:Color(0xffffc107)
),
itemCount: 5,
itemSize: 20,
direction: Axis.horizontal,
allowHalfRating: false,
onRatingUpdate: (value) {},
),
),
Row(
mainAxisAlignment:MainAxisAlignment.center,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.min,
children:[

Text(
"Price:",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff393939),
),
),
Padding(
padding:EdgeInsets.fromLTRB(4, 0, 0, 0),
child:Text(
"Rp. 334.000",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff3a57e8),
),
),
),
],),
],),),),
],),
),
Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:200,
height:100,
decoration: BoxDecoration(
color:Color(0xffffffff),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.zero,
),
child:

Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [

Stack(
alignment:Alignment.topRight,
children: [
///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:AssetImage("assets/images/346ab441-0814-46bc-a11e-b9627f65ec27.png"),
height:MediaQuery.of(context).size.height * 0.2,
width:MediaQuery.of(context).size.width,
fit:BoxFit.cover,
),
Container(
margin:EdgeInsets.fromLTRB(0, 8, 9, 0),
padding:EdgeInsets.all(6),
decoration: BoxDecoration(
color:Color(0xffa0a0a0),
shape:BoxShape.circle,
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:
Icon(
Icons.favorite,
color:Color(0xffffffff),
size:18,
),
),
],),
Expanded(
flex: 1,
child: Padding(
padding:EdgeInsets.fromLTRB(0, 8, 0, 0),
child:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
Text(
"ISO gainer",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 4, 0, 8),
child:RatingBar.builder(
initialRating: 4,
unratedColor: Color(0xff9e9e9e),
itemBuilder: (context, index) => Icon(
Icons.star,
color:Color(0xffffc107)
),
itemCount: 5,
itemSize: 20,
direction: Axis.horizontal,
allowHalfRating: false,
onRatingUpdate: (value) {},
),
),
Row(
mainAxisAlignment:MainAxisAlignment.center,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.min,
children:[

Text(
"Price:",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff393939),
),
),
Padding(
padding:EdgeInsets.fromLTRB(4, 0, 0, 0),
child:Text(
"Rp. 420.000",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff3a57e8),
),
),
),
],),
],),),),
],),
),
Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:200,
height:100,
decoration: BoxDecoration(
color:Color(0xffffffff),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.zero,
),
child:

Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [

Stack(
alignment:Alignment.topRight,
children: [
///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:AssetImage("assets/images/cd4db24e-dcbd-4b5f-a0b4-c972d007c364.jpg"),
height:MediaQuery.of(context).size.height * 0.2,
width:MediaQuery.of(context).size.width,
fit:BoxFit.cover,
),
Container(
margin:EdgeInsets.fromLTRB(0, 8, 8, 0),
padding:EdgeInsets.all(6),
decoration: BoxDecoration(
color:Color(0xffa0a0a0),
shape:BoxShape.circle,
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:
Icon(
Icons.favorite,
color:Color(0xffffffff),
size:18,
),
),
],),
Expanded(
flex: 1,
child: Padding(
padding:EdgeInsets.fromLTRB(0, 8, 0, 0),
child:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
Text(
"Rimba Mass",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 4, 0, 8),
child:RatingBar.builder(
initialRating: 4,
unratedColor: Color(0xff9e9e9e),
itemBuilder: (context, index) => Icon(
Icons.star,
color:Color(0xffffc107)
),
itemCount: 5,
itemSize: 20,
direction: Axis.horizontal,
allowHalfRating: false,
onRatingUpdate: (value) {},
),
),
Row(
mainAxisAlignment:MainAxisAlignment.center,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.min,
children:[

Text(
"Price:",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff393939),
),
),
Padding(
padding:EdgeInsets.fromLTRB(4, 0, 0, 0),
child:Text(
"Rp. 290.000",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff3a57e8),
),
),
),
],),
],),),),
],),
),
Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:200,
height:100,
decoration: BoxDecoration(
color:Color(0xffffffff),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.zero,
),
child:

Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [

Stack(
alignment:Alignment.topRight,
children: [
///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:AssetImage("assets/images/ba530d99-20a4-40d4-aec1-e345cc4af99f.jpg"),
height:MediaQuery.of(context).size.height * 0.2,
width:MediaQuery.of(context).size.width,
fit:BoxFit.cover,
),
Container(
margin:EdgeInsets.fromLTRB(0, 8, 8, 0),
padding:EdgeInsets.all(6),
decoration: BoxDecoration(
color:Color(0xffa0a0a0),
shape:BoxShape.circle,
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:
Icon(
Icons.favorite,
color:Color(0xffffffff),
size:18,
),
),
],),
Expanded(
flex: 1,
child: Padding(
padding:EdgeInsets.fromLTRB(0, 8, 0, 0),
child:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
Text(
"Muscle First",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 4, 0, 8),
child:RatingBar.builder(
initialRating: 5,
unratedColor: Color(0xff9e9e9e),
itemBuilder: (context, index) => Icon(
Icons.star,
color:Color(0xffffc107)
),
itemCount: 5,
itemSize: 20,
direction: Axis.horizontal,
allowHalfRating: false,
onRatingUpdate: (value) {},
),
),
Row(
mainAxisAlignment:MainAxisAlignment.center,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.min,
children:[

Text(
"Price:",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff393939),
),
),
Padding(
padding:EdgeInsets.fromLTRB(4, 0, 0, 0),
child:Text(
"Rp. 421.200",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff3a57e8),
),
),
),
],),
],),),),
],),
),
Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:200,
height:100,
decoration: BoxDecoration(
color:Color(0xffffffff),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.zero,
),
child:

Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [

Stack(
alignment:Alignment.topRight,
children: [
///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:AssetImage("assets/images/sg-11134201-23020-t8bqrg4zyinvfe.jpeg"),
height:MediaQuery.of(context).size.height * 0.2,
width:MediaQuery.of(context).size.width,
fit:BoxFit.cover,
),
Container(
margin:EdgeInsets.fromLTRB(0, 8, 8, 0),
padding:EdgeInsets.all(6),
decoration: BoxDecoration(
color:Color(0xffa0a0a0),
shape:BoxShape.circle,
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:
Icon(
Icons.favorite,
color:Color(0xffffffff),
size:18,
),
),
],),
Expanded(
flex: 1,
child: Padding(
padding:EdgeInsets.fromLTRB(0, 8, 0, 0),
child:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
Text(
"Gainer Murah",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 4, 0, 8),
child:RatingBar.builder(
initialRating: 3,
unratedColor: Color(0xff9e9e9e),
itemBuilder: (context, index) => Icon(
Icons.star,
color:Color(0xffffc107)
),
itemCount: 5,
itemSize: 20,
direction: Axis.horizontal,
allowHalfRating: false,
onRatingUpdate: (value) {},
),
),
Row(
mainAxisAlignment:MainAxisAlignment.center,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.min,
children:[

Text(
"Price:",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff393939),
),
),
Expanded(
flex: 1,
child: Padding(
padding:EdgeInsets.fromLTRB(4, 0, 0, 0),
child:Text(
"Rp.240.000",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:13,
color:Color(0xff3a57e8),
),
),
),
),
],),
],),),),
],),
),
Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:200,
height:100,
decoration: BoxDecoration(
color:Color(0xffffffff),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.zero,
),
child:

Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [

Stack(
alignment:Alignment.topRight,
children: [
///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:AssetImage("assets/images/Mass-Gainer_Vanilla.png"),
height:MediaQuery.of(context).size.height * 0.2,
width:MediaQuery.of(context).size.width,
fit:BoxFit.cover,
),
Container(
margin:EdgeInsets.fromLTRB(0, 8, 8, 0),
padding:EdgeInsets.all(6),
decoration: BoxDecoration(
color:Color(0xffa0a0a0),
shape:BoxShape.circle,
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:
Icon(
Icons.favorite,
color:Color(0xffffffff),
size:18,
),
),
],),
Expanded(
flex: 1,
child: Padding(
padding:EdgeInsets.fromLTRB(0, 8, 0, 0),
child:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
Text(
"Provus Gainer",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 4, 0, 8),
child:RatingBar.builder(
initialRating: 5,
unratedColor: Color(0xff9e9e9e),
itemBuilder: (context, index) => Icon(
Icons.star,
color:Color(0xffffc107)
),
itemCount: 5,
itemSize: 20,
direction: Axis.horizontal,
allowHalfRating: false,
onRatingUpdate: (value) {},
),
),
Row(
mainAxisAlignment:MainAxisAlignment.center,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.min,
children:[

Text(
"Price:",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff393939),
),
),
Padding(
padding:EdgeInsets.fromLTRB(4, 0, 0, 0),
child:Text(
"Rp. 520.240",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff3a57e8),
),
),
),
],),
],),),),
],),
),
Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:200,
height:100,
decoration: BoxDecoration(
color:Color(0xffffffff),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.zero,
),
child:

Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [

Stack(
alignment:Alignment.topRight,
children: [
///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:AssetImage("assets/images/megamass.jpg"),
height:MediaQuery.of(context).size.height * 0.2,
width:MediaQuery.of(context).size.width,
fit:BoxFit.cover,
),
Container(
margin:EdgeInsets.fromLTRB(0, 8, 8, 0),
padding:EdgeInsets.all(6),
decoration: BoxDecoration(
color:Color(0xffa0a0a0),
shape:BoxShape.circle,
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:
Icon(
Icons.favorite,
color:Color(0xffffffff),
size:18,
),
),
],),
Expanded(
flex: 1,
child: Padding(
padding:EdgeInsets.fromLTRB(0, 8, 0, 0),
child:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
Text(
"1KG Version",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 4, 0, 8),
child:RatingBar.builder(
initialRating: 5,
unratedColor: Color(0xff9e9e9e),
itemBuilder: (context, index) => Icon(
Icons.star,
color:Color(0xffffc107)
),
itemCount: 5,
itemSize: 20,
direction: Axis.horizontal,
allowHalfRating: false,
onRatingUpdate: (value) {},
),
),
Row(
mainAxisAlignment:MainAxisAlignment.center,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.min,
children:[

Text(
"Price:",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff393939),
),
),
Padding(
padding:EdgeInsets.fromLTRB(4, 0, 0, 0),
child:Text(
"Rp. 450.220",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff3a57e8),
),
),
),
],),
],),),),
],),
),
],),),
],),
)
;}
}