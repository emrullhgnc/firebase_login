import 'package:flutter/material.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_login/login/authentication.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key, this.title,this.auth, this.userId, this.onSignedOut})
      : super(key: key);
  final String title;
  final BaseAuth auth;
  final VoidCallback onSignedOut;
  final String userId;
  
  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  //FirebaseMessaging _firebaseMessaging = new FirebaseMessaging();
  Color btnColor=new Color.fromARGB(255, 76, 152, 219);
  var edgePaddingSize=8.0;
  var iconSize=40.0;
 // Notifications notifications = new Notifications();
 // StreamSubscription<NotificationEvent> events;

 // void onData(NotificationEvent event) => print(event.toString());
  @override
  void initState() {
    super.initState();
    //events = notifications.stream.listen(onData);
    // _firebaseMessaging.subscribeToTopic("all");
    //  // _firebaseMessaging.unsubscribeFromTopic("all");
    // //_firebaseMessaging.requestNotificationPermissions();
    // _firebaseMessaging.configure(
    //   onMessage: (Map<String, dynamic> message) {
    //     print('on message $message');
        
    //     //Ringtone.stop();
        
    //   },
    //   onResume: (Map<String, dynamic> message) {
    //     print('on resume $message');
    //   },
    //   onLaunch: (Map<String, dynamic> message) {
    //     print('on launch $message');
    //    // Ringtone.play();
    //   },
      
    // );
    // _firebaseMessaging.getToken().then((token){
    //   print(token);
    // });
  
}
  
  


  _signOut() async {
    try {
      await widget.auth.signOut();
      widget.onSignedOut();
    } catch (e) {
      print(e);
    }
  }

  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(resizeToAvoidBottomPadding: false,
      
        appBar: new AppBar(
          backgroundColor:btnColor,          
          title: new Text('Dashboard'),
          actions: <Widget>[
            new FlatButton(
                child: new Text('Logout',
                    style: new TextStyle(fontSize: 20.0, color: Colors.white)),
                onPressed: _signOut
                
            ),
          ],
        ),
        drawer: new Container (
          margin: new EdgeInsets.only(
                left: 0.0,
                right:20.0,
                bottom: 0.0,
                top: 25.0
              ),
         child: new Drawer (
              
          child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              
              children: <Widget>[
                new Container (
                  child:new ListTile(                  
                    title: Text('MENU'),
                    leading:Icon(Icons.list),                  
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                ),
                new Container (
                  child:new ListTile(
                    title: Text('Item 1'),
                    leading:Icon(Icons.notifications),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),

        
         
    );
  }
}

 
 