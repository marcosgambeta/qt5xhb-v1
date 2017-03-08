/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QDnsTextRecord

   DATA pointer
   DATA class_id INIT Class_Id_QDnsTextRecord
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD name
   METHOD swap
   METHOD timeToLive
   METHOD values
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDnsTextRecord
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDnsTextRecord>
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
#include <QDnsTextRecord>
#endif

/*
QDnsTextRecord()
*/
HB_FUNC_STATIC( QDNSTEXTRECORD_NEW1 )
{
  QDnsTextRecord * o = new QDnsTextRecord (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDnsTextRecord *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QDnsTextRecord(const QDnsTextRecord & other)
*/
HB_FUNC_STATIC( QDNSTEXTRECORD_NEW2 )
{
  QDnsTextRecord * par1 = (QDnsTextRecord *) _qt5xhb_itemGetPtr(1);
  QDnsTextRecord * o = new QDnsTextRecord ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDnsTextRecord *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QDnsTextRecord()
//[2]QDnsTextRecord(const QDnsTextRecord & other)

HB_FUNC_STATIC( QDNSTEXTRECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDNSTEXTRECORD_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDNSTEXTRECORD(1) )
  {
    HB_FUNC_EXEC( QDNSTEXTRECORD_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDNSTEXTRECORD_DELETE )
{
  QDnsTextRecord * obj = (QDnsTextRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString name() const
*/
HB_FUNC_STATIC( QDNSTEXTRECORD_NAME )
{
  QDnsTextRecord * obj = (QDnsTextRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}


/*
void swap(QDnsTextRecord & other)
*/
HB_FUNC_STATIC( QDNSTEXTRECORD_SWAP )
{
  QDnsTextRecord * obj = (QDnsTextRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDnsTextRecord * par1 = (QDnsTextRecord *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
quint32 timeToLive() const
*/
HB_FUNC_STATIC( QDNSTEXTRECORD_TIMETOLIVE )
{
  QDnsTextRecord * obj = (QDnsTextRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->timeToLive (  ) );
  }
}


/*
QList<QByteArray> values() const
*/
HB_FUNC_STATIC( QDNSTEXTRECORD_VALUES )
{
  QDnsTextRecord * obj = (QDnsTextRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QByteArray> list = obj->values (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
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
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}



HB_FUNC_STATIC( QDNSTEXTRECORD_NEWFROM )
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

HB_FUNC_STATIC( QDNSTEXTRECORD_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDNSTEXTRECORD_NEWFROM );
}

HB_FUNC_STATIC( QDNSTEXTRECORD_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDNSTEXTRECORD_NEWFROM );
}

HB_FUNC_STATIC( QDNSTEXTRECORD_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDNSTEXTRECORD_SETSELFDESTRUCTION )
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