/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QOBJECT
#endif

CLASS QPropertyAnimation INHERIT QVariantAnimation

   METHOD new
   METHOD delete
   METHOD propertyName
   METHOD setPropertyName
   METHOD setTargetObject
   METHOD targetObject

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPropertyAnimation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPropertyAnimation>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPropertyAnimation>
#endif

/*
QPropertyAnimation ( QObject * parent = 0 )
*/
void QPropertyAnimation_new1 ()
{
  QPropertyAnimation * o = new QPropertyAnimation ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QPropertyAnimation ( QObject * target, const QByteArray & propertyName, QObject * parent = 0 )
*/
void QPropertyAnimation_new2 ()
{
  QPropertyAnimation * o = new QPropertyAnimation ( PQOBJECT(1), *PQBYTEARRAY(2), OPQOBJECT(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QPropertyAnimation ( QObject * parent = 0 )
//[2]QPropertyAnimation ( QObject * target, const QByteArray & propertyName, QObject * parent = 0 )

HB_FUNC_STATIC( QPROPERTYANIMATION_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QPropertyAnimation_new1();
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISQBYTEARRAY(2) && ISOPTQOBJECT(3) )
  {
    QPropertyAnimation_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPROPERTYANIMATION_DELETE )
{
  QPropertyAnimation * obj = (QPropertyAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QByteArray propertyName () const
*/
HB_FUNC_STATIC( QPROPERTYANIMATION_PROPERTYNAME )
{
  QPropertyAnimation * obj = (QPropertyAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->propertyName () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
void setPropertyName ( const QByteArray & propertyName )
*/
HB_FUNC_STATIC( QPROPERTYANIMATION_SETPROPERTYNAME )
{
  QPropertyAnimation * obj = (QPropertyAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBYTEARRAY(1) )
    {
      obj->setPropertyName ( *PQBYTEARRAY(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTargetObject ( QObject * target )
*/
HB_FUNC_STATIC( QPROPERTYANIMATION_SETTARGETOBJECT )
{
  QPropertyAnimation * obj = (QPropertyAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQOBJECT(1) )
    {
      obj->setTargetObject ( PQOBJECT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QObject * targetObject () const
*/
HB_FUNC_STATIC( QPROPERTYANIMATION_TARGETOBJECT )
{
  QPropertyAnimation * obj = (QPropertyAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObject * ptr = obj->targetObject ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

#pragma ENDDUMP
