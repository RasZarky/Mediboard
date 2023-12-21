import 'package:flutter/material.dart';
import 'package:mediboard/widgets/custom_image_view.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({Key? key})
      : super(
          key: key,
        );

  @override
  ArticlePageState createState() => ArticlePageState();
}

class ArticlePageState extends State<ArticlePage>
    with AutomaticKeepAliveClientMixin<ArticlePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: "assets/img_image_10.png",
                            height: 22,
                            width: 18,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 4,
                              top: 2,
                              bottom: 2,
                            ),
                            child: Text(
                              "The Lancet",
                              style: TextStyle(
                                color: Color(0XFF334154)
                              ),
                            ),
                          ),
                          Container(
                            width: 29,
                            margin: const EdgeInsets.only(left: 4),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 4,
                              vertical: 1,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0XFFF3F4F6),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Text(
                              "9.8",
                              style: TextStyle(
                                  color: Color(0XFF4B5563)
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: "assets/img_external_link.svg",
                            height: 15,
                            width: 16,
                            margin: const EdgeInsets.only(
                              left: 4,
                              top: 3,
                              bottom: 3,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    Container(
                      width: 332,
                      margin: const EdgeInsets.only(
                        left: 12,
                        right: 46,
                      ),
                      child: const Text(
                        "The Surprising Link Between Gut Health and Mental Health",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color(0XFF111827),
                          fontWeight: FontWeight.w600,
                          height: 1.33,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        "Feb 23, 2023",
                        style: TextStyle(
                          fontSize: 15
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: "assets/img_play.png",
                            height: 40,
                            width: 40,
                            margin: const EdgeInsets.only(bottom: 1),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dr.\tMark\tF.\tBarry",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                                SizedBox(height: 2),

                                Text(
                                  "Cardiologist",
                                  style: TextStyle(
                                    color: Color(0XFF64748A),
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 36),
                    _buildArticleSummary(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildArticleSummary(BuildContext context) {
    return SizedBox(
      height: 366,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 12,
                right: 20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 358,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0XB2FFFFFF).withOpacity(1),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0XFF000000).withOpacity(0.06),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(
                            0,
                            1,
                          ),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Article Summary",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(height: 8),

                        Container(
                          width: 322,
                          margin: const EdgeInsets.only(right: 12),
                          child: const Text(
                            "Most people are aware of the importance of a healthy gut for physical health, but the link between gut health and mental health may come as a surprise. Recent research has shown that there is a strong connection between the gut microbiome, the collection of bacteria and other microorganisms that live in the gut, and mental health.",
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 31),

                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Full Article",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(
                    width: 355,
                    child: Text(
                      "Most people are aware of the importance of a healthy gut for physical health, but the link between gut health and mental health may come as a surprise. Recent research has shown that there is a strong connection between the gut microbiome, the collection of bacteria and other microorganisms that live in the gut, and mental health.\n\nThe gut microbiome is known to play a key role in digestion and immune system function. However, studies have also found that it can influence the brain and nervous system, affecting mood, behavior, and even cognitive function.\n\nOne way in which the gut microbiome may affect mental health is through the production of neurotransmitters, the chemical messengers that allow nerve cells to communicate with each other. Many neurotransmitters, including serotonin and dopamine, are produced in the gut as well as the brain. Imbalances in the gut microbiome can lead to disruptions in the production of these neurotransmitters, which can have a negative impact \non mental health.\n\nAdditionally, research has shown that the gut microbiome can influence the body's stress response. Studies in animals have found that disruptions to the gut microbiome can lead to increased levels of stress hormones, such as cortisol. This can in turn have negative effects on mental health, leading to anxiety and depression.\n\nIt is not just the gut microbiome that is involved in the gut-brain axis, the bi-directional communication pathway between the gut and the brain. The gut is also connected to the brain via the vagus nerve, which carries information between the two. This connection has been shown to be important in regulating mood and behavior, with research suggesting that stimulating the vagus nerve can have antidepressant effects.\n\nSo, what can be done to improve gut health and, in turn, support mental health? One important factor is diet. A diet high in fiber and rich in whole, unprocessed foods can help to support a healthy gut microbiome. Fermented foods, such as yogurt, kefir, and kimchi, can also be beneficial, as they contain live bacteria that can help to colonize the gut.\n\nProbiotic supplements can also be useful for improving gut health, particularly after a course of antibiotics or during times of stress. However, it is important to choose a high-quality supplement that contains a variety of strains of beneficial bacteria.\nIn addition to diet and supplements, other lifestyle factors can also have an impact on gut health and mental health. Regular exercise, getting enough sleep, and managing stress can all help to support a healthy gut microbiome and reduce the risk of mental health issues.\n\nIn conclusion, the link between gut health and mental health is a complex and fascinating area of research. By taking steps to support gut health, we may be able to improve not just our physical health, but also our mental wellbeing.",
                      maxLines: 8,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 85,
              width: double.maxFinite,
              margin: const EdgeInsets.only(bottom: 2),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(0.5, 0),
                  end: const Alignment(0.5, 1),
                  colors: [
                    const Color(0XFF98979A).withOpacity(0.39),
                    const Color(0XFF98979A),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
