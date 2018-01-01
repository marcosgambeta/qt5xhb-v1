/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QMETAOBJECT
#endif

CLASS QQmlListReference

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD append
   METHOD at
   METHOD canAppend
   METHOD canAt
   METHOD canClear
   METHOD canCount
   METHOD clear
   METHOD count
   METHOD isValid
   METHOD listElementType
   METHOD object

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQmlListReference
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQmlListReference>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQmlListReference>
#endif

/*
QQmlListReference()
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_NEW1 )
{
  QQmlListReference * o = new QQmlListReference ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QQmlListReference(QObject * object, const char * property, QQmlEngine * engine = 0)
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_NEW2 )
{
  QQmlEngine * par3 = ISNIL(3)? 0 : (QQmlEngine *) _qt5xhb_itemGetPtr(3);
  QQmlListReference * o = new QQmlListReference ( PQOBJECT(1), PCONSTCHAR(2), par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QQmlListReference()
//[2]QQmlListReference(QObject * object, const char * property, QQmlEngine * engine = 0)

HB_FUNC_STATIC( QQMLLISTREFERENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QQMLLISTREFERENCE_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISCHAR(2) && (ISQQMLENGINE(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QQMLLISTREFERENCE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QQMLLISTREFERENCE_DELETE )
{
  QQmlListReference * obj = (QQmlListReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool append(QObject * object) const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_APPEND )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->append ( PQOBJECT(1) ) );
  }
}


/*
QObject * at(int index) const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_AT )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->at ( PINT(1) );
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
bool canAppend() const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_CANAPPEND )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->canAppend () );
  }
}


/*
bool canAt() const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_CANAT )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->canAt () );
  }
}


/*
bool canClear() const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_CANCLEAR )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->canClear () );
  }
}


/*
bool canCount() const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_CANCOUNT )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->canCount () );
  }
}


/*
bool clear() const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_CLEAR )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->clear () );
  }
}


/*
int count() const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_COUNT )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->count () );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_ISVALID )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
const QMetaObject * listElementType() const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_LISTELEMENTTYPE )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMetaObject * ptr = obj->listElementType ();
    _qt5xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}


/*
QObject * object() const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_OBJECT )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->object ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}



HB_FUNC_STATIC( QQMLLISTREFERENCE_NEWFROM )
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

HB_FUNC_STATIC( QQMLLISTREFERENCE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QQMLLISTREFERENCE_NEWFROM );
}

HB_FUNC_STATIC( QQMLLISTREFERENCE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QQMLLISTREFERENCE_NEWFROM );
}

HB_FUNC_STATIC( QQMLLISTREFERENCE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QQMLLISTREFERENCE_SETSELFDESTRUCTION )
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