%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void currentChanged( const QString & path )
$signal=|void directoryEntered( const QString & directory )
$signal=|void fileSelected( const QString & file )
$signal=|void filesSelected( const QStringList & selected )
$signal=|void filterSelected( const QString & filter )
$signal=|void urlSelected( const QUrl & url )
$signal=|void urlsSelected( const QList<QUrl> & urls )
$signal=|void currentUrlChanged( const QUrl & url )
$signal=|void directoryUrlEntered( const QUrl & directory )
$endSlotsClass
