/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMETAOBJECT
#endif

CLASS QDBusInterface INHERIT QDBusAbstractInterface

   METHOD new
   METHOD delete
   METHOD metaObject
   METHOD qt_metacast

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDBusInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDBus/QDBusInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDBus/QDBusInterface>
#endif

/*
QDBusInterface( const QString & service, const QString & path, const QString & interface = QString(), const QDBusConnection & connection = QDBusConnection::sessionBus(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDBUSINTERFACE_NEW )
{
  if( ISBETWEEN(2,5) && HB_ISCHAR(1) && HB_ISCHAR(2) && (HB_ISCHAR(3)||HB_ISNIL(3)) && (ISQDBUSCONNECTION(4)||HB_ISNIL(4)) && (ISQOBJECT(5)||HB_ISNIL(5)) )
  {
    QDBusInterface * obj = new QDBusInterface( PQSTRING(1), PQSTRING(2), OPQSTRING(3,QString()), HB_ISNIL(4)? QDBusConnection::sessionBus() : *(QDBusConnection *) Qt5xHb::itemGetPtr(4), OPQOBJECT(5,0) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDBUSINTERFACE_DELETE )
{
  QDBusInterface * obj = (QDBusInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
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
virtual const QMetaObject * metaObject() const
*/
HB_FUNC_STATIC( QDBUSINTERFACE_METAOBJECT )
{
  QDBusInterface * obj = (QDBusInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QMetaObject * ptr = obj->metaObject();
      Qt5xHb::createReturnClass( ptr, "QMETAOBJECT", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void * qt_metacast( const char * )
*/
HB_FUNC_STATIC( QDBUSINTERFACE_QT_METACAST )
{
  QDBusInterface * obj = (QDBusInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      hb_retptr( (void *) obj->qt_metacast( PCONSTCHAR(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
