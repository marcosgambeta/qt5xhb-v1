%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
  void contentsSizeChanged ( const QSize & size );
  void iconChanged ();
  void initialLayoutCompleted ();
  void javaScriptWindowObjectCleared ();
  void loadFinished ( bool ok );
  void loadStarted ();
  void pageChanged ();
/*
  void provisionalLoad (); TODO: check signal (not present in the documentation)
*/
  void titleChanged ( const QString & title );
  void urlChanged ( const QUrl & url );
$endSlotsClass
