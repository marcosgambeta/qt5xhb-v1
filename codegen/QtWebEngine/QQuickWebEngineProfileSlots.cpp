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
$slot=|cachePathChanged()
%% $slot=|downloadFinished( QQuickWebEngineDownloadItem * download )
%% $slot=|downloadRequested( QQuickWebEngineDownloadItem * download )
$slot=|httpAcceptLanguageChanged()
$slot=|httpCacheMaximumSizeChanged()
$slot=|httpCacheTypeChanged()
$slot=|httpUserAgentChanged()
$slot=|offTheRecordChanged()
$slot=|persistentCookiesPolicyChanged()
$slot=|persistentStoragePathChanged()
$slot=|spellCheckEnabledChanged()
$slot=|spellCheckLanguagesChanged()
$slot=|storageNameChanged()
$endSlotsClass
