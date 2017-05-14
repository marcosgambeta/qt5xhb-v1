/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMETAOBJECT
#endif

CLASS QDBusInterface INHERIT QDBusAbstractInterface

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

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
#include <QDBusInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDBusInterface>
#endif

/*
QDBusInterface(const QString &service, const QString &path, const QString &interface = QString(),const QDBusConnection &connection = QDBusConnection::sessionBus(),QObject *parent = 0)
*/
HB_FUNC_STATIC( QDBUSINTERFACE_NEW )
{
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  QObject * par5 = ISNIL(5)? 0 : (QObject *) _qt5xhb_itemGetPtr(5);
  QDBusInterface * o = new QDBusInterface ( PQSTRING(1), PQSTRING(2), par3, par5 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QDBUSINTERFACE_DELETE )
{
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
}

/*
virtual const QMetaObject *metaObject() const
*/
HB_FUNC_STATIC( QDBUSINTERFACE_METAOBJECT )
{
  QDBusInterface * obj = (QDBusInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMetaObject * ptr = obj->metaObject (  );
    _qt5xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}


/*
virtual void *qt_metacast(const char *)
*/
HB_FUNC_STATIC( QDBUSINTERFACE_QT_METACAST )
{
  QDBusInterface * obj = (QDBusInterface *) _qt5xhb_itemGetPtrStackSelfItem();
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
  QDBusInterface * obj = (QDBusInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( obj->qt_metacall (  (QMetaObject::Call) par1, PINT(2) ) );
  }
}



#pragma ENDDUMP
