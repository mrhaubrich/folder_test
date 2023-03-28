class Services {
  static Future<List<Map<String, dynamic>>> getAll({int timeout = 0}) async {
    if (timeout > 0) {
      await Future.delayed(Duration(seconds: timeout));
    }
    return [
      {
        'title': 'Folder 1',
        'icon': '',
        'children': [
          {
            'title': 'Google',
            'icon': 'https://cdn-icons-png.flaticon.com/512/2991/2991148.png',
            'children': [],
          },
          {
            'title': 'Spotify',
            'icon':
                'https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Spotify_icon.svg/1982px-Spotify_icon.svg.png',
            'children': [],
          },
        ],
      },
      {
        'title': 'Netflix',
        'icon': 'https://cdn-icons-png.flaticon.com/512/2504/2504929.png',
        'children': [],
      },
      {
        'title': 'Folder 2',
        'icon': '',
        'children': [
          {
            'title': 'Crunchyroll',
            'icon': 'https://cdn-icons-png.flaticon.com/512/889/889086.png',
            'children': [],
          },
          {
            'title': 'Casas Bahia',
            'icon':
                'https://play-lh.googleusercontent.com/awC73ss_zR9iJfXntzUsn6xKZiYQYUceI-y6Sd__txe4KWMRV5aVQimQD76peq92Mw',
            'children': [],
          },
        ],
      }
    ];
  }
}
