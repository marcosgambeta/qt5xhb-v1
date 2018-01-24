%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,4,0

$beginSlotsClass
  void loadStarted();
  void loadProgress(int progress);
  void loadFinished(bool b);
  void titleChanged(const QString& title);
  void selectionChanged();
  void urlChanged(const QUrl& url);
  void iconUrlChanged(const QUrl& url);
$endSlotsClass
