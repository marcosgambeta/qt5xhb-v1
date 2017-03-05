/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QRECT
REQUEST QRECTF
REQUEST QSIZEF
REQUEST QPRINTENGINE
REQUEST QPAINTENGINE
#endif

CLASS QPrinter INHERIT QPagedPaintDevice

   DATA class_id INIT Class_Id_QPrinter
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
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
   METHOD pageRect1
   METHOD pageRect2
   METHOD pageRect
   METHOD paperRect1
   METHOD paperRect2
   METHOD paperRect
   METHOD paperSize1
   METHOD paperSize2
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
   METHOD setPaperSize1
   METHOD setPaperSize2
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

PROCEDURE destroyObject () CLASS QPrinter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPrinter>
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPrinter>
#endif

/*
QPrinter ( PrinterMode mode = ScreenResolution )
*/
HB_FUNC_STATIC( QPRINTER_NEW1 )
{
  int par1 = ISNIL(1)? (int) QPrinter::ScreenResolution : hb_parni(1);
  QPrinter * o = new QPrinter (  (QPrinter::PrinterMode) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPrinter *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QPrinter ( const QPrinterInfo & printer, PrinterMode mode = ScreenResolution )
*/
HB_FUNC_STATIC( QPRINTER_NEW2 )
{
  QPrinterInfo * par1 = (QPrinterInfo *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) QPrinter::ScreenResolution : hb_parni(2);
  QPrinter * o = new QPrinter ( *par1,  (QPrinter::PrinterMode) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPrinter *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QPrinter ( PrinterMode mode = ScreenResolution )
//[2]QPrinter ( const QPrinterInfo & printer, PrinterMode mode = ScreenResolution )

HB_FUNC_STATIC( QPRINTER_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QPRINTER_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQPRINTERINFO(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPRINTER_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPRINTER_DELETE )
{
  QPrinter * obj = (QPrinter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool abort ()
*/
HB_FUNC_STATIC( QPRINTER_ABORT )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->abort (  ) );
  }
}


/*
bool collateCopies () const
*/
HB_FUNC_STATIC( QPRINTER_COLLATECOPIES )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->collateCopies (  ) );
  }
}

/*
void setCollateCopies ( bool collate )
*/
HB_FUNC_STATIC( QPRINTER_SETCOLLATECOPIES )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCollateCopies ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
ColorMode colorMode () const
*/
HB_FUNC_STATIC( QPRINTER_COLORMODE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->colorMode (  ) );
  }
}

/*
void setColorMode ( ColorMode newColorMode )
*/
HB_FUNC_STATIC( QPRINTER_SETCOLORMODE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setColorMode (  (QPrinter::ColorMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int copyCount () const
*/
HB_FUNC_STATIC( QPRINTER_COPYCOUNT )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->copyCount (  ) );
  }
}

/*
void setCopyCount ( int count )
*/
HB_FUNC_STATIC( QPRINTER_SETCOPYCOUNT )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCopyCount ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString creator () const
*/
HB_FUNC_STATIC( QPRINTER_CREATOR )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->creator (  ).toLatin1().data() );
  }
}

/*
void setCreator ( const QString & creator )
*/
HB_FUNC_STATIC( QPRINTER_SETCREATOR )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setCreator ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString docName () const
*/
HB_FUNC_STATIC( QPRINTER_DOCNAME )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->docName (  ).toLatin1().data() );
  }
}

/*
void setDocName ( const QString & name )
*/
HB_FUNC_STATIC( QPRINTER_SETDOCNAME )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setDocName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool doubleSidedPrinting () const
*/
HB_FUNC_STATIC( QPRINTER_DOUBLESIDEDPRINTING )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->doubleSidedPrinting (  ) );
  }
}

/*
void setDoubleSidedPrinting ( bool doubleSided )
*/
HB_FUNC_STATIC( QPRINTER_SETDOUBLESIDEDPRINTING )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDoubleSidedPrinting ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
DuplexMode duplex () const
*/
HB_FUNC_STATIC( QPRINTER_DUPLEX )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->duplex (  ) );
  }
}

/*
void setDuplex ( DuplexMode duplex )
*/
HB_FUNC_STATIC( QPRINTER_SETDUPLEX )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDuplex (  (QPrinter::DuplexMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool fontEmbeddingEnabled () const
*/
HB_FUNC_STATIC( QPRINTER_FONTEMBEDDINGENABLED )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->fontEmbeddingEnabled (  ) );
  }
}

/*
void setFontEmbeddingEnabled ( bool enable )
*/
HB_FUNC_STATIC( QPRINTER_SETFONTEMBEDDINGENABLED )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFontEmbeddingEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int fromPage () const
*/
HB_FUNC_STATIC( QPRINTER_FROMPAGE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->fromPage (  ) );
  }
}


/*
bool fullPage () const
*/
HB_FUNC_STATIC( QPRINTER_FULLPAGE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->fullPage (  ) );
  }
}

/*
void setFullPage ( bool fp )
*/
HB_FUNC_STATIC( QPRINTER_SETFULLPAGE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFullPage ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void getPageMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom, Unit unit ) const
*/
HB_FUNC_STATIC( QPRINTER_GETPAGEMARGINS )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1;
    qreal par2;
    qreal par3;
    qreal par4;
    int par5 = hb_parni(5);
    obj->getPageMargins ( &par1, &par2, &par3, &par4,  (QPrinter::Unit) par5 );
    hb_stornd( par1, 1 );
    hb_stornd( par2, 2 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPageMargins ( qreal left, qreal top, qreal right, qreal bottom, Unit unit )
*/
HB_FUNC_STATIC( QPRINTER_SETPAGEMARGINS )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    int par5 = hb_parni(5);
    obj->setPageMargins ( par1, par2, par3, par4,  (QPrinter::Unit) par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QPRINTER_ISVALID )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
bool newPage ()
*/
HB_FUNC_STATIC( QPRINTER_NEWPAGE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->newPage (  ) );
  }
}


/*
Orientation orientation () const
*/
HB_FUNC_STATIC( QPRINTER_ORIENTATION )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->orientation (  ) );
  }
}

/*
void setOrientation ( Orientation orientation )
*/
HB_FUNC_STATIC( QPRINTER_SETORIENTATION )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOrientation (  (QPrinter::Orientation) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString outputFileName () const
*/
HB_FUNC_STATIC( QPRINTER_OUTPUTFILENAME )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->outputFileName (  ).toLatin1().data() );
  }
}

/*
void setOutputFileName ( const QString & fileName )
*/
HB_FUNC_STATIC( QPRINTER_SETOUTPUTFILENAME )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setOutputFileName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
OutputFormat outputFormat () const
*/
HB_FUNC_STATIC( QPRINTER_OUTPUTFORMAT )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->outputFormat (  ) );
  }
}

/*
void setOutputFormat ( OutputFormat format )
*/
HB_FUNC_STATIC( QPRINTER_SETOUTPUTFORMAT )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOutputFormat (  (QPrinter::OutputFormat) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
PageOrder pageOrder () const
*/
HB_FUNC_STATIC( QPRINTER_PAGEORDER )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->pageOrder (  ) );
  }
}

/*
void setPageOrder ( PageOrder pageOrder )
*/
HB_FUNC_STATIC( QPRINTER_SETPAGEORDER )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPageOrder (  (QPrinter::PageOrder) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QRect pageRect () const
*/
HB_FUNC_STATIC( QPRINTER_PAGERECT1 )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->pageRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRectF pageRect ( Unit unit ) const
*/
HB_FUNC_STATIC( QPRINTER_PAGERECT2 )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QRectF * ptr = new QRectF( obj->pageRect (  (QPrinter::Unit) par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


//[1]QRect pageRect () const
//[2]QRectF pageRect ( Unit unit ) const

HB_FUNC_STATIC( QPRINTER_PAGERECT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPRINTER_PAGERECT1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPRINTER_PAGERECT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect paperRect () const
*/
HB_FUNC_STATIC( QPRINTER_PAPERRECT1 )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->paperRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRectF paperRect ( Unit unit ) const
*/
HB_FUNC_STATIC( QPRINTER_PAPERRECT2 )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QRectF * ptr = new QRectF( obj->paperRect (  (QPrinter::Unit) par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


//[1]QRect paperRect () const
//[2]QRectF paperRect ( Unit unit ) const

HB_FUNC_STATIC( QPRINTER_PAPERRECT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPRINTER_PAPERRECT1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPRINTER_PAPERRECT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
PaperSize paperSize () const
*/
HB_FUNC_STATIC( QPRINTER_PAPERSIZE1 )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->paperSize (  ) );
  }
}

/*
QSizeF paperSize ( Unit unit ) const
*/
HB_FUNC_STATIC( QPRINTER_PAPERSIZE2 )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QSizeF * ptr = new QSizeF( obj->paperSize (  (QPrinter::Unit) par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


//[1]PaperSize paperSize () const
//[2]QSizeF paperSize ( Unit unit ) const

HB_FUNC_STATIC( QPRINTER_PAPERSIZE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPRINTER_PAPERSIZE1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPRINTER_PAPERSIZE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
PaperSource paperSource () const
*/
HB_FUNC_STATIC( QPRINTER_PAPERSOURCE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->paperSource (  ) );
  }
}

/*
void setPaperSource ( PaperSource source )
*/
HB_FUNC_STATIC( QPRINTER_SETPAPERSOURCE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPaperSource (  (QPrinter::PaperSource) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPrintEngine * printEngine () const
*/
HB_FUNC_STATIC( QPRINTER_PRINTENGINE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPrintEngine * ptr = obj->printEngine (  );
    _qt5xhb_createReturnClass ( ptr, "QPRINTENGINE" );
  }
}


/*
QString printProgram () const
*/
HB_FUNC_STATIC( QPRINTER_PRINTPROGRAM )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->printProgram (  ).toLatin1().data() );
  }
}

/*
void setPrintProgram ( const QString & printProg )
*/
HB_FUNC_STATIC( QPRINTER_SETPRINTPROGRAM )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setPrintProgram ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
PrintRange printRange () const
*/
HB_FUNC_STATIC( QPRINTER_PRINTRANGE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->printRange (  ) );
  }
}

/*
void setPrintRange ( PrintRange range )
*/
HB_FUNC_STATIC( QPRINTER_SETPRINTRANGE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPrintRange (  (QPrinter::PrintRange) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString printerName () const
*/
HB_FUNC_STATIC( QPRINTER_PRINTERNAME )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->printerName (  ).toLatin1().data() );
  }
}

/*
void setPrinterName ( const QString & name )
*/
HB_FUNC_STATIC( QPRINTER_SETPRINTERNAME )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setPrinterName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString printerSelectionOption () const
*/
HB_FUNC_STATIC( QPRINTER_PRINTERSELECTIONOPTION )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->printerSelectionOption (  ).toLatin1().data() );
  }
}


/*
PrinterState printerState () const
*/
HB_FUNC_STATIC( QPRINTER_PRINTERSTATE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->printerState (  ) );
  }
}


/*
int resolution () const
*/
HB_FUNC_STATIC( QPRINTER_RESOLUTION )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->resolution (  ) );
  }
}

/*
void setResolution ( int dpi )
*/
HB_FUNC_STATIC( QPRINTER_SETRESOLUTION )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setResolution ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFromTo ( int from, int to )
*/
HB_FUNC_STATIC( QPRINTER_SETFROMTO )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFromTo ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPaperSize ( PaperSize newPaperSize )
*/
HB_FUNC_STATIC( QPRINTER_SETPAPERSIZE1 )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPaperSize (  (QPrinter::PaperSize) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPaperSize ( const QSizeF & paperSize, Unit unit )
*/
HB_FUNC_STATIC( QPRINTER_SETPAPERSIZE2 )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * par1 = (QSizeF *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->setPaperSize ( *par1,  (QPrinter::Unit) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setPaperSize ( PaperSize newPaperSize )
//[2]void setPaperSize ( const QSizeF & paperSize, Unit unit )

HB_FUNC_STATIC( QPRINTER_SETPAPERSIZE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPRINTER_SETPAPERSIZE1 );
  }
  else if( ISNUMPAR(2) && ISQSIZEF(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPRINTER_SETPAPERSIZE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPrinterSelectionOption ( const QString & option )
*/
HB_FUNC_STATIC( QPRINTER_SETPRINTERSELECTIONOPTION )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setPrinterSelectionOption ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWinPageSize ( int pageSize )
*/
HB_FUNC_STATIC( QPRINTER_SETWINPAGESIZE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWinPageSize ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<PaperSource> supportedPaperSources () const
*/
HB_FUNC_STATIC( QPRINTER_SUPPORTEDPAPERSOURCES )
{
#ifdef Q_OS_WIN
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QPrinter::PaperSource> list = obj->supportedPaperSources (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}


/*
QList<int> supportedResolutions () const
*/
HB_FUNC_STATIC( QPRINTER_SUPPORTEDRESOLUTIONS )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<int> list = obj->supportedResolutions (  );
    _qt5xhb_convert_qlist_int_to_array ( list );
  }
}


/*
bool supportsMultipleCopies () const
*/
HB_FUNC_STATIC( QPRINTER_SUPPORTSMULTIPLECOPIES )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->supportsMultipleCopies (  ) );
  }
}


/*
int toPage () const
*/
HB_FUNC_STATIC( QPRINTER_TOPAGE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->toPage (  ) );
  }
}


/*
int winPageSize () const
*/
HB_FUNC_STATIC( QPRINTER_WINPAGESIZE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->winPageSize (  ) );
  }
}


/*
QPaintEngine * paintEngine () const
*/
HB_FUNC_STATIC( QPRINTER_PAINTENGINE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPaintEngine * ptr = obj->paintEngine (  );
    _qt5xhb_createReturnClass ( ptr, "QPAINTENGINE" );
  }
}


/*
int devType() const
*/
HB_FUNC_STATIC( QPRINTER_DEVTYPE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->devType (  ) );
  }
}


/*
PageSize pageSize() const
*/
HB_FUNC_STATIC( QPRINTER_PAGESIZE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->pageSize (  ) );
  }
}

/*
void setPageSize(PageSize)
*/
HB_FUNC_STATIC( QPRINTER_SETPAGESIZE )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPageSize (  (QPrinter::PageSize) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPageSizeMM(const QSizeF &size)
*/
HB_FUNC_STATIC( QPRINTER_SETPAGESIZEMM )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * par1 = (QSizeF *) _qt5xhb_itemGetPtr(1);
    obj->setPageSizeMM ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString paperName() const
*/
HB_FUNC_STATIC( QPRINTER_PAPERNAME )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->paperName (  ).toLatin1().data() );
  }
}

/*
void setPaperName(const QString &paperName)
*/
HB_FUNC_STATIC( QPRINTER_SETPAPERNAME )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setPaperName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int numCopies() const
*/
HB_FUNC_STATIC( QPRINTER_NUMCOPIES )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->numCopies (  ) );
  }
}

/*
void setNumCopies(int)
*/
HB_FUNC_STATIC( QPRINTER_SETNUMCOPIES )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNumCopies ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int actualNumCopies() const
*/
HB_FUNC_STATIC( QPRINTER_ACTUALNUMCOPIES )
{
  QPrinter * obj = (QPrinter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->actualNumCopies (  ) );
  }
}




#pragma ENDDUMP
