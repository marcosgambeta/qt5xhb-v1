/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QWINDOW
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessibleApplication INHERIT QAccessibleObject

   DATA class_id INIT Class_Id_QAccessibleApplication
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD window
   METHOD childCount
   METHOD indexOfChild
   METHOD focusChild
   METHOD parent
   METHOD child
   METHOD text
   METHOD role
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleApplication
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAccessibleApplication>
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
#include <QAccessibleApplication>
#endif
#endif

/*
QAccessibleApplication()
*/
HB_FUNC_STATIC( QACCESSIBLEAPPLICATION_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAccessibleApplication * o = new QAccessibleApplication (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAccessibleApplication *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}



/*
QWindow *window() const
*/
HB_FUNC_STATIC( QACCESSIBLEAPPLICATION_WINDOW )
{
  QAccessibleApplication * obj = (QAccessibleApplication *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * ptr = obj->window (  );
    _qt4xhb_createReturnClass ( ptr, "QWINDOW" );
  }
}


/*
int childCount() const
*/
HB_FUNC_STATIC( QACCESSIBLEAPPLICATION_CHILDCOUNT )
{
  QAccessibleApplication * obj = (QAccessibleApplication *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->childCount (  ) );
  }
}


/*
int indexOfChild(const QAccessibleInterface*) const
*/
HB_FUNC_STATIC( QACCESSIBLEAPPLICATION_INDEXOFCHILD )
{
  QAccessibleApplication * obj = (QAccessibleApplication *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QAccessibleInterface * par1 = (const QAccessibleInterface *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->indexOfChild ( par1 ) );
  }
}


/*
QAccessibleInterface *focusChild() const
*/
HB_FUNC_STATIC( QACCESSIBLEAPPLICATION_FOCUSCHILD )
{
  QAccessibleApplication * obj = (QAccessibleApplication *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->focusChild (  );
    _qt4xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
QAccessibleInterface *parent() const
*/
HB_FUNC_STATIC( QACCESSIBLEAPPLICATION_PARENT )
{
  QAccessibleApplication * obj = (QAccessibleApplication *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->parent (  );
    _qt4xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
QAccessibleInterface *child(int index) const
*/
HB_FUNC_STATIC( QACCESSIBLEAPPLICATION_CHILD )
{
  QAccessibleApplication * obj = (QAccessibleApplication *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->child ( (int) hb_parni(1) );
    _qt4xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
QString text(QAccessible::Text t) const
*/
HB_FUNC_STATIC( QACCESSIBLEAPPLICATION_TEXT )
{
  QAccessibleApplication * obj = (QAccessibleApplication *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retc( (const char *) obj->text (  (QAccessible::Text) par1 ).toLatin1().data() );
  }
}


/*
QAccessible::Role role() const
*/
HB_FUNC_STATIC( QACCESSIBLEAPPLICATION_ROLE )
{
  QAccessibleApplication * obj = (QAccessibleApplication *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->role (  ) );
  }
}




#pragma ENDDUMP
