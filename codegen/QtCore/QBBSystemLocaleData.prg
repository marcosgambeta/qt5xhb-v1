%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD new
   METHOD delete
   METHOD measurementSystem
   METHOD timeFormat
   METHOD dateTimeFormat
   METHOD languageLocale
   METHOD regionLocale
   METHOD installSocketNotifiers
   METHOD readLanguageLocale
   METHOD readRegionLocale
   METHOD readMeasurementSystem
   METHOD readHourFormat

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QBBSystemLocaleData()
$constructor=|new|

$deleteMethod

$prototype=uint measurementSystem()
$method=|uint|measurementSystem|

$prototype=QVariant timeFormat(QLocale::FormatType)
$method=|QVariant|timeFormat|QLocale::FormatType

$prototype=QVariant dateTimeFormat(QLocale::FormatType)
$method=|QVariant|dateTimeFormat|QLocale::FormatType

$prototype=QLocale languageLocale()
$method=|QLocale|languageLocale|

$prototype=QLocale regionLocale()
$method=|QLocale|regionLocale|

$prototype=void installSocketNotifiers()
$method=|void|installSocketNotifiers|

$prototype=void readLanguageLocale()
$method=|void|readLanguageLocale|

$prototype=void readRegionLocale()
$method=|void|readRegionLocale|

$prototype=void readMeasurementSystem()
$method=|void|readMeasurementSystem|

$prototype=void readHourFormat()
$method=|void|readHourFormat|

#pragma ENDDUMP
