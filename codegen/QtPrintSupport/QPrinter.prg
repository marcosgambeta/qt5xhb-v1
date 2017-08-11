$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QRECTF
REQUEST QSIZEF
REQUEST QPRINTENGINE
REQUEST QPAINTENGINE
#endif

CLASS QPrinter INHERIT QPagedPaintDevice

   DATA self_destruction INIT .F.

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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QPrinter ( PrinterMode mode = ScreenResolution )
*/
$internalConstructor=|new1|QPrinter::PrinterMode=QPrinter::ScreenResolution

/*
QPrinter ( const QPrinterInfo & printer, PrinterMode mode = ScreenResolution )
*/
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

/*
bool abort ()
*/
$method=|bool|abort|

/*
bool collateCopies () const
*/
$method=|bool|collateCopies|

/*
void setCollateCopies ( bool collate )
*/
$method=|void|setCollateCopies|bool

/*
ColorMode colorMode () const
*/
$method=|QPrinter::ColorMode|colorMode|

/*
void setColorMode ( ColorMode newColorMode )
*/
$method=|void|setColorMode|QPrinter::ColorMode

/*
int copyCount () const
*/
$method=|int|copyCount|

/*
void setCopyCount ( int count )
*/
$method=|void|setCopyCount|int

/*
QString creator () const
*/
$method=|QString|creator|

/*
void setCreator ( const QString & creator )
*/
$method=|void|setCreator|const QString &

/*
QString docName () const
*/
$method=|QString|docName|

/*
void setDocName ( const QString & name )
*/
$method=|void|setDocName|const QString &

/*
bool doubleSidedPrinting () const
*/
$method=|bool|doubleSidedPrinting|

/*
void setDoubleSidedPrinting ( bool doubleSided )
*/
$method=|void|setDoubleSidedPrinting|bool

/*
DuplexMode duplex () const
*/
$method=|QPrinter::DuplexMode|duplex|

/*
void setDuplex ( DuplexMode duplex )
*/
$method=|void|setDuplex|QPrinter::DuplexMode

/*
bool fontEmbeddingEnabled () const
*/
$method=|bool|fontEmbeddingEnabled|

/*
void setFontEmbeddingEnabled ( bool enable )
*/
$method=|void|setFontEmbeddingEnabled|bool

/*
int fromPage () const
*/
$method=|int|fromPage|

/*
bool fullPage () const
*/
$method=|bool|fullPage|

/*
void setFullPage ( bool fp )
*/
$method=|void|setFullPage|bool

/*
void getPageMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom, Unit unit ) const
*/
$method=|void|getPageMargins|qreal *,qreal *,qreal *,qreal *,QPrinter::Unit

/*
void setPageMargins ( qreal left, qreal top, qreal right, qreal bottom, Unit unit )
*/
$method=|void|setPageMargins|qreal,qreal,qreal,qreal,QPrinter::Unit

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
bool newPage ()
*/
$method=|bool|newPage|

/*
Orientation orientation () const
*/
$method=|QPrinter::Orientation|orientation|

/*
void setOrientation ( Orientation orientation )
*/
$method=|void|setOrientation|QPrinter::Orientation

/*
QString outputFileName () const
*/
$method=|QString|outputFileName|

/*
void setOutputFileName ( const QString & fileName )
*/
$method=|void|setOutputFileName|const QString &

/*
OutputFormat outputFormat () const
*/
$method=|QPrinter::OutputFormat|outputFormat|

/*
void setOutputFormat ( OutputFormat format )
*/
$method=|void|setOutputFormat|QPrinter::OutputFormat

/*
PageOrder pageOrder () const
*/
$method=|QPrinter::PageOrder|pageOrder|

/*
void setPageOrder ( PageOrder pageOrder )
*/
$method=|void|setPageOrder|QPrinter::PageOrder

/*
QRect pageRect () const
*/
$internalMethod=|QRect|pageRect,pageRect1|

/*
QRectF pageRect ( Unit unit ) const
*/
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

/*
QRect paperRect () const
*/
$internalMethod=|QRect|paperRect,paperRect1|

/*
QRectF paperRect ( Unit unit ) const
*/
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

/*
PaperSize paperSize () const
*/
$internalMethod=|QPrinter::PaperSize|paperSize,paperSize1|

/*
QSizeF paperSize ( Unit unit ) const
*/
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

/*
PaperSource paperSource () const
*/
$method=|QPrinter::PaperSource|paperSource|

/*
void setPaperSource ( PaperSource source )
*/
$method=|void|setPaperSource|QPrinter::PaperSource

/*
QPrintEngine * printEngine () const
*/
$method=|QPrintEngine *|printEngine|

/*
QString printProgram () const
*/
$method=|QString|printProgram|

/*
void setPrintProgram ( const QString & printProg )
*/
$method=|void|setPrintProgram|const QString &

/*
PrintRange printRange () const
*/
$method=|QPrinter::PrintRange|printRange|

/*
void setPrintRange ( PrintRange range )
*/
$method=|void|setPrintRange|QPrinter::PrintRange

/*
QString printerName () const
*/
$method=|QString|printerName|

/*
void setPrinterName ( const QString & name )
*/
$method=|void|setPrinterName|const QString &

/*
QString printerSelectionOption () const
*/
$method=|QString|printerSelectionOption|

/*
PrinterState printerState () const
*/
$method=|QPrinter::PrinterState|printerState|

/*
int resolution () const
*/
$method=|int|resolution|

/*
void setResolution ( int dpi )
*/
$method=|void|setResolution|int

/*
void setFromTo ( int from, int to )
*/
$method=|void|setFromTo|int,int

/*
void setPaperSize ( PaperSize newPaperSize )
*/
$internalMethod=|void|setPaperSize,setPaperSize1|QPrinter::PaperSize

/*
void setPaperSize ( const QSizeF & paperSize, Unit unit )
*/
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

/*
void setPrinterSelectionOption ( const QString & option )
*/
$method=|void|setPrinterSelectionOption|const QString &

/*
void setWinPageSize ( int pageSize )
*/
$method=|void|setWinPageSize|int

/*
QList<PaperSource> supportedPaperSources () const
*/
$method=|QList<QPrinter::PaperSource>|supportedPaperSources||#ifdef Q_OS_WIN

/*
QList<int> supportedResolutions () const
*/
HB_FUNC_STATIC( QPRINTER_SUPPORTEDRESOLUTIONS )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<int> list = obj->supportedResolutions ();
    _qt5xhb_convert_qlist_int_to_array ( list );
  }
}

/*
bool supportsMultipleCopies () const
*/
$method=|bool|supportsMultipleCopies|

/*
int toPage () const
*/
$method=|int|toPage|

/*
int winPageSize () const
*/
$method=|int|winPageSize|

/*
QPaintEngine * paintEngine () const
*/
$method=|QPaintEngine *|paintEngine|

/*
int devType() const
*/
$method=|int|devType|

/*
PageSize pageSize() const
*/
$method=|QPrinter::PageSize|pageSize|

/*
void setPageSize(PageSize)
*/
$method=|void|setPageSize|QPrinter::PageSize

/*
void setPageSizeMM(const QSizeF &size)
*/
$method=|void|setPageSizeMM|const QSizeF &

/*
QString paperName() const
*/
$method=|QString|paperName|

/*
void setPaperName(const QString &paperName)
*/
$method=|void|setPaperName|const QString &

/*
int numCopies() const
*/
$method=|int|numCopies|

/*
void setNumCopies(int)
*/
$method=|void|setNumCopies|int

/*
int actualNumCopies() const
*/
$method=|int|actualNumCopies|

#pragma ENDDUMP
