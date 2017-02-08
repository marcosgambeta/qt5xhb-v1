/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVARIANT

CLASS QAccessibleValueChangeEvent INHERIT QAccessibleEvent

   DATA class_id INIT Class_Id_QAccessibleValueChangeEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAccessibleValueChangeEvent>
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
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAccessibleValueChangeEvent>
#endif
#endif

/*
QAccessibleValueChangeEvent(QObject *obj, const QVariant &val)
*/
HB_FUNC_STATIC( QACCESSIBLEVALUECHANGEEVENT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
  QAccessibleValueChangeEvent * o = new QAccessibleValueChangeEvent ( par1, *par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAccessibleValueChangeEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QACCESSIBLEVALUECHANGEEVENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
void setValue(const QVariant & val)
*/
HB_FUNC_STATIC( QACCESSIBLEVALUECHANGEEVENT_SETVALUE )
{
  QAccessibleValueChangeEvent * obj = (QAccessibleValueChangeEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par1 = (QVariant *) _qtxhb_itemGetPtr(1);
    obj->setValue ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant value() const
*/
HB_FUNC_STATIC( QACCESSIBLEVALUECHANGEEVENT_VALUE )
{
  QAccessibleValueChangeEvent * obj = (QAccessibleValueChangeEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



#pragma ENDDUMP
