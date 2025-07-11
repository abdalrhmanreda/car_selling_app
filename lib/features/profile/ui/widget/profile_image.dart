import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.black, Colors.grey],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const CircleAvatar(
            radius: 45,
            backgroundImage: NetworkImage(
              'https://instagram.fcai24-1.fna.fbcdn.net/v/t51.2885-19/496640763_18279929476268305_6259165251663270532_n.jpg?stp=dst-jpg_s150x150_tt6&_nc_ht=instagram.fcai24-1.fna.fbcdn.net&_nc_cat=101&_nc_oc=Q6cZ2QF26i878w-z9E45oqs4Wez2wHaJQu5hsXD3L41ql2UPYrTGuKX5UvmQ5u-QgDjhbK8&_nc_ohc=hZPUfc2dvwUQ7kNvwGcsaka&_nc_gid=GJxiC-y5iSv5XFQbIs_GSA&edm=AP4sbd4BAAAA&ccb=7-5&oh=00_AfQkeVsoyy0Smht_Yf_sNALL8sPWIcTLKy9-ME4nAKI-OA&oe=68769F39&_nc_sid=7a9f4b',
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Colors.black12,
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Iconsax.camera_outline, size: 20),
            ),
          ),
        ),
      ],
    );
  }
}
