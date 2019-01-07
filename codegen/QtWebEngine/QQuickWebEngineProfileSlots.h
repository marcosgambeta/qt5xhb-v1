%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngine

$header

$includes

$beginSlotsClass
$signal=|cachePathChanged()
%% TODO: implementar ?
%% $signal=|downloadFinished( QQuickWebEngineDownloadItem * download )
%% $signal=|downloadRequested( QQuickWebEngineDownloadItem * download )
$signal=|httpAcceptLanguageChanged()
$signal=|httpCacheMaximumSizeChanged()
$signal=|httpCacheTypeChanged()
$signal=|httpUserAgentChanged()
$signal=|offTheRecordChanged()
$signal=|persistentCookiesPolicyChanged()
$signal=|persistentStoragePathChanged()
$signal=|spellCheckEnabledChanged()
$signal=|spellCheckLanguagesChanged()
$signal=|storageNameChanged()
$endSlotsClass
