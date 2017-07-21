$header

#include "hbclass.ch"

CLASS QStatusBar INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD addPermanentWidget
   METHOD addWidget
   METHOD currentMessage
   METHOD insertPermanentWidget
   METHOD insertWidget
   METHOD isSizeGripEnabled
   METHOD removeWidget
   METHOD setSizeGripEnabled
   METHOD clearMessage
   METHOD showMessage

   METHOD onMessageChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QStatusBar ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_NEW )
{
  QStatusBar * o = new QStatusBar ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
void addPermanentWidget ( QWidget * widget, int stretch = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_ADDPERMANENTWIDGET )
{
  QStatusBar * obj = (QStatusBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addPermanentWidget ( PQWIDGET(1), OPINT(2,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addWidget ( QWidget * widget, int stretch = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_ADDWIDGET )
{
  QStatusBar * obj = (QStatusBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addWidget ( PQWIDGET(1), OPINT(2,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString currentMessage () const
*/
$method=|QString|currentMessage|

/*
int insertPermanentWidget ( int index, QWidget * widget, int stretch = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_INSERTPERMANENTWIDGET )
{
  QStatusBar * obj = (QStatusBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->insertPermanentWidget ( PINT(1), PQWIDGET(2), OPINT(3,0) ) );
  }
}

/*
int insertWidget ( int index, QWidget * widget, int stretch = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_INSERTWIDGET )
{
  QStatusBar * obj = (QStatusBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->insertWidget ( PINT(1), PQWIDGET(2), OPINT(3,0) ) );
  }
}

/*
bool isSizeGripEnabled () const
*/
$method=|bool|isSizeGripEnabled|

/*
void removeWidget ( QWidget * widget )
*/
$method=|void|removeWidget|QWidget *

/*
void setSizeGripEnabled ( bool )
*/
$method=|void|setSizeGripEnabled|bool

/*
void clearMessage ()
*/
$method=|void|clearMessage|

/*
void showMessage ( const QString & message, int timeout = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_SHOWMESSAGE )
{
  QStatusBar * obj = (QStatusBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->showMessage ( PQSTRING(1), OPINT(2,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
