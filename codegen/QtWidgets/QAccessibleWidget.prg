$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINDOW
REQUEST QACCESSIBLEINTERFACE
REQUEST QRECT
REQUEST QCOLOR
#endif

CLASS QAccessibleWidget INHERIT QAccessibleObject,QAccessibleActionInterface

   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

$includes

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
$method=|bool|isValid|

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
$method=|int|childCount|

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
$method=|QStringList|actionNames|

/*
void doAction(const QString &actionName)
*/
$method=|void|doAction|const QString &

/*
QStringList keyBindingsForAction(const QString &actionName) const
*/
$method=|QStringList|keyBindingsForAction|const QString &

#pragma ENDDUMP
