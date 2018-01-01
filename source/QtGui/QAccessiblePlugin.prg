/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessiblePlugin INHERIT QObject

   METHOD delete
   METHOD create

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessiblePlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAccessiblePlugin>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessiblePlugin>
#endif


HB_FUNC_STATIC( QACCESSIBLEPLUGIN_DELETE )
{
  QAccessiblePlugin * obj = (QAccessiblePlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QAccessibleInterface *create(const QString &key, QObject *object) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEPLUGIN_CREATE )
{
  QAccessiblePlugin * obj = (QAccessiblePlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->create ( PQSTRING(1), PQOBJECT(2) );
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}



#pragma ENDDUMP
