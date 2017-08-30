$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAGESIZE
#endif

CLASS QPrinterInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isDefault
   METHOD isNull
   METHOD printerName
   METHOD supportedPaperSizes
   METHOD availablePrinters
   METHOD defaultPrinter
   METHOD description
   METHOD location
   METHOD makeAndModel
   METHOD isRemote
   METHOD state
   METHOD supportedPageSizes
   METHOD defaultPageSize
   METHOD supportsCustomPageSizes
   METHOD minimumPhysicalPageSize
   METHOD maximumPhysicalPageSize
   METHOD supportedResolutions
   METHOD availablePrinterNames
   METHOD defaultPrinterName
   METHOD printerInfo

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

/*
QPrinterInfo ()
*/
$internalConstructor=|new1|

/*
QPrinterInfo ( const QPrinterInfo & src )
*/
$internalConstructor=|new2|const QPrinterInfo &

/*
explicit QPrinterInfo ( const QPrinter & printer )
*/
$internalConstructor=|new3|const QPrinter &

//[1]QPrinterInfo ()
//[2]QPrinterInfo ( const QPrinterInfo & src )
//[3]explicit QPrinterInfo ( const QPrinter & printer )

HB_FUNC_STATIC( QPRINTERINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPrinterInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQPRINTERINFO(1) )
  {
    QPrinterInfo_new2();
  }
  else if( ISNUMPAR(1) && ISQPRINTER(1) )
  {
    QPrinterInfo_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isDefault () const
*/
$method=|bool|isDefault|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
QString printerName () const
*/
$method=|QString|printerName|

/*
QList<QPrinter::PaperSize> supportedPaperSizes () const
*/
$method=|QList<QPrinter::PaperSize>|supportedPaperSizes|

/*
static QList<QPrinterInfo> availablePrinters ()
*/
$staticMethod=|QList<QPrinterInfo>|availablePrinters|

/*
static QPrinterInfo defaultPrinter ()
*/
$staticMethod=|QPrinterInfo|defaultPrinter|

/*
QString description() const
*/
$method=|QString|description|

/*
QString location() const
*/
$method=|QString|location|

/*
QString makeAndModel() const
*/
$method=|QString|makeAndModel|

/*
bool isRemote() const
*/
$method=|bool|isRemote|

/*
QPrinter::PrinterState state() const
*/
$method=|QPrinter::PrinterState|state|

/*
QList<QPageSize> supportedPageSizes() const
*/
$method=|QList<QPageSize>|supportedPageSizes|

/*
QPageSize defaultPageSize() const
*/
$method=|QPageSize|defaultPageSize|

/*
bool supportsCustomPageSizes() const
*/
$method=|bool|supportsCustomPageSizes|

/*
QPageSize minimumPhysicalPageSize() const
*/
$method=|QPageSize|minimumPhysicalPageSize|

/*
QPageSize maximumPhysicalPageSize() const
*/
$method=|QPageSize|maximumPhysicalPageSize|

/*
QList<int> supportedResolutions() const
*/
$method=|QList<int>|supportedResolutions|

/*
static QStringList availablePrinterNames()
*/
$staticMethod=|QStringList|availablePrinterNames|

/*
static QString defaultPrinterName()
*/
$staticMethod=|QString|defaultPrinterName|

/*
static QPrinterInfo printerInfo(const QString &printerName)
*/
$staticMethod=|QPrinterInfo|printerInfo|const QString &

$extraMethods

#pragma ENDDUMP
