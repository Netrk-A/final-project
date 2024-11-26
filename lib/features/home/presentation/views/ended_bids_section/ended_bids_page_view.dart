import 'package:flutter/material.dart';
import 'package:peakmart/features/home/presentation/views/bid_section/transforming_bid_item.dart';
import 'package:peakmart/features/home/presentation/views/ended_bids_section/transforming_ended_bids_item.dart';

class EndedBidsPageView extends StatefulWidget {
  const EndedBidsPageView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EndedBidsPageViewState createState() => _EndedBidsPageViewState();
}

class _EndedBidsPageViewState extends State<EndedBidsPageView> {
  final PageController _pageController = PageController(viewportFraction: 0.65);
  double _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
      });
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
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: PageView.builder(
        controller: _pageController,
        itemCount: 4,
        itemBuilder: (context, index) {
          double scale = _calculateScale(index);
          double opacity = _calculateOpacity(scale);
          return TransformingEndedBidsItem(
            scale: scale,
            opacity: opacity,
          );
        },
      ),
    );
  }
}
