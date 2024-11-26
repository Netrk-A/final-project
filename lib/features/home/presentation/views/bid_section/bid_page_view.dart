
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/bid_card_model.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/transforming_bid_item.dart';

class BidPageView extends StatefulWidget {
  const BidPageView({super.key , required this.bidCards});
  final List<BidCardModel> bidCards ;
  @override
  _BidPageViewState createState() => _BidPageViewState();
}

class _BidPageViewState extends State<BidPageView> {
  final PageController _pageController = PageController(viewportFraction: 0.65);
  double _currentPage = 1;
  int page =1;
  Timer? _timer;
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
      });
    });
    _startAutoScroll();
  }
  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentPage < 3) {
        page++;
      } else {
        page = 0; // Loop back to the first page
      }
      _pageController.animateToPage(
        page,
        duration: Duration(milliseconds: 500),
        curve: Curves.linear,
      );
    });
  }
  // Function to calculate the scale based on the current page and index
  double _calculateScale(int index) {
    double scale = (_currentPage - index).abs().clamp(0.0, 1.0);
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: PageView.builder(
        reverse: true,
        allowImplicitScrolling: true,
        controller: _pageController,
        itemCount: widget.bidCards.length,
        itemBuilder: (context, index) {
          double scale = _calculateScale(index);
          double opacity = _calculateOpacity(scale);
          return TransformingBidItem(
            scale: scale,
            opacity: opacity,
            bidCardModel: widget.bidCards[index],
          );
        },
      ),
    );
  }
}
