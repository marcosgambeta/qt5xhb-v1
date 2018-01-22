%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQMediaPlaylist: public QObject
{
  Q_OBJECT
  public:
  SlotsQMediaPlaylist(QObject *parent = 0);
  ~SlotsQMediaPlaylist();
  public slots:
  void currentIndexChanged(int position);
  void currentMediaChanged(const QMediaContent & content);
  void loadFailed();
  void loaded();
  void mediaAboutToBeInserted(int start, int end);
  void mediaAboutToBeRemoved(int start, int end);
  void mediaChanged(int start, int end);
  void mediaInserted(int start, int end);
  void mediaRemoved(int start, int end);
  void playbackModeChanged(QMediaPlaylist::PlaybackMode mode);
};
