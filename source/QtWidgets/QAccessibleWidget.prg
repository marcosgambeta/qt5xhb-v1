/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINDOW
REQUEST QACCESSIBLEINTERFACE
REQUEST QRECT
REQUEST QCOLOR
#endif

CLASS QAccessibleWidget INHERIT QAccessibleObject,QAccessibleActionInterface

   METHOD new
   METHOD isValid
   METHOD window
   METHOD childCount
   METHOD indexOfChild
   METHOD focusChild
   METHOD rect
   METHOD parent
   METHOD child
   METHOD text
   METHOD role
   METHOD foregroundColor
   METHOD backgroundColor
   METHOD interface_cast
   METHOD actionNames
   METHOD doAction
   METHOD keyBindingsForAction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAccessibleWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessibleWidget>
#endif

/*
QAccessibleWidget(QWidget *o, QAccessible::Role r = QAccessible::Client, const QString& name = QString())
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_NEW )
{
  int par2 = ISNIL(2)? (int) QAccessible::Client : hb_parni(2);
  QAccessibleWidget * o = new QAccessibleWidget ( PQWIDGET(1), (QAccessible::Role) par2, OPQSTRING(3,QString()) );
  _qt5xhb_storePointerAndFlag( o, false );
}



/*
bool isValid() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_ISVALID )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
QWindow *window() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_WINDOW )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * ptr = obj->window ();
    _qt5xhb_createReturnClass ( ptr, "QWINDOW" );
  }
}


/*
int childCount() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_CHILDCOUNT )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->childCount () );
  }
}


/*
int indexOfChild(const QAccessibleInterface *child) const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_INDEXOFCHILD )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QAccessibleInterface * par1 = (const QAccessibleInterface *) _qt5xhb_itemGetPtr(1);
    RINT( obj->indexOfChild ( par1 ) );
  }
}



/*
QAccessibleInterface *focusChild() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_FOCUSCHILD )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->focusChild ();
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
QRect rect() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_RECT )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->rect () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QAccessibleInterface *parent() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_PARENT )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->parent ();
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
QAccessibleInterface *child(int index) const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_CHILD )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->child ( PINT(1) );
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
QString text(QAccessible::Text t) const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_TEXT )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->text ( (QAccessible::Text) hb_parni(1) ) );
  }
}


/*
QAccessible::Role role() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_ROLE )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->role () );
  }
}



/*
QColor foregroundColor() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_FOREGROUNDCOLOR )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->foregroundColor () );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
QColor backgroundColor() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_BACKGROUNDCOLOR )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->backgroundColor () );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
void *interface_cast(QAccessible::InterfaceType t)
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_INTERFACE_CAST )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retptr( (void *) obj->interface_cast ( (QAccessible::InterfaceType) hb_parni(1) ) );
  }
}


/*
QStringList actionNames() const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_ACTIONNAMES )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->actionNames () );
  }
}


/*
void doAction(const QString &actionName)
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_DOACTION )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->doAction ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList keyBindingsForAction(const QString &actionName) const
*/
HB_FUNC_STATIC( QACCESSIBLEWIDGET_KEYBINDINGSFORACTION )
{
  QAccessibleWidget * obj = (QAccessibleWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->keyBindingsForAction ( PQSTRING(1) ) );
  }
}



#pragma ENDDUMP
