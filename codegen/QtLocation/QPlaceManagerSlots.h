%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,4,0

$beginSlotsClass
  void finished(QPlaceReply *reply);
  void error(QPlaceReply * reply, QPlaceReply::Error error, const QString &errorString = QString());
  void placeAdded(const QString &placeId);
  void placeUpdated(const QString &placeId);
  void placeRemoved(const QString &placeId);
  void categoryAdded(const QPlaceCategory &category, const QString &parentId);
  void categoryUpdated(const QPlaceCategory &category, const QString &parentId);
  void categoryRemoved(const QString &categoryId, const QString &parentId);
  void dataChanged();
$endSlotsClass
