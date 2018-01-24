%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
  void activated ( const QDate & date );
  void clicked ( const QDate & date );
  void currentPageChanged ( int year, int month );
  void selectionChanged ();
$endSlotsClass
