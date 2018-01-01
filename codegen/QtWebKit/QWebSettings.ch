%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

/*
enum QWebSettings::FontFamily
*/
#define QWebSettings_StandardFont                                    0
#define QWebSettings_FixedFont                                       1
#define QWebSettings_SerifFont                                       2
#define QWebSettings_SansSerifFont                                   3
#define QWebSettings_CursiveFont                                     4
#define QWebSettings_FantasyFont                                     5

/*
enum QWebSettings::FontSize
*/
#define QWebSettings_MinimumFontSize                                 0
#define QWebSettings_MinimumLogicalFontSize                          1
#define QWebSettings_DefaultFontSize                                 2
#define QWebSettings_DefaultFixedFontSize                            3

/*
enum QWebSettings::WebAttribute
*/
#define QWebSettings_AutoLoadImages                                  0
#define QWebSettings_DnsPrefetchEnabled                              ?
#define QWebSettings_JavascriptEnabled                               1
#define QWebSettings_JavaEnabled                                     2
#define QWebSettings_PluginsEnabled                                  3
#define QWebSettings_PrivateBrowsingEnabled                          4
#define QWebSettings_JavascriptCanOpenWindows                        5
#define QWebSettings_JavascriptCanAccessClipboard                    6
#define QWebSettings_DeveloperExtrasEnabled                          7
#define QWebSettings_SpatialNavigationEnabled                        ?
#define QWebSettings_LinksIncludedInFocusChain                       8
#define QWebSettings_ZoomTextOnly                                    9
#define QWebSettings_PrintElementBackgrounds                         10
#define QWebSettings_OfflineStorageDatabaseEnabled                   11
#define QWebSettings_OfflineWebApplicationCacheEnabled               12
#define QWebSettings_LocalStorageEnabled                             13
#define QWebSettings_LocalStorageDatabaseEnabled                     QWebSettings_LocalStorageEnabled
#define QWebSettings_LocalContentCanAccessRemoteUrls                 ?
#define QWebSettings_LocalContentCanAccessFileUrls                   ?
#define QWebSettings_XSSAuditingEnabled                              ?
#define QWebSettings_AcceleratedCompositingEnabled                   ?
#define QWebSettings_TiledBackingStoreEnabled                        ?
#define QWebSettings_FrameFlatteningEnabled                          ?
#define QWebSettings_SiteSpecificQuirksEnabled                       ?

/*
enum QWebSettings::WebGraphic
*/
#define QWebSettings_MissingImageGraphic                             0
#define QWebSettings_MissingPluginGraphic                            1
#define QWebSettings_DefaultFrameIconGraphic                         2
#define QWebSettings_TextAreaSizeGripCornerGraphic                   3
