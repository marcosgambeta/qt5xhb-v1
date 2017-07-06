$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QWidgetAction INHERIT QAction

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD defaultWidget
   METHOD releaseWidget
   METHOD requestWidget
   METHOD setDefaultWidget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QWidgetAction(QObject * parent)
*/
HB_FUNC_STATIC( QWIDGETACTION_NEW )
{
  QWidgetAction * o = new QWidgetAction ( PQOBJECT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QWidget * defaultWidget() const
*/
HB_FUNC_STATIC( QWIDGETACTION_DEFAULTWIDGET )
{
  QWidgetAction * obj = (QWidgetAction *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->defaultWidget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
void releaseWidget(QWidget * widget)
*/
HB_FUNC_STATIC( QWIDGETACTION_RELEASEWIDGET )
{
  QWidgetAction * obj = (QWidgetAction *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->releaseWidget ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * requestWidget(QWidget * parent)
*/
HB_FUNC_STATIC( QWIDGETACTION_REQUESTWIDGET )
{
  QWidgetAction * obj = (QWidgetAction *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->requestWidget ( PQWIDGET(1) );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
void setDefaultWidget(QWidget * widget)
*/
HB_FUNC_STATIC( QWIDGETACTION_SETDEFAULTWIDGET )
{
  QWidgetAction * obj = (QWidgetAction *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDefaultWidget ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
