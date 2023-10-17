import 'package:flutter/material.dart';
import 'package:symposium/assets/colors.dart';
import 'package:symposium/delegate_view/domain/entities/partners.dart';
import 'package:symposium/delegate_view/presentation/widgets/appbar.dart';
import 'package:symposium/delegate_view/presentation/widgets/drawer_menu.dart';
import 'package:url_launcher/url_launcher.dart';

class PartnersPage extends StatefulWidget {
  const PartnersPage({super.key, required this.title});

  final String title;

  @override
  State<PartnersPage> createState() => _PartnersPageState();
}

class _PartnersPageState extends State<PartnersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerMenu(),
        appBar: SympoAppBar(title: widget.title),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                partnerCategoryHeading(PartnerType.gold),
                partnersList(PartnerType.gold),
                const Divider(),
                partnerCategoryHeading(PartnerType.silver),
                partnersList(PartnerType.silver),
                const Divider(),
                partnerCategoryHeading(PartnerType.media),
                partnersList(PartnerType.media),
                const Divider(),
                partnerCategoryHeading(PartnerType.inkind),
                partnersList(PartnerType.inkind),
                const Divider(),
                partnerCategoryHeading(PartnerType.zastita),
                partnersList(PartnerType.zastita),
              ],
            ),
          ),
        ));
  }

  Widget partnerCategoryHeading(PartnerType partnerType) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 2, 0, 2),
        child: Text(
          partnerType.displayName,
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.left,
        ),
      ),
    );
  }

  Widget partnersList(PartnerType partnerType) {
    List<Partner> partners = filterPartnersByType(partnerType);
    return SizedBox(
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: partners.length,
          itemBuilder: (context, index) {
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  color: SymposiumColors.symposiumWhite.color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  title: Text(
                    partners[index].name,
                    style: TextStyle(
                      backgroundColor:
                          SymposiumColors.symposiumWhite.color,
                    ),
                  ),
                  trailing: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 150),
                      child: Image(
                        image: AssetImage(partners[index].imagePath),
                      )),
                  onTap: () {
                    // open url of the partner in internet
                    _launchURL(partners[index].url);
                  },
                ),
              ),
            );
          }),
    );
  }

  List<Partner> filterPartnersByType(PartnerType type) {
    return partners.where((element) => element.type == type).toList();
  }

  _launchURL(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
