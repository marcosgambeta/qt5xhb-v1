/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QInputMethodQueryEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD queries
   METHOD setValue
   METHOD value

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QInputMethodQueryEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QInputMethodQueryEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QInputMethodQueryEvent>
#endif

/*
QInputMethodQueryEvent(Qt::InputMethodQueries queries)
*/
HB_FUNC_STATIC( QINPUTMETHODQUERYEVENT_NEW )
{
  int par1 = hb_parni(1);
  QInputMethodQueryEvent * o = new QInputMethodQueryEvent ( (Qt::InputMethodQueries) par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QINPUTMETHODQUERYEVENT_DELETE )
{
  QInputMethodQueryEvent * obj = (QInputMethodQueryEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Qt::InputMethodQueries queries() const
*/
HB_FUNC_STATIC( QINPUTMETHODQUERYEVENT_QUERIES )
{
  QInputMethodQueryEvent * obj = (QInputMethodQueryEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->queries () );
  }
}


/*
void setValue(Qt::InputMethodQuery query, const QVariant & value)
*/
HB_FUNC_STATIC( QINPUTMETHODQUERYEVENT_SETVALUE )
{
  QInputMethodQueryEvent * obj = (QInputMethodQueryEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setValue ( (Qt::InputMethodQuery) hb_parni(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant value(Qt::InputMethodQuery query) const
*/
HB_FUNC_STATIC( QINPUTMETHODQUERYEVENT_VALUE )
{
  QInputMethodQueryEvent * obj = (QInputMethodQueryEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value ( (Qt::InputMethodQuery) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



#pragma ENDDUMP
