/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QDBusVirtualObject INHERIT QObject

   DATA class_id INIT Class_Id_QDBusVirtualObject
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD introspect
   METHOD handleMessage
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusVirtualObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDBusVirtualObject>
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
#include <QDBusVirtualObject>
#endif

/*
explicit QDBusVirtualObject(QObject *parent = 0)
*/
HB_FUNC_STATIC( QDBUSVIRTUALOBJECT_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QDBusVirtualObject * o = new QDBusVirtualObject ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDBusVirtualObject *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QDBUSVIRTUALOBJECT_DELETE )
{
  QDBusVirtualObject * obj = (QDBusVirtualObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QString introspect(const QString &path) const = 0
*/
HB_FUNC_STATIC( QDBUSVIRTUALOBJECT_INTROSPECT )
{
  QDBusVirtualObject * obj = (QDBusVirtualObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->introspect ( par1 ).toLatin1().data() );
  }
}


/*
virtual bool handleMessage(const QDBusMessage &message, const QDBusConnection &connection) = 0
*/
HB_FUNC_STATIC( QDBUSVIRTUALOBJECT_HANDLEMESSAGE )
{
  QDBusVirtualObject * obj = (QDBusVirtualObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->handleMessage (  ) );
  }
}



#pragma ENDDUMP
