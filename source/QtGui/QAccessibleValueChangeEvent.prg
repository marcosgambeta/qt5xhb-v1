/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QAccessibleValueChangeEvent INHERIT QAccessibleEvent

   METHOD new
   METHOD delete
   METHOD setValue
   METHOD value

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleValueChangeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAccessibleValueChangeEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessibleValueChangeEvent>
#endif

/*
QAccessibleValueChangeEvent(QObject *obj, const QVariant &val)
*/
HB_FUNC_STATIC( QACCESSIBLEVALUECHANGEEVENT_NEW )
{
  QAccessibleValueChangeEvent * o = new QAccessibleValueChangeEvent ( PQOBJECT(1), *PQVARIANT(2) );
  _qt5xhb_returnNewObject( o, false );
}


HB_FUNC_STATIC( QACCESSIBLEVALUECHANGEEVENT_DELETE )
{
  QAccessibleValueChangeEvent * obj = (QAccessibleValueChangeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setValue(const QVariant & val)
*/
HB_FUNC_STATIC( QACCESSIBLEVALUECHANGEEVENT_SETVALUE )
{
  QAccessibleValueChangeEvent * obj = (QAccessibleValueChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setValue ( *PQVARIANT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant value() const
*/
HB_FUNC_STATIC( QACCESSIBLEVALUECHANGEEVENT_VALUE )
{
  QAccessibleValueChangeEvent * obj = (QAccessibleValueChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value () );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



#pragma ENDDUMP
