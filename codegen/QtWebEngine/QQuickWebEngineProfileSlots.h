%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void cachePathChanged()
%% TODO: implementar ?
%% $signal=|void downloadFinished( QQuickWebEngineDownloadItem * download )
%% $signal=|void downloadRequested( QQuickWebEngineDownloadItem * download )
$signal=|void httpAcceptLanguageChanged()
$signal=|void httpCacheMaximumSizeChanged()
$signal=|void httpCacheTypeChanged()
$signal=|void httpUserAgentChanged()
$signal=|void offTheRecordChanged()
$signal=|void persistentCookiesPolicyChanged()
$signal=|void persistentStoragePathChanged()
$signal=|void spellCheckEnabledChanged()
$signal=|void spellCheckLanguagesChanged()
$signal=|void storageNameChanged()
$endSlotsClass
