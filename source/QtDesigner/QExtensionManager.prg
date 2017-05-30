/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QExtensionManager INHERIT QObject,QAbstractExtensionManager

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD extension
   METHOD registerExtensions
   METHOD unregisterExtensions

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QExtensionManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QExtensionManager>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QExtensionManager>
#endif

/*
QExtensionManager ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QEXTENSIONMANAGER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
    QExtensionManager * o = new QExtensionManager ( par1 );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QEXTENSIONMANAGER_DELETE )
{
  QExtensionManager * obj = (QExtensionManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QObject * extension ( QObject * object, const QString & iid ) const
*/
HB_FUNC_STATIC( QEXTENSIONMANAGER_EXTENSION )
{
  QExtensionManager * obj = (QExtensionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQOBJECT(1) && ISCHAR(2) )
    {
      QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
      QObject * ptr = obj->extension ( par1, PQSTRING(2) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void registerExtensions ( QAbstractExtensionFactory * factory, const QString & iid = QString() )
*/
HB_FUNC_STATIC( QEXTENSIONMANAGER_REGISTEREXTENSIONS )
{
  QExtensionManager * obj = (QExtensionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTEXTENSIONFACTORY(1) && ISOPTCHAR(2) )
    {
      QAbstractExtensionFactory * par1 = (QAbstractExtensionFactory *) _qt5xhb_itemGetPtr(1);
      obj->registerExtensions ( par1, OPQSTRING(2,QString()) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void unregisterExtensions ( QAbstractExtensionFactory * factory, const QString & iid = QString() )
*/
HB_FUNC_STATIC( QEXTENSIONMANAGER_UNREGISTEREXTENSIONS )
{
  QExtensionManager * obj = (QExtensionManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTEXTENSIONFACTORY(1) && ISOPTCHAR(2) )
    {
      QAbstractExtensionFactory * par1 = (QAbstractExtensionFactory *) _qt5xhb_itemGetPtr(1);
      obj->unregisterExtensions ( par1, OPQSTRING(2,QString()) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
