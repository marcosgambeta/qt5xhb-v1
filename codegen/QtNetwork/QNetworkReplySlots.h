%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQNetworkReply: public QObject
{
  Q_OBJECT
  public:
  SlotsQNetworkReply(QObject *parent = 0);
  ~SlotsQNetworkReply();
  public slots:
  void downloadProgress ( qint64 bytesReceived, qint64 bytesTotal );
  void error ( QNetworkReply::NetworkError code );
  void finished ();
  void metaDataChanged ();
  void uploadProgress ( qint64 bytesSent, qint64 bytesTotal );
};
