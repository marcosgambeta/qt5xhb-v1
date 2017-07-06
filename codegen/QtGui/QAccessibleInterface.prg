$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QWINDOW
REQUEST QRECT
REQUEST QCOLOR
REQUEST QACCESSIBLETEXTINTERFACE
REQUEST QACCESSIBLEEDITABLETEXTINTERFACE
REQUEST QACCESSIBLEVALUEINTERFACE
REQUEST QACCESSIBLEACTIONINTERFACE
REQUEST QACCESSIBLEIMAGEINTERFACE
REQUEST QACCESSIBLETABLEINTERFACE
REQUEST QACCESSIBLETABLECELLINTERFACE
#endif

CLASS QAccessibleInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD isValid
   METHOD object
   METHOD window
   METHOD focusChild
   METHOD childAt
   METHOD parent
   METHOD child
   METHOD childCount
   METHOD indexOfChild
   METHOD text
   METHOD setText
   METHOD rect
   METHOD role
   METHOD foregroundColor
   METHOD backgroundColor
   METHOD textInterface
   METHOD editableTextInterface
   METHOD valueInterface
   METHOD actionInterface
   METHOD imageInterface
   METHOD tableInterface
   METHOD tableCellInterface
   METHOD virtual_hook
   METHOD interface_cast

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
virtual bool isValid() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_ISVALID )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
virtual QObject *object() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_OBJECT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->object ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
virtual QWindow *window() const
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_WINDOW )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * ptr = obj->window ();
    _qt5xhb_createReturnClass ( ptr, "QWINDOW" );
  }
}



/*
virtual QAccessibleInterface *focusChild() const
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_FOCUSCHILD )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->focusChild ();
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
virtual QAccessibleInterface *childAt(int x, int y) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_CHILDAT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->childAt ( PINT(1), PINT(2) );
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
virtual QAccessibleInterface *parent() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_PARENT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->parent ();
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
virtual QAccessibleInterface *child(int index) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_CHILD )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->child ( PINT(1) );
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}


/*
virtual int childCount() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_CHILDCOUNT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->childCount () );
  }
}


/*
virtual int indexOfChild(const QAccessibleInterface *) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_INDEXOFCHILD )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QAccessibleInterface * par1 = (const QAccessibleInterface *) _qt5xhb_itemGetPtr(1);
    RINT( obj->indexOfChild ( par1 ) );
  }
}


/*
virtual QString text(QAccessible::Text t) const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_TEXT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->text ( (QAccessible::Text) hb_parni(1) ) );
  }
}


/*
virtual void setText(QAccessible::Text t, const QString &text) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_SETTEXT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setText ( (QAccessible::Text) hb_parni(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QRect rect() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_RECT )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->rect () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual QAccessible::Role role() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_ROLE )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->role () );
  }
}



/*
virtual QColor foregroundColor() const
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_FOREGROUNDCOLOR )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->foregroundColor () );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
virtual QColor backgroundColor() const
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_BACKGROUNDCOLOR )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->backgroundColor () );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
QAccessibleTextInterface *textInterface()
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_TEXTINTERFACE )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleTextInterface * ptr = obj->textInterface ();
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLETEXTINTERFACE" );
  }
}


/*
QAccessibleEditableTextInterface *editableTextInterface()
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_EDITABLETEXTINTERFACE )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleEditableTextInterface * ptr = obj->editableTextInterface ();
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEEDITABLETEXTINTERFACE" );
  }
}


/*
QAccessibleValueInterface *valueInterface()
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_VALUEINTERFACE )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleValueInterface * ptr = obj->valueInterface ();
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEVALUEINTERFACE" );
  }
}


/*
QAccessibleActionInterface *actionInterface()
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_ACTIONINTERFACE )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleActionInterface * ptr = obj->actionInterface ();
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEACTIONINTERFACE" );
  }
}


/*
QAccessibleImageInterface *imageInterface()
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_IMAGEINTERFACE )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleImageInterface * ptr = obj->imageInterface ();
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEIMAGEINTERFACE" );
  }
}


/*
QAccessibleTableInterface *tableInterface()
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_TABLEINTERFACE )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleTableInterface * ptr = obj->tableInterface ();
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLETABLEINTERFACE" );
  }
}


/*
QAccessibleTableCellInterface *tableCellInterface()
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_TABLECELLINTERFACE )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleTableCellInterface * ptr = obj->tableCellInterface ();
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLETABLECELLINTERFACE" );
  }
}


/*
void virtual_hook(int id, void *data)
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_VIRTUAL_HOOK )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->virtual_hook ( PINT(1), (void *) hb_parptr(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void *interface_cast(QAccessible::InterfaceType)
*/
HB_FUNC_STATIC( QACCESSIBLEINTERFACE_INTERFACE_CAST )
{
  QAccessibleInterface * obj = (QAccessibleInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retptr( (void *) obj->interface_cast ( (QAccessible::InterfaceType) hb_parni(1) ) );
  }
}

$extraMethods

#pragma ENDDUMP
