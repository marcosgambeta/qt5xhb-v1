%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=QPrinterInfo ()
$internalConstructor=|new1|

$prototype=QPrinterInfo ( const QPrinterInfo & src )
$internalConstructor=|new2|const QPrinterInfo &

$prototype=explicit QPrinterInfo ( const QPrinter & printer )
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

$prototype=bool isDefault () const
$method=|bool|isDefault|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=QString printerName () const
$method=|QString|printerName|

$prototype=QList<QPrinter::PaperSize> supportedPaperSizes () const
$method=|QList<QPrinter::PaperSize>|supportedPaperSizes|

$prototype=static QList<QPrinterInfo> availablePrinters ()
$staticMethod=|QList<QPrinterInfo>|availablePrinters|

$prototype=static QPrinterInfo defaultPrinter ()
$staticMethod=|QPrinterInfo|defaultPrinter|

$prototype=QString description() const
$method=|QString|description|

$prototype=QString location() const
$method=|QString|location|

$prototype=QString makeAndModel() const
$method=|QString|makeAndModel|

$prototype=bool isRemote() const
$method=|bool|isRemote|

$prototype=QPrinter::PrinterState state() const
$method=|QPrinter::PrinterState|state|

$prototype=QList<QPageSize> supportedPageSizes() const
$method=|QList<QPageSize>|supportedPageSizes|

$prototype=QPageSize defaultPageSize() const
$method=|QPageSize|defaultPageSize|

$prototype=bool supportsCustomPageSizes() const
$method=|bool|supportsCustomPageSizes|

$prototype=QPageSize minimumPhysicalPageSize() const
$method=|QPageSize|minimumPhysicalPageSize|

$prototype=QPageSize maximumPhysicalPageSize() const
$method=|QPageSize|maximumPhysicalPageSize|

$prototype=QList<int> supportedResolutions() const
$method=|QList<int>|supportedResolutions|

$prototype=static QStringList availablePrinterNames()
$staticMethod=|QStringList|availablePrinterNames|

$prototype=static QString defaultPrinterName()
$staticMethod=|QString|defaultPrinterName|

$prototype=static QPrinterInfo printerInfo(const QString &printerName)
$staticMethod=|QPrinterInfo|printerInfo|const QString &

$extraMethods

#pragma ENDDUMP
