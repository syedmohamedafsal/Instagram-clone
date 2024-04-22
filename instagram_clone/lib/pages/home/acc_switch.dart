import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/pages/camera/camera_screen.dart';
import '../custom_widgets/home_costom widget/post_widget.dart';
import '../custom_widgets/home_costom widget/status_widget.dart';

class Logins extends StatefulWidget {
  const Logins({super.key});

  @override
  State<Logins> createState() => _LoginsState();
}

class _LoginsState extends State<Logins> {
  late CameraController _controller;
  List<CameraDescription> _cameras = [];
  @override
  void initState() {
    super.initState();
    _initilizedCamera();
  }

  void _initilizedCamera() async {
    WidgetsFlutterBinding.ensureInitialized();
    _cameras = await availableCameras();
    _controller = CameraController(_cameras[0], ResolutionPreset.medium);
    await _controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 25, top: 4),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CameraScreen(controller: _controller),
                  ));
            },
            child: SvgPicture.asset(
              width: 20,
              height: 20,
              "image/Camera Icon.svg",
            ),
          ),
        ),
        title: Image.asset(
          "image/Instagram Logo.png",
          height: 35,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SvgPicture.asset(height: 25, width: 25, "image/shape.svg"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25, top: 5),
            child: SvgPicture.asset(height: 20, width: 20, "image/message.svg"),
          ),
        ],
      ),
      body: ListView(
        children: [
          const Divider(),
          const Padding(
            padding: EdgeInsets.only(
              left: 15,
              right: 20,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StatusWidget(
                    statusName: "Moh_dfh",
                  ),
                  StatusWidget(
                    statusName: "karennne",
                  ),
                  StatusWidget(
                    statusName: "zackjohn",
                  ),
                  StatusWidget(
                    statusName: "kieron_d",
                  ),
                  StatusWidget(
                    statusName: "craig_love",
                  ),
                  StatusWidget(
                    statusName: "s_y_e_d",
                  ),
                  StatusWidget(
                    statusName: "as_us",
                  ),
                  StatusWidget(
                    statusName: "i_p_l",
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          Expanded(
              child: ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: 10,
            // ignore: prefer_const_constructors
            itemBuilder: (context, index) => Postwidget(),
          )),
        ],
      ),
    );
  }
}


