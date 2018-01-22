%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQFileDialog: public QObject
{
  Q_OBJECT
  public:
  SlotsQFileDialog(QObject *parent = 0);
  ~SlotsQFileDialog();
  public slots:
  void currentChanged ( const QString & path );
  void directoryEntered ( const QString & directory );
  void fileSelected ( const QString & file );
  void filesSelected ( const QStringList & selected );
  void filterSelected ( const QString & filter );
  void urlSelected(const QUrl &url);
  void urlsSelected(const QList<QUrl> &urls);
  void currentUrlChanged(const QUrl &url);
  void directoryUrlEntered(const QUrl &directory);
};
