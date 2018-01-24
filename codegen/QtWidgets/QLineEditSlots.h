%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
  void cursorPositionChanged ( int iold, int inew );
  void editingFinished ();
  void returnPressed ();
  void selectionChanged ();
  void textChanged ( const QString & text );
  void textEdited ( const QString & text );
$endSlotsClass
