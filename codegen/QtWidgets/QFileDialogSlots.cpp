%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|currentChanged( const QString & path )
$slot=|directoryEntered( const QString & directory )
$slot=|fileSelected( const QString & file )
$slot=|filesSelected( const QStringList & selected )
$slot=|filterSelected( const QString & filter )
$slot=|urlSelected( const QUrl & url )
$slot=|urlsSelected( const QList<QUrl> & urls )
$slot=|currentUrlChanged( const QUrl & url )
$slot=|directoryUrlEntered( const QUrl & directory )
$endSlotsClass
