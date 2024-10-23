enum Pages {
  channel,
  podcast,
  favorite,
  error,
  player,
}

extension AppPageExtension on Pages {
  String get screenPath {
    switch (this) {
      case Pages.channel:
        return "/";
      case Pages.podcast:
        return "/podcast";
      case Pages.favorite:
        return "/favorite";
      case Pages.player:
        return "/player";
      case Pages.error:
        return "/error";
    }
  }

  String get screenName {
    switch (this) {
      case Pages.channel:
        return "CHANNEL";
      case Pages.podcast:
        return "PODCAST";
      case Pages.favorite:
        return "FAVORITE";
      case Pages.player:
        return "PLAYER";
      case Pages.error:
        return "ERROR";
    }
  }
}
