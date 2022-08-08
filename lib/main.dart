import 'package:anomaly_reporting_client/widgets/app_header.dart';
import 'package:anomaly_reporting_client/widgets/sidebar.dart';
import 'package:flutter/material.dart';

import 'package:anomaly_reporting_client/widgets/panel.dart';
import 'package:anomaly_reporting_client/widgets/text_input.dart';

void main() {
    runApp(const MyApp());
}

const primaryColor = MaterialColor(0xFF06f003, {
    50: Color(0xFF06f003),
    100: Color(0xFF06f003),
    200: Color(0xFF06f003),
    300: Color(0xFF06f003),
    400: Color(0xFF06f003),
    500: Color(0xFF06f003),
    600: Color(0xFF06f003),
    700: Color(0xFF06f003),
    800: Color(0xFF06f003),
    900: Color(0xFF06f003),
});

class MyApp extends StatelessWidget {

    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primarySwatch: primaryColor,
            ),
            home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
    }
}

class MyHomePage extends StatefulWidget {
    const MyHomePage({Key? key, required this.title}) : super(key: key);

    final String title;

    @override
    State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage('assets/images/background.jpg'),
                    fit: BoxFit.cover,
                  )
                ),
                child: Row(
                    children: [
                        Sidebar(),
                        Expanded(
                            child: Column(
                                children: [
                                    Container(
                                        height: 72,
                                        decoration: BoxDecoration(
                                            color: Colors.black.withOpacity(0.5),
                                            border: BorderDirectional(
                                                bottom: BorderSide(
                                                    color: Colors.white.withOpacity(0.1)
                                                )
                                            )
                                        ),
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                                Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: [
                                                        Text('Nick Dugger',
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.w600
                                                            ),
                                                        ),
                                                        Text('ui.engineer@outlook.com',
                                                            style: TextStyle(
                                                                color: Colors.white.withOpacity(0.5),
                                                                fontSize: 13
                                                            ),
                                                        )
                                                    ],
                                                ),
                                                SizedBox(width: 12),
                                                CircleAvatar(
                                                    backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/1518343?v=4'),
                                                ),
                                                SizedBox(width: 24)
                                            ],
                                        ),
                                    ),
                                    Expanded(
                                        child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                                Panel(
                                                    title: 'NEW REPORT',
                                                    width: 720,
                                                    actions: [
                                                        ElevatedButton(
                                                            onPressed: () {},
                                                            style: ButtonStyle(
                                                                elevation: MaterialStateProperty.all(0),
                                                                padding: MaterialStateProperty.all(
                                                                    EdgeInsets.symmetric(
                                                                        vertical: 20,
                                                                        horizontal: 32
                                                                    )
                                                                ),
                                                                shape: MaterialStateProperty.all(
                                                                    RoundedRectangleBorder(
                                                                        borderRadius: BorderRadius.circular(100)
                                                                    )
                                                                )
                                                            ),
                                                            child: Text('NEXT')
                                                        ),
                                                    ],
                                                    children: [
                                                        Text(
                                                            'What type of event are you reporting?',
                                                            style: TextStyle(
                                                                color: Colors.white.withOpacity(0.66),
                                                                fontSize: 24
                                                            ),
                                                        ),
                                                        SizedBox(height: 32),
                                                        Container(
                                                            decoration: BoxDecoration(
                                                                // color: primaryColor.withOpacity(0.1),
                                                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                                                border: Border.fromBorderSide(
                                                                    BorderSide(
                                                                        color: Colors.white.withOpacity(0.25)
                                                                    )
                                                                )
                                                            ),
                                                            child: ListTile(
                                                                visualDensity: VisualDensity.compact,
                                                                tileColor: Colors.transparent,
                                                                hoverColor: Colors.white.withOpacity(0.1),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(100),
                                                                ),
                                                                title: Text(
                                                                    'Anomaly'.toUpperCase(),
                                                                    style: TextStyle(
                                                                        color: Colors.white,
                                                                        fontWeight: FontWeight.w600,
                                                                        fontSize: 14,
                                                                        height: 2.25
                                                                    )
                                                                ),
                                                                subtitle: Text(
                                                                    'An observed event which lacks conventional explanation',
                                                                    style: TextStyle(
                                                                        color: Colors.white.withOpacity(0.5)
                                                                    )
                                                                ),
                                                                leading: Radio(
                                                                    value: false,
                                                                    groupValue: true,
                                                                    onChanged: (void value) {},
                                                                    fillColor: MaterialStateProperty.all(Colors.white),
                                                                ),
                                                            ),
                                                        ),
                                                        SizedBox(height: 16),
                                                        Container(
                                                            decoration: BoxDecoration(
                                                                color: primaryColor.withOpacity(0.05),
                                                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                                                border: Border.fromBorderSide(
                                                                    BorderSide(
                                                                        color: primaryColor
                                                                    )
                                                                )
                                                            ),
                                                            child: ListTile(
                                                                visualDensity: VisualDensity.compact,
                                                                tileColor: Colors.transparent,
                                                                hoverColor: Colors.white.withOpacity(0.1),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(100),
                                                                ),
                                                                title: Text(
                                                                    'Non-Anomaly'.toUpperCase(),
                                                                    style: TextStyle(
                                                                        color: Colors.white,
                                                                        fontWeight: FontWeight.w600,
                                                                        fontSize: 14,
                                                                        height: 2.25
                                                                    )
                                                                ),
                                                                subtitle: Text(
                                                                    'An observed event which is easily identifiable',
                                                                    style: TextStyle(
                                                                        color: Colors.white.withOpacity(0.5)
                                                                    )
                                                                ),
                                                                leading: Radio(
                                                                    value: true,
                                                                    groupValue: true,
                                                                    onChanged: (void value) {},
                                                                ),
                                                            ),
                                                        ),
                                                        SizedBox(height: 16),
                                                        Container(
                                                            decoration: BoxDecoration(
                                                                // color: primaryColor.withOpacity(0.1),
                                                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                                                border: Border.fromBorderSide(
                                                                    BorderSide(
                                                                        color: Colors.white.withOpacity(0.25)
                                                                    )
                                                                )
                                                            ),
                                                            child: ListTile(
                                                                visualDensity: VisualDensity.compact,
                                                                tileColor: Colors.transparent,
                                                                hoverColor: Colors.white.withOpacity(0.1),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(100),
                                                                ),
                                                                title: Text(
                                                                    'Poltergeist Contagion'.toUpperCase(),
                                                                    style: TextStyle(
                                                                        color: Colors.white,
                                                                        fontWeight: FontWeight.w600,
                                                                        fontSize: 14,
                                                                        height: 2.25
                                                                    )
                                                                ),
                                                                subtitle: Text(
                                                                    'An observed event which coincides with a personal experience or oddity',
                                                                    style: TextStyle(
                                                                        color: Colors.white.withOpacity(0.5)
                                                                    )
                                                                ),
                                                                leading: Radio(
                                                                    value: false,
                                                                    groupValue: true,
                                                                    onChanged: (void value) {},
                                                                    fillColor: MaterialStateProperty.all(Colors.white),
                                                                ),
                                                            ),
                                                        ),
                                                        SizedBox(height: 16),
                                                        Container(
                                                            decoration: BoxDecoration(
                                                                // color: primaryColor.withOpacity(0.1),
                                                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                                                border: Border.fromBorderSide(
                                                                    BorderSide(
                                                                        color: Colors.white.withOpacity(0.25)
                                                                    )
                                                                )
                                                            ),
                                                            child: ListTile(
                                                                visualDensity: VisualDensity.compact,
                                                                tileColor: Colors.transparent,
                                                                hoverColor: Colors.white.withOpacity(0.1),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(100),
                                                                ),
                                                                title: Text(
                                                                    'Other'.toUpperCase(),
                                                                    style: TextStyle(
                                                                        color: Colors.white,
                                                                        fontWeight: FontWeight.w600,
                                                                        fontSize: 14,
                                                                        height: 2.25
                                                                    )
                                                                ),
                                                                subtitle: Text(
                                                                    'An observed event which does not fit any category',
                                                                    style: TextStyle(
                                                                        color: Colors.white.withOpacity(0.5)
                                                                    )
                                                                ),
                                                                leading: Radio(
                                                                    value: false,
                                                                    groupValue: true,
                                                                    onChanged: (void value) {},
                                                                    fillColor: MaterialStateProperty.all(Colors.white),
                                                                ),
                                                            ),
                                                        ),
                                                        SizedBox(height: 8),
                                                    ],
                                                ),
                                            ],
                                        )
                                    )
                                ],
                            )
                        )
                    ],
                )
                // child: Column(
                //     children: [
                //         AppHeader(),
                //         Expanded(
                //             child: Column(
                //                 mainAxisAlignment: MainAxisAlignment.center,
                //                 children: [
                //                     Panel(
                //                         title: 'UNAUTHORIZED',
                //                         width: 420,
                //                         children: [
                //                             SizedBox(height: 8),
                //                             TextInput(
                //                                 label: 'EMAIL'
                //                             ),
                //                             SizedBox(height: 32),
                //                             TextInput(
                //                                 label: 'PASSWORD'
                //                             ),
                //                             SizedBox(height: 32),
                //                             ElevatedButton(
                //                                 onPressed: () {},
                //                                 style: ButtonStyle(
                //                                     elevation: MaterialStateProperty.all(0),
                //                                     padding: MaterialStateProperty.all(
                //                                         EdgeInsets.symmetric(
                //                                             vertical: 20,
                //                                             horizontal: 32
                //                                         )
                //                                     ),
                //                                     shape: MaterialStateProperty.all(
                //                                         RoundedRectangleBorder(
                //                                             borderRadius: BorderRadius.circular(100)
                //                                         )
                //                                     )
                //                                 ),
                //                                 child: Text('LOG IN')
                //                             ),
                //                             SizedBox(height: 8),
                //                         ],
                //                     )
                //                 ],
                //             ),
                //         )
                //     ],
                // )
            )
        );
    }
}
