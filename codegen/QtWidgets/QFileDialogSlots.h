%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

$includes

$beginSlotsClass
$signal=|currentChanged( const QString & path )
$signal=|directoryEntered( const QString & directory )
$signal=|fileSelected( const QString & file )
$signal=|filesSelected( const QStringList & selected )
$signal=|filterSelected( const QString & filter )
$signal=|urlSelected( const QUrl & url )
$signal=|urlsSelected( const QList<QUrl> & urls )
$signal=|currentUrlChanged( const QUrl & url )
$signal=|directoryUrlEntered( const QUrl & directory )
$endSlotsClass
