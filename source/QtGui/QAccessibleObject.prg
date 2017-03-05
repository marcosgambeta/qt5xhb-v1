/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QRECT
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessibleObject INHERIT QAccessibleInterface

   DATA class_id INIT Class_Id_QAccessibleObject
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD isValid
   METHOD object
   METHOD rect
   METHOD setText
   METHOD childAt
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAccessibleObject>
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
#include <QAccessibleObject>
#endif



/*
bool isValid() const
*/
HB_FUNC_STATIC( QACCESSIBLEOBJECT_ISVALID )
{
  QAccessibleObject * obj = (QAccessibleObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QObject *object() const
*/
HB_FUNC_STATIC( QACCESSIBLEOBJECT_OBJECT )
{
  QAccessibleObject * obj = (QAccessibleObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->object (  );
    _qt5xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
QRect rect() const
*/
HB_FUNC_STATIC( QACCESSIBLEOBJECT_RECT )
{
  QAccessibleObject * obj = (QAccessibleObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->rect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
void setText(QAccessible::Text t, const QString &text)
*/
HB_FUNC_STATIC( QACCESSIBLEOBJECT_SETTEXT )
{
  QAccessibleObject * obj = (QAccessibleObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setText (  (QAccessible::Text) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAccessibleInterface *childAt(int x, int y) const
*/
HB_FUNC_STATIC( QACCESSIBLEOBJECT_CHILDAT )
{
  QAccessibleObject * obj = (QAccessibleObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->childAt ( (int) hb_parni(1), (int) hb_parni(2) );
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}



#pragma ENDDUMP
