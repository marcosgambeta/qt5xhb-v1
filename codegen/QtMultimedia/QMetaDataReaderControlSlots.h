%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQMetaDataReaderControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQMetaDataReaderControl(QObject *parent = 0);
  ~SlotsQMetaDataReaderControl();
  public slots:
  void metaDataChanged();
  void metaDataChanged(const QString &key, const QVariant &value);
  void metaDataAvailableChanged(bool available);
};
