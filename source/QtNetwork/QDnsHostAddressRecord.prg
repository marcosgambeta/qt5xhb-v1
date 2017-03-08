/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
#endif

CLASS QDnsHostAddressRecord

   DATA pointer
   DATA class_id INIT Class_Id_QDnsHostAddressRecord
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD name
   METHOD swap
   METHOD timeToLive
   METHOD value
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDnsHostAddressRecord
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDnsHostAddressRecord>
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
#include <QDnsHostAddressRecord>
#endif

#include <QHostAddress>

/*
QDnsHostAddressRecord()
*/
HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_NEW1 )
{
  QDnsHostAddressRecord * o = new QDnsHostAddressRecord (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDnsHostAddressRecord *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QDnsHostAddressRecord(const QDnsHostAddressRecord & other)
*/
HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_NEW2 )
{
  QDnsHostAddressRecord * par1 = (QDnsHostAddressRecord *) _qt5xhb_itemGetPtr(1);
  QDnsHostAddressRecord * o = new QDnsHostAddressRecord ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDnsHostAddressRecord *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QDnsHostAddressRecord()
//[2]QDnsHostAddressRecord(const QDnsHostAddressRecord & other)

HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDNSHOSTADDRESSRECORD_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDNSHOSTADDRESSRECORD(1) )
  {
    HB_FUNC_EXEC( QDNSHOSTADDRESSRECORD_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_DELETE )
{
  QDnsHostAddressRecord * obj = (QDnsHostAddressRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_NAME )
{
  QDnsHostAddressRecord * obj = (QDnsHostAddressRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}


/*
void swap(QDnsHostAddressRecord & other)
*/
HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_SWAP )
{
  QDnsHostAddressRecord * obj = (QDnsHostAddressRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDnsHostAddressRecord * par1 = (QDnsHostAddressRecord *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
quint32 timeToLive() const
*/
HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_TIMETOLIVE )
{
  QDnsHostAddressRecord * obj = (QDnsHostAddressRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->timeToLive (  ) );
  }
}


/*
QHostAddress value() const
*/
HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_VALUE )
{
  QDnsHostAddressRecord * obj = (QDnsHostAddressRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->value (  ) );
    _qt5xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
}



HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_NEWFROM )
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

HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDNSHOSTADDRESSRECORD_NEWFROM );
}

HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDNSHOSTADDRESSRECORD_NEWFROM );
}

HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDNSHOSTADDRESSRECORD_SETSELFDESTRUCTION )
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