%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QPagedPaintDevice

   METHOD new
   METHOD delete
   METHOD abort
   METHOD collateCopies
   METHOD setCollateCopies
   METHOD colorMode
   METHOD setColorMode
   METHOD copyCount
   METHOD setCopyCount
   METHOD creator
   METHOD setCreator
   METHOD docName
   METHOD setDocName
   METHOD doubleSidedPrinting
   METHOD setDoubleSidedPrinting
   METHOD duplex
   METHOD setDuplex
   METHOD fontEmbeddingEnabled
   METHOD setFontEmbeddingEnabled
   METHOD fromPage
   METHOD fullPage
   METHOD setFullPage
   METHOD getPageMargins
   METHOD setPageMargins
   METHOD isValid
   METHOD newPage
   METHOD orientation
   METHOD setOrientation
   METHOD outputFileName
   METHOD setOutputFileName
   METHOD outputFormat
   METHOD setOutputFormat
   METHOD pageOrder
   METHOD setPageOrder
   METHOD pageRect
   METHOD paperRect
   METHOD paperSize
   METHOD paperSource
   METHOD setPaperSource
   METHOD printEngine
   METHOD printProgram
   METHOD setPrintProgram
   METHOD printRange
   METHOD setPrintRange
   METHOD printerName
   METHOD setPrinterName
   METHOD printerSelectionOption
   METHOD printerState
   METHOD resolution
   METHOD setResolution
   METHOD setFromTo
   METHOD setPaperSize
   METHOD setPrinterSelectionOption
   METHOD setWinPageSize
   METHOD supportedPaperSources
   METHOD supportedResolutions
   METHOD supportsMultipleCopies
   METHOD toPage
   METHOD winPageSize
   METHOD paintEngine
   METHOD devType
   METHOD pageSize
   METHOD setPageSize
   METHOD setPageSizeMM
   METHOD paperName
   METHOD setPaperName
   METHOD numCopies
   METHOD setNumCopies
   METHOD actualNumCopies
   METHOD pageLayout
   METHOD pdfVersion
   METHOD setPageLayout
   METHOD setPageOrientation
   METHOD setPdfVersion

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPrinter ( PrinterMode mode = ScreenResolution )
$internalConstructor=|new1|QPrinter::PrinterMode=QPrinter::ScreenResolution

$prototype=QPrinter ( const QPrinterInfo & printer, PrinterMode mode = ScreenResolution )
$internalConstructor=|new2|const QPrinterInfo &,QPrinter::PrinterMode=QPrinter::ScreenResolution

//[1]QPrinter ( PrinterMode mode = ScreenResolution )
//[2]QPrinter ( const QPrinterInfo & printer, PrinterMode mode = ScreenResolution )

HB_FUNC_STATIC( QPRINTER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QPrinter_new1();
  }
  else if( ISBETWEEN(1,2) && ISQPRINTERINFO(1) && ISOPTNUM(2) )
  {
    QPrinter_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool abort ()
$method=|bool|abort|

$prototype=bool collateCopies () const
$method=|bool|collateCopies|

$prototype=void setCollateCopies ( bool collate )
$method=|void|setCollateCopies|bool

$prototype=ColorMode colorMode () const
$method=|QPrinter::ColorMode|colorMode|

$prototype=void setColorMode ( ColorMode newColorMode )
$method=|void|setColorMode|QPrinter::ColorMode

$prototype=int copyCount () const
$method=|int|copyCount|

$prototype=void setCopyCount ( int count )
$method=|void|setCopyCount|int

$prototype=QString creator () const
$method=|QString|creator|

$prototype=void setCreator ( const QString & creator )
$method=|void|setCreator|const QString &

$prototype=QString docName () const
$method=|QString|docName|

$prototype=void setDocName ( const QString & name )
$method=|void|setDocName|const QString &

$prototype=bool doubleSidedPrinting () const
$method=|bool|doubleSidedPrinting|

$prototype=void setDoubleSidedPrinting ( bool doubleSided )
$method=|void|setDoubleSidedPrinting|bool

$prototype=DuplexMode duplex () const
$method=|QPrinter::DuplexMode|duplex|

$prototype=void setDuplex ( DuplexMode duplex )
$method=|void|setDuplex|QPrinter::DuplexMode

$prototype=bool fontEmbeddingEnabled () const
$method=|bool|fontEmbeddingEnabled|

$prototype=void setFontEmbeddingEnabled ( bool enable )
$method=|void|setFontEmbeddingEnabled|bool

$prototype=int fromPage () const
$method=|int|fromPage|

$prototype=bool fullPage () const
$method=|bool|fullPage|

$prototype=void setFullPage ( bool fp )
$method=|void|setFullPage|bool

$prototype=void getPageMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom, Unit unit ) const
$method=|void|getPageMargins|qreal *,qreal *,qreal *,qreal *,QPrinter::Unit

$prototype=void setPageMargins ( qreal left, qreal top, qreal right, qreal bottom, Unit unit )
$internalMethod=|void|setPageMargins,setPageMargins1|qreal,qreal,qreal,qreal,QPrinter::Unit

$prototype=bool setPageMargins(const QMarginsF &margins, QPageLayout::Unit units)
$internalMethod=5,3,0|bool|setPageMargins,setPageMargins2|const QMarginsF &,QPageLayout::Unit

//[1]void setPageMargins ( qreal left, qreal top, qreal right, qreal bottom, Unit unit )
//[2]bool setPageMargins(const QMarginsF &margins, QPageLayout::Unit units)

HB_FUNC_STATIC( QPRINTER_SETPAGEMARGINS )
{
  if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QPrinter_setPageMargins1();
  }
  else if( ISNUMPAR(2) && ISQMARGINSF(1) && ISNUM(2) )
  {
    QPrinter_setPageMargins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=bool newPage ()
$method=|bool|newPage|

$prototype=Orientation orientation () const
$method=|QPrinter::Orientation|orientation|

$prototype=void setOrientation ( Orientation orientation )
$method=|void|setOrientation|QPrinter::Orientation

$prototype=QString outputFileName () const
$method=|QString|outputFileName|

$prototype=void setOutputFileName ( const QString & fileName )
$method=|void|setOutputFileName|const QString &

$prototype=OutputFormat outputFormat () const
$method=|QPrinter::OutputFormat|outputFormat|

$prototype=void setOutputFormat ( OutputFormat format )
$method=|void|setOutputFormat|QPrinter::OutputFormat

$prototype=PageOrder pageOrder () const
$method=|QPrinter::PageOrder|pageOrder|

$prototype=void setPageOrder ( PageOrder pageOrder )
$method=|void|setPageOrder|QPrinter::PageOrder

$prototype=QRect pageRect () const
$internalMethod=|QRect|pageRect,pageRect1|

$prototype=QRectF pageRect ( Unit unit ) const
$internalMethod=|QRectF|pageRect,pageRect2|QPrinter::Unit

//[1]QRect pageRect () const
//[2]QRectF pageRect ( Unit unit ) const

HB_FUNC_STATIC( QPRINTER_PAGERECT )
{
  if( ISNUMPAR(0) )
  {
    QPrinter_pageRect1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPrinter_pageRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QRect paperRect () const
$internalMethod=|QRect|paperRect,paperRect1|

$prototype=QRectF paperRect ( Unit unit ) const
$internalMethod=|QRectF|paperRect,paperRect2|QPrinter::Unit

//[1]QRect paperRect () const
//[2]QRectF paperRect ( Unit unit ) const

HB_FUNC_STATIC( QPRINTER_PAPERRECT )
{
  if( ISNUMPAR(0) )
  {
    QPrinter_paperRect1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPrinter_paperRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=PaperSize paperSize () const
$internalMethod=|QPrinter::PaperSize|paperSize,paperSize1|

$prototype=QSizeF paperSize ( Unit unit ) const
$internalMethod=|QSizeF|paperSize,paperSize2|QPrinter::Unit

//[1]PaperSize paperSize () const
//[2]QSizeF paperSize ( Unit unit ) const

HB_FUNC_STATIC( QPRINTER_PAPERSIZE )
{
  if( ISNUMPAR(0) )
  {
    QPrinter_paperSize1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPrinter_paperSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=PaperSource paperSource () const
$method=|QPrinter::PaperSource|paperSource|

$prototype=void setPaperSource ( PaperSource source )
$method=|void|setPaperSource|QPrinter::PaperSource

$prototype=QPrintEngine * printEngine () const
$method=|QPrintEngine *|printEngine|

$prototype=QString printProgram () const
$method=|QString|printProgram|

$prototype=void setPrintProgram ( const QString & printProg )
$method=|void|setPrintProgram|const QString &

$prototype=PrintRange printRange () const
$method=|QPrinter::PrintRange|printRange|

$prototype=void setPrintRange ( PrintRange range )
$method=|void|setPrintRange|QPrinter::PrintRange

$prototype=QString printerName () const
$method=|QString|printerName|

$prototype=void setPrinterName ( const QString & name )
$method=|void|setPrinterName|const QString &

$prototype=QString printerSelectionOption () const
$method=|QString|printerSelectionOption||#if !defined(Q_OS_WIN) || defined(Q_QDOC)

$prototype=PrinterState printerState () const
$method=|QPrinter::PrinterState|printerState|

$prototype=int resolution () const
$method=|int|resolution|

$prototype=void setResolution ( int dpi )
$method=|void|setResolution|int

$prototype=void setFromTo ( int from, int to )
$method=|void|setFromTo|int,int

$prototype=void setPaperSize ( PaperSize newPaperSize )
$internalMethod=|void|setPaperSize,setPaperSize1|QPrinter::PaperSize

$prototype=void setPaperSize ( const QSizeF & paperSize, Unit unit )
$internalMethod=|void|setPaperSize,setPaperSize2|const QSizeF &,QPrinter::Unit

//[1]void setPaperSize ( PaperSize newPaperSize )
//[2]void setPaperSize ( const QSizeF & paperSize, Unit unit )

HB_FUNC_STATIC( QPRINTER_SETPAPERSIZE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPrinter_setPaperSize1();
  }
  else if( ISNUMPAR(2) && ISQSIZEF(1) && ISNUM(2) )
  {
    QPrinter_setPaperSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setPrinterSelectionOption ( const QString & option )
$method=|void|setPrinterSelectionOption|const QString &|#if !defined(Q_OS_WIN) || defined(Q_QDOC)

$prototype=void setWinPageSize ( int pageSize )
$method=|void|setWinPageSize|int|#ifdef Q_OS_WIN

$prototype=QList<PaperSource> supportedPaperSources () const
$method=|QList<QPrinter::PaperSource>|supportedPaperSources||#ifdef Q_OS_WIN

$prototype=QList<int> supportedResolutions () const
$method=|QList<int>|supportedResolutions|

$prototype=bool supportsMultipleCopies () const
$method=|bool|supportsMultipleCopies|

$prototype=int toPage () const
$method=|int|toPage|

$prototype=int winPageSize () const
$method=|int|winPageSize||#ifdef Q_OS_WIN

$prototype=QPaintEngine * paintEngine () const
$method=|QPaintEngine *|paintEngine|

$prototype=int devType() const
$method=|int|devType|

$prototype=PageSize pageSize() const
$method=|QPrinter::PageSize|pageSize|

$prototype=void setPageSize(PageSize)
$internalMethod=|void|setPageSize,setPageSize1|QPrinter::PageSize

$prototype=bool setPageSize(const QPageSize &pageSize)
$internalMethod=5,3,0|bool|setPageSize,setPageSize2|const QPageSize &

//[1]void setPageSize(PageSize)
//[2]bool setPageSize(const QPageSize &pageSize)

HB_FUNC_STATIC( QPRINTER_SETPAGESIZE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPrinter_setPageSize1();
  }
  else if( ISNUMPAR(1) && ISQPAGESIZE(1) )
  {
    QPrinter_setPageSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setPageSizeMM(const QSizeF &size)
$method=|void|setPageSizeMM|const QSizeF &

$prototype=QString paperName() const
$method=|QString|paperName|

$prototype=void setPaperName(const QString &paperName)
$method=|void|setPaperName|const QString &

$prototype=int numCopies() const
$method=|int|numCopies|

$prototype=void setNumCopies(int)
$method=|void|setNumCopies|int

$prototype=int actualNumCopies() const
$method=|int|actualNumCopies|

$prototype=QPageLayout pageLayout() const
$method=5,3,0|QPageLayout|pageLayout|

$prototype=PdfVersion pdfVersion() const
$method=5,10,0|QPagedPaintDevice::PdfVersion|pdfVersion|

$prototype=bool setPageLayout(const QPageLayout &newLayout)
$method=5,3,0|bool|setPageLayout|const QPageLayout &

$prototype=bool setPageOrientation(QPageLayout::Orientation orientation)
$method=5,3,0|bool|setPageOrientation|QPageLayout::Orientation

$prototype=void setPdfVersion(PdfVersion version)
$method=5,10,0|void|setPdfVersion|QPagedPaintDevice::PdfVersion

#pragma ENDDUMP
