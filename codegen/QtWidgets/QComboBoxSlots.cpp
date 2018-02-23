%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|activated( int index )
$slot=|activated( const QString & text )
$slot=|currentIndexChanged( int index )
$slot=|currentIndexChanged( const QString & text )
$slot=|editTextChanged( const QString & text )
$slot=|highlighted( int index )
$slot=|highlighted( const QString & text )
$endSlotsClass

$beginGroup
$signalMethod=|activated(int)
$signalMethod=|activated(QString)
$endGroup
$beginGroup
$signalMethod=|currentIndexChanged(int)
$signalMethod=|currentIndexChanged(QString)
$endGroup
$signalMethod=|editTextChanged(QString)
$beginGroup
$signalMethod=|highlighted(int)
$signalMethod=|highlighted(QString)
$endGroup

// for compatibility

HB_FUNC( QCOMBOBOX_ONACTIVATED )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONACTIVATED1 );
}

HB_FUNC( QCOMBOBOX_ONACTIVATEDC )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONACTIVATED2 );
}

HB_FUNC( QCOMBOBOX_ONCURRENTINDEXCHANGED )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONCURRENTINDEXCHANGED1 );
}

HB_FUNC( QCOMBOBOX_ONCURRENTINDEXCHANGEDC )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONCURRENTINDEXCHANGED2 );
}

HB_FUNC( QCOMBOBOX_ONHIGHLIGHTED )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONHIGHLIGHTED1 );
}

HB_FUNC( QCOMBOBOX_ONHIGHLIGHTEDC )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONHIGHLIGHTED2 );
}
