/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPAGESIZE

CLASS QPrinterInfo

   DATA pointer
   DATA class_id INIT Class_Id_QPrinterInfo
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
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

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QPrinterInfo>
#endif
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QPrinterInfo>
#endif
#endif

#include <QStringList>

/*
QPrinterInfo ()
*/
HB_FUNC_STATIC( QPRINTERINFO_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPrinterInfo * o = new QPrinterInfo (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPrinterInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QPrinterInfo ( const QPrinterInfo & src )
*/
HB_FUNC_STATIC( QPRINTERINFO_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPrinterInfo * par1 = (QPrinterInfo *) _qtxhb_itemGetPtr(1);
  QPrinterInfo * o = new QPrinterInfo ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPrinterInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
explicit QPrinterInfo ( const QPrinter & printer )
*/
HB_FUNC_STATIC( QPRINTERINFO_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPrinter * par1 = (QPrinter *) _qtxhb_itemGetPtr(1);
  QPrinterInfo * o = new QPrinterInfo ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPrinterInfo *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QPrinterInfo ()
//[2]QPrinterInfo ( const QPrinterInfo & src )
//[3]explicit QPrinterInfo ( const QPrinter & printer )

HB_FUNC_STATIC( QPRINTERINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPRINTERINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQPRINTERINFO(1) )
  {
    HB_FUNC_EXEC( QPRINTERINFO_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQPRINTER(1) )
  {
    HB_FUNC_EXEC( QPRINTERINFO_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPRINTERINFO_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
bool isDefault () const
*/
HB_FUNC_STATIC( QPRINTERINFO_ISDEFAULT )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isDefault (  ) );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QPRINTERINFO_ISNULL )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
QString printerName () const
*/
HB_FUNC_STATIC( QPRINTERINFO_PRINTERNAME )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->printerName (  ).toLatin1().data() );
  }
}


/*
QList<QPrinter::PaperSize> supportedPaperSizes () const
*/
HB_FUNC_STATIC( QPRINTERINFO_SUPPORTEDPAPERSIZES )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QPrinter::PaperSize> list = obj->supportedPaperSizes (  );
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
}



/*
static QList<QPrinterInfo> availablePrinters ()
*/
HB_FUNC_STATIC( QPRINTERINFO_AVAILABLEPRINTERS )
{
  QList<QPrinterInfo> list = QPrinterInfo::availablePrinters (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QPRINTERINFO" );
  #else
  pDynSym = hb_dynsymFindName( "QPRINTERINFO" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
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
  QPrinterInfo * ptr = new QPrinterInfo( QPrinterInfo::defaultPrinter (  ) );
  _qt4xhb_createReturnClass ( ptr, "QPRINTERINFO", true );
}



/*
QString description() const
*/
HB_FUNC_STATIC( QPRINTERINFO_DESCRIPTION )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->description (  ).toLatin1().data() );
  }
}


/*
QString location() const
*/
HB_FUNC_STATIC( QPRINTERINFO_LOCATION )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->location (  ).toLatin1().data() );
  }
}


/*
QString makeAndModel() const
*/
HB_FUNC_STATIC( QPRINTERINFO_MAKEANDMODEL )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->makeAndModel (  ).toLatin1().data() );
  }
}


/*
bool isRemote() const
*/
HB_FUNC_STATIC( QPRINTERINFO_ISREMOTE )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isRemote (  ) );
  }
}


/*
QPrinter::PrinterState state() const
*/
HB_FUNC_STATIC( QPRINTERINFO_STATE )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->state (  );
    hb_retni( i );
  }
}


/*
QList<QPageSize> supportedPageSizes() const
*/
HB_FUNC_STATIC( QPRINTERINFO_SUPPORTEDPAGESIZES )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QPageSize> list = obj->supportedPageSizes (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QPAGESIZE" );
    #else
    pDynSym = hb_dynsymFindName( "QPAGESIZE" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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
  QPrinterInfo * obj = (QPrinterInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPageSize * ptr = new QPageSize( obj->defaultPageSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPAGESIZE", true );
  }
}


/*
bool supportsCustomPageSizes() const
*/
HB_FUNC_STATIC( QPRINTERINFO_SUPPORTSCUSTOMPAGESIZES )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->supportsCustomPageSizes (  ) );
  }
}


/*
QPageSize minimumPhysicalPageSize() const
*/
HB_FUNC_STATIC( QPRINTERINFO_MINIMUMPHYSICALPAGESIZE )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPageSize * ptr = new QPageSize( obj->minimumPhysicalPageSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPAGESIZE", true );
  }
}


/*
QPageSize maximumPhysicalPageSize() const
*/
HB_FUNC_STATIC( QPRINTERINFO_MAXIMUMPHYSICALPAGESIZE )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPageSize * ptr = new QPageSize( obj->maximumPhysicalPageSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPAGESIZE", true );
  }
}


/*
QList<int> supportedResolutions() const
*/
HB_FUNC_STATIC( QPRINTERINFO_SUPPORTEDRESOLUTIONS )
{
  QPrinterInfo * obj = (QPrinterInfo *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<int> list = obj->supportedResolutions (  );
    _qtxhb_convert_qlist_int_to_array ( list );
  }
}


/*
static QStringList availablePrinterNames()
*/
HB_FUNC_STATIC( QPRINTERINFO_AVAILABLEPRINTERNAMES )
{
  QStringList strl = QPrinterInfo::availablePrinterNames (  );
  _qtxhb_convert_qstringlist_to_array ( strl );
}


/*
static QString defaultPrinterName()
*/
HB_FUNC_STATIC( QPRINTERINFO_DEFAULTPRINTERNAME )
{
  hb_retc( (const char *) QPrinterInfo::defaultPrinterName (  ).toLatin1().data() );
}


/*
static QPrinterInfo printerInfo(const QString &printerName)
*/
HB_FUNC_STATIC( QPRINTERINFO_PRINTERINFO )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QPrinterInfo * ptr = new QPrinterInfo( QPrinterInfo::printerInfo ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QPRINTERINFO", true );
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
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISOBJECT(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QPRINTERINFO_NEWFROM );
}

HB_FUNC_STATIC( QPRINTERINFO_NEWFROMPOINTER )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISPOINTER(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
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
