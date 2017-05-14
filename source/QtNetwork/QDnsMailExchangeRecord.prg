/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QDnsMailExchangeRecord

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD exchange
   METHOD name
   METHOD preference
   METHOD swap
   METHOD timeToLive

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDnsMailExchangeRecord
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDnsMailExchangeRecord>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDnsMailExchangeRecord>
#endif

/*
QDnsMailExchangeRecord()
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NEW1 )
{
  QDnsMailExchangeRecord * o = new QDnsMailExchangeRecord (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDnsMailExchangeRecord(const QDnsMailExchangeRecord & other)
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NEW2 )
{
  QDnsMailExchangeRecord * par1 = (QDnsMailExchangeRecord *) _qt5xhb_itemGetPtr(1);
  QDnsMailExchangeRecord * o = new QDnsMailExchangeRecord ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QDnsMailExchangeRecord()
//[2]QDnsMailExchangeRecord(const QDnsMailExchangeRecord & other)

HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDNSMAILEXCHANGERECORD_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDNSMAILEXCHANGERECORD(1) )
  {
    HB_FUNC_EXEC( QDNSMAILEXCHANGERECORD_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_DELETE )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString exchange() const
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_EXCHANGE )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->exchange (  ).toLatin1().data() );
  }
}


/*
QString name() const
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NAME )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}


/*
quint16 preference() const
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_PREFERENCE )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->preference (  ) );
  }
}


/*
void swap(QDnsMailExchangeRecord & other)
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_SWAP )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDnsMailExchangeRecord * par1 = (QDnsMailExchangeRecord *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
quint32 timeToLive() const
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_TIMETOLIVE )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->timeToLive (  ) );
  }
}



HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NEWFROM )
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

HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDNSMAILEXCHANGERECORD_NEWFROM );
}

HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDNSMAILEXCHANGERECORD_NEWFROM );
}

HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_SETSELFDESTRUCTION )
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