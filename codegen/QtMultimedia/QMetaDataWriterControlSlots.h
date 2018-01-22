%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQMetaDataWriterControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQMetaDataWriterControl(QObject *parent = 0);
  ~SlotsQMetaDataWriterControl();
  public slots:
  void metaDataChanged();
  void metaDataChanged(const QString &key, const QVariant &value);
  void writableChanged(bool writable);
  void metaDataAvailableChanged(bool available);
};
