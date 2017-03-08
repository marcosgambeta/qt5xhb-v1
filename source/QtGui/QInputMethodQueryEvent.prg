/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QInputMethodQueryEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QInputMethodQueryEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#include <QInputMethodQueryEvent>
#endif

/*
QInputMethodQueryEvent(Qt::InputMethodQueries queries)
*/
HB_FUNC_STATIC( QINPUTMETHODQUERYEVENT_NEW )
{
  int par1 = hb_parni(1);
  QInputMethodQueryEvent * o = new QInputMethodQueryEvent (  (Qt::InputMethodQueries) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QInputMethodQueryEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    hb_retni( obj->queries (  ) );
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
    int par1 = hb_parni(1);
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    obj->setValue (  (Qt::InputMethodQuery) par1, *par2 );
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
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->value (  (Qt::InputMethodQuery) par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



#pragma ENDDUMP
