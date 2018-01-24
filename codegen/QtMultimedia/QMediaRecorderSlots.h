%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
  void actualLocationChanged(const QUrl & location);
  void availabilityChanged(bool available);
  void availabilityChanged(QMultimedia::AvailabilityStatus availability);
  void durationChanged(qint64 duration);
  void error(QMediaRecorder::Error error);
  void metaDataAvailableChanged(bool available);
  void metaDataChanged();
  void metaDataChanged(const QString & key, const QVariant & value);
  void metaDataWritableChanged(bool writable);
  void mutedChanged(bool muted);
  void stateChanged(QMediaRecorder::State state);
  void statusChanged(QMediaRecorder::Status status);
  void volumeChanged(qreal volume);
$endSlotsClass
