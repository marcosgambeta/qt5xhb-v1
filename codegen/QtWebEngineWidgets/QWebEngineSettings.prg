%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=static QWebEngineSettings *globalSettings()
$staticMethod=5,4,0|QWebEngineSettings *|globalSettings|

$prototype=QString fontFamily(FontFamily which) const
$method=5,4,0|QString|fontFamily|QWebEngineSettings::FontFamily

$prototype=void setFontFamily(FontFamily which, const QString &family)
$method=5,4,0|void|setFontFamily|QWebEngineSettings::FontFamily,const QString &

$prototype=void resetFontFamily(FontFamily which)
$method=5,4,0|void|resetFontFamily|QWebEngineSettings::FontFamily

$prototype=int fontSize(FontSize type) const
$method=5,4,0|int|fontSize|QWebEngineSettings::FontSize

$prototype=void setFontSize(FontSize type, int size)
$method=5,4,0|void|setFontSize|QWebEngineSettings::FontSize,int

$prototype=void resetFontSize(FontSize type)
$method=5,4,0|void|resetFontSize|QWebEngineSettings::FontSize

$prototype=void setAttribute(WebAttribute attr, bool on)
$method=5,4,0|void|setAttribute|QWebEngineSettings::WebAttribute,bool

$prototype=bool testAttribute(WebAttribute attr) const
$method=5,4,0|bool|testAttribute|QWebEngineSettings::WebAttribute

$prototype=void resetAttribute(WebAttribute attr)
$method=5,4,0|void|resetAttribute|QWebEngineSettings::WebAttribute

$prototype=QString defaultTextEncoding() const
$method=5,4,0|QString|defaultTextEncoding|

$prototype=void setDefaultTextEncoding(const QString &encoding)
$method=5,4,0|void|setDefaultTextEncoding|const QString &

$extraMethods

#pragma ENDDUMP
