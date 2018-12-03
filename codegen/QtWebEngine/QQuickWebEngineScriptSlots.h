%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngine

$header

$includes

$beginSlotsClass
$signal=|injectionPointChanged( QQuickWebEngineScript::InjectionPoint injectionPoint )
$signal=|nameChanged( const QString & name )
$signal=|runOnSubframesChanged( bool on )
$signal=|sourceCodeChanged( const QString & code )
$signal=|sourceUrlChanged( const QUrl & url )
$signal=|worldIdChanged( QQuickWebEngineScript::ScriptWorldId scriptWorldId )
$endSlotsClass
