import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:radio_abia/core/constants/color.dart';

/// Formats and highlights specific text within a given corpus string.
Text formattedText({
  required String corpus,
  required String searchedWord,
  required BuildContext context,
}) {
  // If either the corpus or text is empty, return a regular Text widget
  if (corpus.isEmpty || searchedWord.isEmpty) {
    return Text(corpus);
  }

  // Regular expression to find matches for the specified text
  final RegExp regExp = RegExp(searchedWord, caseSensitive: false);

  // Find all matches in the corpus string
  final Iterable<Match> matches = regExp.allMatches(corpus);

  // List to store formatted text spans
  final List<TextSpan> textSpans = [];

  // Initialize the current index in the corpus string
  int currentIndex = 0;

  // Loop through each match and format the text accordingly
  for (final Match match in matches) {
    // Add text before the current match
    textSpans.add(TextSpan(
        text: corpus.substring(currentIndex, match.start),
        style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.w600,
            fontSize: 12.sp)));

    // Add the matched text with specific style
    textSpans.add(
      TextSpan(
        text: corpus.substring(match.start, match.end),
        style: TextStyle(
            color: const Color(0XFF37A550),
            fontWeight: FontWeight.w600,
            fontSize: 12.sp),
      ),
    );

    // Update the current index to the end of the current match
    currentIndex = match.end;
  }

  // Add the remaining text after the last match
  textSpans.add(TextSpan(
      text: corpus.substring(currentIndex),
      style: TextStyle(
          color: AppColors.textColor,
          fontWeight: FontWeight.w600,
          fontSize: 12.sp)));

  // Return a Text widget with the formatted text spans
  return Text.rich(
    TextSpan(children: textSpans),
    textScaler: TextScaler.noScaling,
    maxLines: 2,
    overflow: TextOverflow.ellipsis,
  );
}
