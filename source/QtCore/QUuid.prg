/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QUuid

   DATA pointer
   DATA class_id INIT Class_Id_QUuid
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD toByteArray
   METHOD toRfc4122
   METHOD toString
   METHOD variant
   METHOD version
   METHOD createUuidV31
   METHOD createUuidV32
   METHOD createUuidV3
   METHOD createUuidV51
   METHOD createUuidV52
   METHOD createUuidV5
   METHOD fromRfc4122
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QUuid
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QUuid>
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
#include <QUuid>
#endif

/*
QUuid()
*/
HB_FUNC_STATIC( QUUID_NEW1 )
{
  QUuid * o = new QUuid (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUuid *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QUuid(const QByteArray & text)
*/
HB_FUNC_STATIC( QUUID_NEW2 )
{
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  QUuid * o = new QUuid ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUuid *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QUuid(const GUID & guid)
*/
HB_FUNC_STATIC( QUUID_NEW3 )
{
  QUuid * o = new QUuid (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QUuid *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QUuid()
//[2]QUuid(const QByteArray & text)
//[3]QUuid(const GUID & guid)

HB_FUNC_STATIC( QUUID_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QUUID_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QUUID_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QUUID_DELETE )
{
  QUuid * obj = (QUuid *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isNull() const
*/
HB_FUNC_STATIC( QUUID_ISNULL )
{
  QUuid * obj = (QUuid *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
QByteArray toByteArray() const
*/
HB_FUNC_STATIC( QUUID_TOBYTEARRAY )
{
  QUuid * obj = (QUuid *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toByteArray (  ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray toRfc4122() const
*/
HB_FUNC_STATIC( QUUID_TORFC4122 )
{
  QUuid * obj = (QUuid *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toRfc4122 (  ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QString toString() const
*/
HB_FUNC_STATIC( QUUID_TOSTRING )
{
  QUuid * obj = (QUuid *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toString (  ).toLatin1().data() );
  }
}


/*
QUuid::Variant variant() const
*/
HB_FUNC_STATIC( QUUID_VARIANT )
{
  QUuid * obj = (QUuid *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->variant (  ) );
  }
}


/*
QUuid::Version version() const
*/
HB_FUNC_STATIC( QUUID_VERSION )
{
  QUuid * obj = (QUuid *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->version (  ) );
  }
}


/*
static QUuid createUuidV3(const QUuid & ns, const QByteArray & baseData)
*/
HB_FUNC_STATIC( QUUID_CREATEUUIDV31 )
{
  QUuid * par1 = (QUuid *) _qt5xhb_itemGetPtr(1);
  QByteArray * par2 = (QByteArray *) _qt5xhb_itemGetPtr(2);
  QUuid * ptr = new QUuid( QUuid::createUuidV3 ( *par1, *par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QUUID", true );
}

/*
static QUuid createUuidV3(const QUuid & ns, const QString & baseData)
*/
HB_FUNC_STATIC( QUUID_CREATEUUIDV32 )
{
  QUuid * par1 = (QUuid *) _qt5xhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QUuid * ptr = new QUuid( QUuid::createUuidV3 ( *par1, par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QUUID", true );
}


//[1]QUuid createUuidV3(const QUuid & ns, const QByteArray & baseData)
//[2]QUuid createUuidV3(const QUuid & ns, const QString & baseData)

HB_FUNC_STATIC( QUUID_CREATEUUIDV3 )
{
  if( ISNUMPAR(2) && ISQUUID(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QUUID_CREATEUUIDV31 );
  }
  else if( ISNUMPAR(2) && ISQUUID(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QUUID_CREATEUUIDV32 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QUuid createUuidV5(const QUuid & ns, const QByteArray & baseData)
*/
HB_FUNC_STATIC( QUUID_CREATEUUIDV51 )
{
  QUuid * par1 = (QUuid *) _qt5xhb_itemGetPtr(1);
  QByteArray * par2 = (QByteArray *) _qt5xhb_itemGetPtr(2);
  QUuid * ptr = new QUuid( QUuid::createUuidV5 ( *par1, *par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QUUID", true );
}

/*
static QUuid createUuidV5(const QUuid & ns, const QString & baseData)
*/
HB_FUNC_STATIC( QUUID_CREATEUUIDV52 )
{
  QUuid * par1 = (QUuid *) _qt5xhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QUuid * ptr = new QUuid( QUuid::createUuidV5 ( *par1, par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QUUID", true );
}


//[1]QUuid createUuidV5(const QUuid & ns, const QByteArray & baseData)
//[2]QUuid createUuidV5(const QUuid & ns, const QString & baseData)

HB_FUNC_STATIC( QUUID_CREATEUUIDV5 )
{
  if( ISNUMPAR(2) && ISQUUID(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QUUID_CREATEUUIDV51 );
  }
  else if( ISNUMPAR(2) && ISQUUID(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QUUID_CREATEUUIDV52 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QUuid fromRfc4122(const QByteArray & bytes)
*/
HB_FUNC_STATIC( QUUID_FROMRFC4122 )
{
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  QUuid * ptr = new QUuid( QUuid::fromRfc4122 ( *par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QUUID", true );
}



HB_FUNC_STATIC( QUUID_NEWFROM )
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

HB_FUNC_STATIC( QUUID_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QUUID_NEWFROM );
}

HB_FUNC_STATIC( QUUID_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QUUID_NEWFROM );
}

HB_FUNC_STATIC( QUUID_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QUUID_SETSELFDESTRUCTION )
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