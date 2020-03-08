import 'package:adityagurjar/config/assets.dart';
import 'package:adityagurjar/config/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/foundation.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void openLink(String url) async {
      if (kIsWeb) {
        html.window.open(url, '_blank');
      } else {
        if (await canLaunch(url)) {
          launch(url);
        }
      }
    }

    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: Image.asset(Assets.avatar).image,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Kevin Li',
                textScaleFactor: 4,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  constraints: BoxConstraints(maxWidth: 600),
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    'I create iOS apps. I care deeply about clean code architecture and seamless user experience.',
                    style: Theme.of(context).textTheme.caption,
                    textScaleFactor: 2,
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                height: 40,
              ),
              Row(
                children: <Widget>[
                  Spacer(),
                  Material(
                    // needed
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => openLink(Constants.PROFILE_GITHUB), // needed
                      child: Image.asset(
                        Assets.github,
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Material(
                    // needed
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => openLink(Constants.PROFILE_LINKEDIN), // needed
                      child: Image.asset(
                        Assets.linkedin,
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Material(
                    // needed
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => openLink(Constants.PROFILE_INSTAGRAM), // needed
                      child: Image.asset(
                        Assets.instagram,
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Material(
                    // needed
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => openLink(Constants.PROFILE_FACEBOOK), // needed
                      child: Image.asset(
                        Assets.facebook,
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Spacer()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
