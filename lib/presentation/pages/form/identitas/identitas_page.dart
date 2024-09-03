import 'package:derana_multipart/presentation/shared/const.dart';
import 'package:derana_multipart/presentation/shared/theme.dart';
import 'package:flutter/material.dart';

import '../model_bottom_widget.dart';
import 'modal_form_detail.dart';
import 'regular_input_identitas_widget.dart';

class IdentitasPage extends StatefulWidget {
  const IdentitasPage({super.key});

  @override
  State<IdentitasPage> createState() => _IdentitasPageState();
}

class _IdentitasPageState extends State<IdentitasPage> {
  TextEditingController longName = TextEditingController();
  TextEditingController jenisKelamin = TextEditingController();
  TextEditingController usiaController = TextEditingController();
  TextEditingController tempatLahirController = TextEditingController();
  TextEditingController pendidikanController = TextEditingController();
  TextEditingController pekerjaanController = TextEditingController();
  TextEditingController kelurahanController = TextEditingController();
  TextEditingController kecamatanController = TextEditingController();
  TextEditingController kabupatenController = TextEditingController();
  TextEditingController provinsiController = TextEditingController();
  TextEditingController domisiliTahunController = TextEditingController();
  TextEditingController frekuensiBepergianController = TextEditingController();
  TextEditingController tujuanController = TextEditingController();
  TextEditingController waktuBepergianController = TextEditingController();
  TextEditingController durasiBepergianController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: deviceHeight * 0.03,
          ),
          Text(
            "Isi Identitasmu",
            style: greyIsiDataTextStyle.copyWith(
              fontWeight: extraBold,
              fontSize: deviceWidth * 0.047,
            ),
          ),
          SizedBox(
            height: deviceHeight * 0.01,
          ),
          Text(
            "Isi formulir di bawah ini sesuai dengan identitas yang kamu miliki ya.",
            style: greyIsiDataTextStyle,
          ),
          SizedBox(
            height: deviceHeight * 0.02,
          ),
          RegularInputIdentitasWidget(
            controller: longName,
            title: "Nama Panjang",
            action: () {},
          ),
          RegularInputIdentitasWidget(
            controller: jenisKelamin,
            title: "Jenis Kelamin",
            isDropdown: true,
            hintText: jenisKelamin.text,
            action: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return FormDetailModal(
                    controller: jenisKelamin,
                    dataType: "gender",
                    title: "Jenis Kelamin",
                  );
                },
              ).whenComplete(
                () {
                  setState(() {});
                },
              );
            },
          ),
          RegularInputIdentitasWidget(
            title: "Usia (Tahun)",
            controller: usiaController,
            action: () {},
          ),
          RegularInputIdentitasWidget(
            title: "Tempat (lahir)",
            controller: tempatLahirController,
            action: () {},
          ),
          RegularInputIdentitasWidget(
            title: "Pendidikan Terakhir",
            controller: pendidikanController,
            isDropdown: true,
            action: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return FormDetailModal(
                    controller: pendidikanController,
                    dataType: "jenjangSekolah",
                    title: "Pendidikan Terakhir",
                  );
                },
              ).whenComplete(
                () {
                  setState(() {});
                },
              );
            },
          ),
          RegularInputIdentitasWidget(
            title: "Pekerjaan (Jenis)",
            controller: pekerjaanController,
            isDropdown: true,
            action: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return FormDetailModal(
                    controller: pekerjaanController,
                    dataType: "pekerjaan",
                    title: "Pekerjaan (jenis)",
                  );
                },
              ).whenComplete(
                () {
                  setState(() {});
                },
              );
            },
          ),
          //IDENTITAS
          Text(
            "Domisili",
            style: greyIsiDataTextStyle.copyWith(
              fontWeight: extraBold,
              fontSize: deviceWidth * 0.047,
            ),
          ),
          SizedBox(
            height: deviceHeight * 0.01,
          ),
          Text(
            "Silakan isi domisili tempat kamu tinggal sekarang, ya. ",
            style: greyIsiDataTextStyle,
          ),
          SizedBox(
            height: deviceHeight * 0.02,
          ),
          Container(
            width: deviceWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: whiteColor,
            ),
            padding: EdgeInsets.symmetric(
              vertical: deviceHeight * 0.01,
              horizontal: deviceWidth * 0.03,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset(
                  "assets/image/icon_derana.png",
                  scale: 3,
                ),
                Text(
                  "Kamu bisa menggunakan\nlokasi terkini pada tombol di\nsamping",
                  style: lightGreyTextStyle,
                ),
                Container(
                  width: deviceWidth * 0.2,
                  padding: EdgeInsets.symmetric(
                    vertical: deviceHeight * 0.005,
                    horizontal: deviceWidth * 0.005,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: primaryColor,
                  ),
                  child: Center(
                      child: Text(
                    "Lokasi",
                    style: whiteTextStyle,
                  )),
                )
              ],
            ),
          ),
          SizedBox(
            height: deviceHeight * 0.02,
          ),
          RegularInputIdentitasWidget(
            title: "Desa/Kelurahan",
            controller: kelurahanController,
            action: () {},
          ),
          RegularInputIdentitasWidget(
            title: "Kecamatan",
            controller: kecamatanController,
            action: () {},
          ),
          RegularInputIdentitasWidget(
            title: "Kabupaten",
            controller: kabupatenController,
            action: () {},
          ),
          RegularInputIdentitasWidget(
            title: "Provinsi",
            controller: provinsiController,
            action: () {},
          ),
          RegularInputIdentitasWidget(
            title: "Domisili di tempat sekarang (tahun)",
            controller: domisiliTahunController,
            action: () {},
          ),
          Text(
            "Mobilitas",
            style: greyIsiDataTextStyle.copyWith(
              fontWeight: extraBold,
              fontSize: deviceWidth * 0.047,
            ),
          ),
          SizedBox(
            height: deviceHeight * 0.015,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Silakan isi berdasarkan frekuensi\nmobilitas yang kamu lakukan dalam\nsatu bulan terakhir",
                style: greyIsiDataTextStyle,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return ModalBottomWidget(
                        title: "Mobilitas",
                        items: [
                          ModalBottomItem(
                            image: "airplane",
                            sentences:
                                "Frekuensi bepergian: Berapa kali kamu melakukan perjalanan ke luar daerah dalam satu tahun.  Banyak (>10 kali), Sering (<10 kali), Jarang (<5 kali), dan Tidak pernah.",
                          ),
                          ModalBottomItem(
                            image: "search",
                            sentences:
                                "Pergi ke daerah lain: Ke mana kamu pergi dalam satu tahun. Luar Negeri, Luar Pulau, Luar Provinsi, Luar Kabupaten, Luar Kecamatan, atau Luar Desa.",
                          ),
                          ModalBottomItem(
                            image: "time",
                            sentences:
                                "Waktu bepergian: Kapan terakhir kali kamu bepergian ke luar daerah.",
                          ),
                          ModalBottomItem(
                            image: "durasi",
                            sentences:
                                "Durasi bepergian: Berapa lama kamu tinggal di tempat tersebut (bulan).",
                          )
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  width: deviceWidth * 0.25,
                  padding: EdgeInsets.symmetric(
                    vertical: deviceHeight * 0.01,
                    horizontal: deviceWidth * 0.01,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: primaryColor,
                  ),
                  child: Center(
                      child: Text(
                    "Selengkapnya",
                    style: whiteTextStyle,
                  )),
                ),
              )
            ],
          ),
          SizedBox(
            height: deviceHeight * 0.02,
          ),
          RegularInputIdentitasWidget(
            title: "Frekuensi Bepergian",
            controller: frekuensiBepergianController,
            isDropdown: true,
            action: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return FormDetailModal(
                    controller: frekuensiBepergianController,
                    dataType: "frekeunsiBepergian",
                    title: "Frekuensi Bepergian",
                  );
                },
              ).whenComplete(
                () {
                  setState(() {});
                },
              );
            },
          ),
          RegularInputIdentitasWidget(
            title: "Pergi ke daerah lain",
            controller: tujuanController,
            isDropdown: true,
            action: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return FormDetailModal(
                    controller: tujuanController,
                    dataType: "jenisBepergian",
                    title: "Pergi ke daerah lain",
                  );
                },
              ).whenComplete(
                () {
                  setState(() {});
                },
              );
            },
          ),
          RegularInputIdentitasWidget(
            title: "Waktu Bepergian",
            controller: waktuBepergianController,
            isDropdown: true,
            action: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return FormDetailModal(
                    controller: waktuBepergianController,
                    dataType: "waktuBepergian",
                    title: "Waktu Bepergian",
                  );
                },
              ).whenComplete(
                () {
                  setState(() {});
                },
              );
            },
          ),
          RegularInputIdentitasWidget(
            title: "Durasi Bepergian",
            controller: durasiBepergianController,
            isDropdown: true,
            action: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return FormDetailModal(
                    controller: durasiBepergianController,
                    dataType: "durasiBepergian",
                    title: "Durasi Bepergian",
                  );
                },
              ).whenComplete(
                () {
                  setState(() {});
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
