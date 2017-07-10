$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QLOCALE
#endif

CLASS QBBSystemLocaleData INHERIT QObject

   DATA self_destruction INIT .F.

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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QBBSystemLocaleData()
*/
$constructor=|new|

$deleteMethod

/*
uint measurementSystem()
*/
$method=|uint|measurementSystem|

/*
QVariant timeFormat(QLocale::FormatType)
*/
$method=|QVariant|timeFormat|QLocale::FormatType

/*
QVariant dateTimeFormat(QLocale::FormatType)
*/
$method=|QVariant|dateTimeFormat|QLocale::FormatType

/*
QLocale languageLocale()
*/
$method=|QLocale|languageLocale|

/*
QLocale regionLocale()
*/
$method=|QLocale|regionLocale|

/*
void installSocketNotifiers()
*/
$method=|void|installSocketNotifiers|

/*
void readLanguageLocale()
*/
$method=|void|readLanguageLocale|

/*
void readRegionLocale()
*/
$method=|void|readRegionLocale|

/*
void readMeasurementSystem()
*/
$method=|void|readMeasurementSystem|

/*
void readHourFormat()
*/
$method=|void|readHourFormat|

#pragma ENDDUMP
