%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
  void activated ( int index );
  void activated ( const QString & text );
  void currentIndexChanged ( int index );
  void currentIndexChanged ( const QString & text );
  void editTextChanged ( const QString & text );
  void highlighted ( int index );
  void highlighted ( const QString & text );
$endSlotsClass
