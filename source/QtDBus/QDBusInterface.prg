/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QMETAOBJECT
#endif

CLASS QDBusInterface INHERIT QDBusAbstractInterface

   DATA class_id INIT Class_Id_QDBusInterface
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD metaObject
   METHOD qt_metacast
   METHOD qt_metacall
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDBusInterface>
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
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDBusInterface>
#endif
#endif

/*
QDBusInterface(const QString &service, const QString &path, const QString &interface = QString(),const QDBusConnection &connection = QDBusConnection::sessionBus(),QObject *parent = 0)
*/
HB_FUNC_STATIC( QDBUSINTERFACE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = QLatin1String( hb_parc(2) );
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  QObject * par5 = ISNIL(5)? 0 : (QObject *) _qtxhb_itemGetPtr(5);
  QDBusInterface * o = new QDBusInterface ( par1, par2, par3, par5 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDBusInterface *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QDBUSINTERFACE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDBusInterface * obj = (QDBusInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual const QMetaObject *metaObject() const
*/
HB_FUNC_STATIC( QDBUSINTERFACE_METAOBJECT )
{
  QDBusInterface * obj = (QDBusInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMetaObject * ptr = obj->metaObject (  );
    _qt4xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}


/*
virtual void *qt_metacast(const char *)
*/
HB_FUNC_STATIC( QDBUSINTERFACE_QT_METACAST )
{
  QDBusInterface * obj = (QDBusInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    hb_retptr( (void *) obj->qt_metacast (  (const char *) par1 ) );
  }
}


/*
virtual int qt_metacall(QMetaObject::Call, int, void **)
*/
HB_FUNC_STATIC( QDBUSINTERFACE_QT_METACALL )
{
  QDBusInterface * obj = (QDBusInterface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( obj->qt_metacall (  (QMetaObject::Call) par1, (int) hb_parni(2) ) );
  }
}



#pragma ENDDUMP
