import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wallet_app/themes/colors.dart';
import 'package:wallet_app/widgets/custom_circle_card.dart';
import 'package:wallet_app/widgets/custom_list_card.dart';

import '../themes/text_styles.dart';
import '../widgets/custom_appBar.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final ImagePicker _picker = ImagePicker();
  XFile? _image;

  Future getImageFromGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: InkWell(
                  onTap: () {
                    getImageFromGallery();
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1), //color of shadow
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        )
                      ],
                    ),
                    child: _image == null
                        ? Center(
                            child: Text(
                              'No image selected',
                              style: TextStyles.textTexStyle(
                                  fontSize: 10, color: MyColor.darkPurpleColor),
                              textAlign: TextAlign.center,
                            ),
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Stack(
                              children: [
                                Center(
                                  child: Image.file(File(_image!.path),
                                      fit: BoxFit.fill),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    color:
                                        MyColor.primaryColor.withOpacity(0.7),
                                    height: 24,
                                    width: 80,
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Center(
                                      child: Text(
                                        'change',
                                        style: TextStyles.textTexStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                  ),
                ),
              ),
              const Gap(70),
              const CustomListCard(
                title: 'Connected Account',
              ),
              const CustomListCard(
                title: 'Privacy and security',
              ),
              const CustomListCard(
                title: 'Privacy and security',
              ),
              const CustomListCard(
                title: 'Login Settings',
              ),
              const CustomListCard(
                title: 'Service Center',
              ),
              const Gap(150),
              InkWell(
                onTap: () {},
                child: const CustomCircleCard(
                  image: 'assets/icons/delete.png',
                  height: 65,
                  width: 65,
                ),
              ),
              const Gap(15),
              Text(
                'Delete Account',
                style: TextStyles.textTexStyle(
                  color: MyColor.primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
