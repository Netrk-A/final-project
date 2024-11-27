import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loop_page_view/loop_page_view.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/bid_card_model.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/ended_bids_card_model.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/widgets/custom_bid_item.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/transforming_bid_item.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/widgets/custom_ended_bids_item.dart';

class BidPageView extends StatefulWidget {
  const BidPageView({super.key, required this.bidCards, this.isEnded = false});

  final List<BidCardModel> bidCards;
  final bool isEnded;

  @override
  _BidPageViewState createState() => _BidPageViewState();
}

class _BidPageViewState extends State<BidPageView> {
  final LoopPageController _pageController =
      LoopPageController(initialPage: 1, viewportFraction: 0.66);
  double page = 1;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(
      () => setState(() {
        page = _pageController.page;
        print(page);
      }),
    );
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (page < widget.bidCards.length - 1) {
        page++;
      } else {
        page = 0; // Loop back to the first page
      }
      _pageController.animateToPage(
        page.toInt(),
        duration: const Duration(milliseconds: 500),
        curve: Curves.linear,
      );
    });
  }

  // Function to calculate the scale based on the current page and index
  double _calculateScale(int index) {
    double scale = (page - index).abs().clamp(0.0, 1.0).toDouble();
    return 1 - (scale * 0.2); // Gradual scale decrease
  }

  // Function to calculate the opacity based on the scale
  double _calculateOpacity(double scale) {
    return scale > 0.8 ? 0 : 0.5; // Elements in the center are more visible
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LoopPageView.builder(
      controller: _pageController,
      itemCount: widget.bidCards.length,
      itemBuilder: (context, index) {
        double scale = _calculateScale(index);
        double opacity = _calculateOpacity(scale);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: TransformingBidItem(
            scale: scale,
            opacity: opacity,
            bidCardModel: widget.bidCards[index],
            isEnded: widget.isEnded,
          ),
        );
      },
    );
  }
}
