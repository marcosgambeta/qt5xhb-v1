/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINDOW
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessibleApplication INHERIT QAccessibleObject

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

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
#include <QAccessibleApplication>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessibleApplication>
#endif

/*
QAccessibleApplication()
*/
HB_FUNC_STATIC( QACCESSIBLEAPPLICATION_NEW )
{
  QAccessibleApplication * o = new QAccessibleApplication (  );
  _qt5xhb_storePointerAndFlag( o, false );
}



/*
QWindow *window() const
*/
HB_FUNC_STATIC( QACCESSIBLEAPPLICATION_WINDOW )
{
  QAccessibleApplication * obj = (QAccessibleApplication *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * ptr = obj->window (  );
    _qt5xhb_createReturnClass ( ptr, "QWINDOW" );
  }
}


/*
int childCount() const
*/
HB_FUNC_STATIC( QACCESSIBLEAPPLICATION_CHILDCOUNT )
{
  QAccessibleApplication * obj = (QAccessibleApplication *) _qt5xhb_itemGetPtrStackSelfItem();
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
  QAccessibleApplication * obj = (QAccessibleApplication *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QAccessibleInterface * par1 = (const QAccessibleInterface *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->indexOfChild ( par1 ) );
  }
}


/*
QAccessibleInterface *focusChild() const
*/
HB_FUNC_STATIC( QACCESSIBLEAPPLICATION_FOCUSCHILD )
{
  QAccessibleApplication * obj = (QAccessibleApplication *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->focusChild (  );
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
QAccessibleInterface *parent() const
*/
HB_FUNC_STATIC( QACCESSIBLEAPPLICATION_PARENT )
{
  QAccessibleApplication * obj = (QAccessibleApplication *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->parent (  );
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
QAccessibleInterface *child(int index) const
*/
HB_FUNC_STATIC( QACCESSIBLEAPPLICATION_CHILD )
{
  QAccessibleApplication * obj = (QAccessibleApplication *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->child ( PINT(1) );
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
QString text(QAccessible::Text t) const
*/
HB_FUNC_STATIC( QACCESSIBLEAPPLICATION_TEXT )
{
  QAccessibleApplication * obj = (QAccessibleApplication *) _qt5xhb_itemGetPtrStackSelfItem();
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
  QAccessibleApplication * obj = (QAccessibleApplication *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->role (  ) );
  }
}




#pragma ENDDUMP
