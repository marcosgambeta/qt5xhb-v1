/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QJSONVALUE
#endif

CLASS QJsonObject

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD contains
   METHOD count
   METHOD empty
   METHOD isEmpty
   METHOD keys
   METHOD length
   METHOD remove
   METHOD size
   METHOD take
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QJsonObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QJsonObject>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QJsonObject>
#endif

#include <QStringList>

/*
QJsonObject()
*/
void QJsonObject_new1 ()
{
  QJsonObject * o = new QJsonObject (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QJsonObject(const QJsonObject & other)
*/
void QJsonObject_new2 ()
{
  QJsonObject * par1 = (QJsonObject *) _qt5xhb_itemGetPtr(1);
  QJsonObject * o = new QJsonObject ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QJsonObject()
//[2]QJsonObject(const QJsonObject & other)

HB_FUNC_STATIC( QJSONOBJECT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QJsonObject_new1();
  }
  else if( ISNUMPAR(1) && ISQJSONOBJECT(1) )
  {
    QJsonObject_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QJSONOBJECT_DELETE )
{
  QJsonObject * obj = (QJsonObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool contains(const QString & key) const
*/
HB_FUNC_STATIC( QJSONOBJECT_CONTAINS )
{
  QJsonObject * obj = (QJsonObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      hb_retl( obj->contains ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int count() const
*/
HB_FUNC_STATIC( QJSONOBJECT_COUNT )
{
  QJsonObject * obj = (QJsonObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}

/*
bool empty() const
*/
HB_FUNC_STATIC( QJSONOBJECT_EMPTY )
{
  QJsonObject * obj = (QJsonObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->empty (  ) );
  }
}

/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QJSONOBJECT_ISEMPTY )
{
  QJsonObject * obj = (QJsonObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}

/*
QStringList keys() const
*/
HB_FUNC_STATIC( QJSONOBJECT_KEYS )
{
  QJsonObject * obj = (QJsonObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringList strl = obj->keys (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}

/*
int length() const
*/
HB_FUNC_STATIC( QJSONOBJECT_LENGTH )
{
  QJsonObject * obj = (QJsonObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->length (  ) );
  }
}

/*
void remove(const QString & key)
*/
HB_FUNC_STATIC( QJSONOBJECT_REMOVE )
{
  QJsonObject * obj = (QJsonObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->remove ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int size() const
*/
HB_FUNC_STATIC( QJSONOBJECT_SIZE )
{
  QJsonObject * obj = (QJsonObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->size (  ) );
  }
}

/*
QJsonValue take(const QString & key)
*/
HB_FUNC_STATIC( QJSONOBJECT_TAKE )
{
  QJsonObject * obj = (QJsonObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QJsonValue * ptr = new QJsonValue( obj->take ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QJSONVALUE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QJsonValue value(const QString & key) const
*/
HB_FUNC_STATIC( QJSONOBJECT_VALUE )
{
  QJsonObject * obj = (QJsonObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QJsonValue * ptr = new QJsonValue( obj->value ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QJSONVALUE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QJSONOBJECT_NEWFROM )
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

HB_FUNC_STATIC( QJSONOBJECT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QJSONOBJECT_NEWFROM );
}

HB_FUNC_STATIC( QJSONOBJECT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QJSONOBJECT_NEWFROM );
}

HB_FUNC_STATIC( QJSONOBJECT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QJSONOBJECT_SETSELFDESTRUCTION )
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
