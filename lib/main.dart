import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';

const apiKey = "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjczYTgyODY4ZjAzYWJlNzVhYThmMDY3MTI2MjJmNWQ2ZDZlNmUzMzhiNzM0YTI4NTVmODMxNDU1ZTVjNTc4ZWRlNzkyMGYyNzgwZDRiMmQ4In0.eyJhdWQiOiIxMTgyNSIsImp0aSI6IjczYTgyODY4ZjAzYWJlNzVhYThmMDY3MTI2MjJmNWQ2ZDZlNmUzMzhiNzM0YTI4NTVmODMxNDU1ZTVjNTc4ZWRlNzkyMGYyNzgwZDRiMmQ4IiwiaWF0IjoxNTk2MDY1MjgwLCJuYmYiOjE1OTYwNjUyODAsImV4cCI6MTYyNzYwMTI4MCwic3ViIjoiMTEzMTEiLCJzY29wZXMiOltdfQ.FqbaAOiRCALbNQQQfmT-Zf5E7yqni9tzmcMxhHPSRXI5LLeCT34VilCQMB_-HY88Oyw8iEgln_RiKgC5wPq7D_PagYee_uWWmMZx8vnVrvTnJXNijlXzBePE1lMu2HdFrAQyYcQAZPpsCAVtFihRkTyizJ1ords_5QFdorpEOqXaktW6Hs2pIyanl58j4NGiZMWO7XXDvDox6h7RW3rB-i8GlSosH_rFZO74v3zqYNElBz20oPZfjOZFJytZHTHGbouQ48VR_HGP9MNcs6Jo9w0py8-jCjbF60rxzLDJneMTn9l7xA4lPIWw6vNKGR-teeD5vTB5WkqT_RyLftgmGpny5L4acmm2-vdxJ0x0JaLoEDLQVkWFA55cByZimHcebqlHiITAcn_mzCFYkrnnQ80MVcclItoDdcmynlyfk4Ol1K7KOjkSSaJKLyyipK7RsJDWzHZ5W4bjBxUY0RPE-Sb_IInMrFrR5DBwJth0gBY-G4Wb_32xyKPpb227h7G4IWPLgZw5WFF_6O0743WsqGzsedbmcdlG4El_XB29YREwkEG5ACrdOxtEC_wYLQreplnJMuiMClTNLo9I6l_9i27kAriXKiBdxjegsMsOGoKQtfnkBbH_UJuUfhIyJbNyIXY651_xzseKMySqbaS5hTTqOCPWsVo3ubs6G_NTMNY";
const request = "https://app.weloveboletos.me/api/braip/58";
void main() async {

  http.Response response = await http.get(request);
  print(response.body);

  runApp(MaterialApp(
    title: "Conversor de Boletos",
    home: Home()
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Color columnColor = const Color.fromARGB(255, 250, 250, 250);
  Color nameColor = const Color.fromARGB(255, 64, 64, 64);
  Color emailColor = const Color.fromARGB(255, 160, 160, 160);
  Color iconColor = const Color.fromARGB(255, 136, 136, 136);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversor de Boletos"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),

      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              height: 120.0,
              color: columnColor,
            ),

            Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.fromLTRB(13, 10, 19, 13),
              height: 130.0,
              color: columnColor,
              child: Row(
                children: <Widget>[
                  Image.asset("images/icone_boleto.png", 
                    width: 62, 
                    height: 62
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 0.0, 10, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text("Maria Silva",
                              style: TextStyle(
                                color: nameColor,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Image.asset("images/logo_braip.png",
                              width: 23,
                              height: 23,  
                            )

                          ],
                        ),
                        // Text("mariasilva@gmail.com",
                        //   style: TextStyle(
                        //     color: emailColor,
                        //     fontSize: 11,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),

                        Text("Sedonax - Amostra Grátis",
                          style: TextStyle(
                            color: emailColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w800
                          ),
                        ),

                        Text("Sua Comissão: R\$26,83",
                          style: TextStyle(
                            color: emailColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w800
                          ),
                        ),

                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right:4),
                              child: Icon(
                                Icons.calendar_today,
                                  size: 19,
                                  color: iconColor,
                              ),
                            ),
                            

                            Text("27/07/2020",
                              style: TextStyle(
                                color: emailColor,
                                fontSize: 11,
                                fontWeight: FontWeight.w800,
                              ),
                            ),

                            Padding(padding: EdgeInsets.fromLTRB(18, 0.0, 4, 0.0),
                              child: Icon(
                                Icons.watch_later,
                                  size: 19,
                                  color: iconColor,
                              ),
                            ),

                            Text("16:41",
                              style: TextStyle(
                                color: emailColor,
                                fontSize: 11,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  
                  Image.asset("images/logo_whatsapp.png",
                    width: 55,
                  ),
                ]
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 15),
              height: 120.0,
              color: columnColor,
            ),

            Container(
              margin: EdgeInsets.only(top: 15),
              height: 120.0,
              color: columnColor,
            ),

            Container(
              margin: EdgeInsets.only(top: 15),
              height: 120.0,
              color: columnColor,
            ),

          ],
        ),
      ),
       
    );
  }
}