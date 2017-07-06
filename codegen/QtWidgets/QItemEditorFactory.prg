$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QBYTEARRAY
#endif

CLASS QItemEditorFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD createEditor
   METHOD valuePropertyName
   METHOD registerEditor
   METHOD defaultFactory
   METHOD setDefaultFactory

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
QItemEditorFactory()
*/
HB_FUNC_STATIC( QITEMEDITORFACTORY_NEW )
{
  QItemEditorFactory * o = new QItemEditorFactory ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
virtual QWidget *createEditor(int userType, QWidget *parent) const
*/
HB_FUNC_STATIC( QITEMEDITORFACTORY_CREATEEDITOR )
{
  QItemEditorFactory * obj = (QItemEditorFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->createEditor ( PINT(1), PQWIDGET(2) );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
virtual QByteArray valuePropertyName(int userType) const
*/
HB_FUNC_STATIC( QITEMEDITORFACTORY_VALUEPROPERTYNAME )
{
  QItemEditorFactory * obj = (QItemEditorFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->valuePropertyName ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
void registerEditor(int userType, QItemEditorCreatorBase *creator)
*/
HB_FUNC_STATIC( QITEMEDITORFACTORY_REGISTEREDITOR )
{
  QItemEditorFactory * obj = (QItemEditorFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->registerEditor ( PINT(1), PQITEMEDITORCREATORBASE(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static const QItemEditorFactory *defaultFactory()
*/
HB_FUNC_STATIC( QITEMEDITORFACTORY_DEFAULTFACTORY )
{
  const QItemEditorFactory * ptr = QItemEditorFactory::defaultFactory ();
  _qt5xhb_createReturnClass ( ptr, "QITEMEDITORFACTORY" );
}


/*
static void setDefaultFactory(QItemEditorFactory *factory)
*/
HB_FUNC_STATIC( QITEMEDITORFACTORY_SETDEFAULTFACTORY )
{
  QItemEditorFactory::setDefaultFactory ( PQITEMEDITORFACTORY(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
