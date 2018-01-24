%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
  void anchorClicked ( const QUrl & link );
  void backwardAvailable ( bool available );
  void forwardAvailable ( bool available );
  void highlighted ( const QUrl & link );
  void highlighted ( const QString & link );
  void historyChanged ();
  void sourceChanged ( const QUrl & src );
$endSlotsClass
