/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

PROCEDURE destroyObject () CLASS QPrinterInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPrinterInfo>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPrinterInfo>
#endif

#include <QStringList>

/*
QPrinterInfo ()
*/
void QPrinterInfo_new1 ()
{
  QPrinterInfo * o = new QPrinterInfo ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPrinterInfo ( const QPrinterInfo & src )
*/
void QPrinterInfo_new2 ()
{
  QPrinterInfo * o = new QPrinterInfo ( *PQPRINTERINFO(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
explicit QPrinterInfo ( const QPrinter & printer )
*/
void QPrinterInfo_new3 ()
{
  QPrinterInfo * o = new QPrinterInfo ( *PQPRINTER(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

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

HB_FUNC_STATIC( QPRINTERINFO_DELETE )
{
  QPrinterInfo * obj = (QPrinterInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool isDefault () const
*/
HB_FUNC_STATIC( QPRINTERINFO_ISDEFAULT )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isDefault () );
  }
}

/*
bool isNull () const
*/
HB_FUNC_STATIC( QPRINTERINFO_ISNULL )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}

/*
QString printerName () const
*/
HB_FUNC_STATIC( QPRINTERINFO_PRINTERNAME )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->printerName () );
  }
}

/*
QList<QPrinter::PaperSize> supportedPaperSizes () const
*/
HB_FUNC_STATIC( QPRINTERINFO_SUPPORTEDPAPERSIZES )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QPrinter::PaperSize> list = obj->supportedPaperSizes ();
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
static QList<QPrinterInfo> availablePrinters ()
*/
HB_FUNC_STATIC( QPRINTERINFO_AVAILABLEPRINTERS )
{
  QList<QPrinterInfo> list = QPrinterInfo::availablePrinters ();
  PHB_DYNS pDynSym = hb_dynsymFindName( "QPRINTERINFO" );
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QPrinterInfo *) new QPrinterInfo ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}

/*
static QPrinterInfo defaultPrinter ()
*/
HB_FUNC_STATIC( QPRINTERINFO_DEFAULTPRINTER )
{
  QPrinterInfo * ptr = new QPrinterInfo( QPrinterInfo::defaultPrinter () );
  _qt5xhb_createReturnClass ( ptr, "QPRINTERINFO", true );
}

/*
QString description() const
*/
HB_FUNC_STATIC( QPRINTERINFO_DESCRIPTION )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->description () );
  }
}

/*
QString location() const
*/
HB_FUNC_STATIC( QPRINTERINFO_LOCATION )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->location () );
  }
}

/*
QString makeAndModel() const
*/
HB_FUNC_STATIC( QPRINTERINFO_MAKEANDMODEL )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->makeAndModel () );
  }
}

/*
bool isRemote() const
*/
HB_FUNC_STATIC( QPRINTERINFO_ISREMOTE )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isRemote () );
  }
}

/*
QPrinter::PrinterState state() const
*/
HB_FUNC_STATIC( QPRINTERINFO_STATE )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->state () );
  }
}

/*
QList<QPageSize> supportedPageSizes() const
*/
HB_FUNC_STATIC( QPRINTERINFO_SUPPORTEDPAGESIZES )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QPageSize> list = obj->supportedPageSizes ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QPAGESIZE" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QPageSize *) new QPageSize ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QPageSize defaultPageSize() const
*/
HB_FUNC_STATIC( QPRINTERINFO_DEFAULTPAGESIZE )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPageSize * ptr = new QPageSize( obj->defaultPageSize () );
    _qt5xhb_createReturnClass ( ptr, "QPAGESIZE", true );
  }
}

/*
bool supportsCustomPageSizes() const
*/
HB_FUNC_STATIC( QPRINTERINFO_SUPPORTSCUSTOMPAGESIZES )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->supportsCustomPageSizes () );
  }
}

/*
QPageSize minimumPhysicalPageSize() const
*/
HB_FUNC_STATIC( QPRINTERINFO_MINIMUMPHYSICALPAGESIZE )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPageSize * ptr = new QPageSize( obj->minimumPhysicalPageSize () );
    _qt5xhb_createReturnClass ( ptr, "QPAGESIZE", true );
  }
}

/*
QPageSize maximumPhysicalPageSize() const
*/
HB_FUNC_STATIC( QPRINTERINFO_MAXIMUMPHYSICALPAGESIZE )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPageSize * ptr = new QPageSize( obj->maximumPhysicalPageSize () );
    _qt5xhb_createReturnClass ( ptr, "QPAGESIZE", true );
  }
}

/*
QList<int> supportedResolutions() const
*/
HB_FUNC_STATIC( QPRINTERINFO_SUPPORTEDRESOLUTIONS )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<int> list = obj->supportedResolutions ();
    _qt5xhb_convert_qlist_int_to_array ( list );
  }
}

/*
static QStringList availablePrinterNames()
*/
HB_FUNC_STATIC( QPRINTERINFO_AVAILABLEPRINTERNAMES )
{
  RQSTRINGLIST( QPrinterInfo::availablePrinterNames () );
}

/*
static QString defaultPrinterName()
*/
HB_FUNC_STATIC( QPRINTERINFO_DEFAULTPRINTERNAME )
{
  RQSTRING( QPrinterInfo::defaultPrinterName () );
}

/*
static QPrinterInfo printerInfo(const QString &printerName)
*/
HB_FUNC_STATIC( QPRINTERINFO_PRINTERINFO )
{
  if( ISCHAR(1) )
  {
    QPrinterInfo * ptr = new QPrinterInfo( QPrinterInfo::printerInfo ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPRINTERINFO", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPRINTERINFO_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QPRINTERINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPRINTERINFO_NEWFROM );
}

HB_FUNC_STATIC( QPRINTERINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPRINTERINFO_NEWFROM );
}

HB_FUNC_STATIC( QPRINTERINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPRINTERINFO_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
