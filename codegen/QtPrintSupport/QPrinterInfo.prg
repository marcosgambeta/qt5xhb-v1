%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPrintSupport

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>

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
$method=5,3,0|bool|isRemote|

$prototype=QPrinter::PrinterState state() const
$method=5,3,0|QPrinter::PrinterState|state|

$prototype=QList<QPageSize> supportedPageSizes() const
$method=5,3,0|QList<QPageSize>|supportedPageSizes|

$prototype=QPageSize defaultPageSize() const
$method=5,3,0|QPageSize|defaultPageSize|

$prototype=bool supportsCustomPageSizes() const
$method=5,3,0|bool|supportsCustomPageSizes|

$prototype=QPageSize minimumPhysicalPageSize() const
$method=5,3,0|QPageSize|minimumPhysicalPageSize|

$prototype=QPageSize maximumPhysicalPageSize() const
$method=5,3,0|QPageSize|maximumPhysicalPageSize|

$prototype=QList<int> supportedResolutions() const
$method=5,3,0|QList<int>|supportedResolutions|

$prototype=static QStringList availablePrinterNames()
$staticMethod=5,3,0|QStringList|availablePrinterNames|

$prototype=static QString defaultPrinterName()
$staticMethod=5,3,0|QString|defaultPrinterName|

$prototype=static QPrinterInfo printerInfo(const QString &printerName)
$staticMethod=|QPrinterInfo|printerInfo|const QString &

$prototype=QPrinter::DuplexMode defaultDuplexMode() const
$method=5,4,0|QPrinter::DuplexMode|defaultDuplexMode|

$prototype=QList<QPrinter::DuplexMode> supportedDuplexModes() const
$method=5,4,0|QList<QPrinter::DuplexMode>|supportedDuplexModes|

$extraMethods

#pragma ENDDUMP
