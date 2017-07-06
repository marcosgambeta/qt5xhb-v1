$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QBYTEARRAY
#endif

CLASS QItemEditorCreatorBase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD createWidget
   METHOD valuePropertyName

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

$deleteMethod

/*
virtual QWidget *createWidget(QWidget *parent) const = 0
*/
HB_FUNC_STATIC( QITEMEDITORCREATORBASE_CREATEWIDGET )
{
  QItemEditorCreatorBase * obj = (QItemEditorCreatorBase *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->createWidget ( PQWIDGET(1) );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
virtual QByteArray valuePropertyName() const = 0
*/
HB_FUNC_STATIC( QITEMEDITORCREATORBASE_VALUEPROPERTYNAME )
{
  QItemEditorCreatorBase * obj = (QItemEditorCreatorBase *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->valuePropertyName () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

$extraMethods

#pragma ENDDUMP
