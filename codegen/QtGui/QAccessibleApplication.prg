$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINDOW
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessibleApplication INHERIT QAccessibleObject

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

$destructor

#pragma BEGINDUMP

$includes

/*
QAccessibleApplication()
*/
HB_FUNC_STATIC( QACCESSIBLEAPPLICATION_NEW )
{
  QAccessibleApplication * o = new QAccessibleApplication ();
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
    QWindow * ptr = obj->window ();
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
    RINT( obj->childCount () );
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
    RINT( obj->indexOfChild ( par1 ) );
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
    QAccessibleInterface * ptr = obj->focusChild ();
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
    QAccessibleInterface * ptr = obj->parent ();
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
$method=|QString|text|QAccessible::Text

/*
QAccessible::Role role() const
*/
$method=|QAccessible::Role|role|

#pragma ENDDUMP
