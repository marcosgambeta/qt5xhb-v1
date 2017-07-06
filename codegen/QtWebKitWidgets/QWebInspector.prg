$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBPAGE
REQUEST QSIZE
#endif

CLASS QWebInspector INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD page
   METHOD setPage
   METHOD event
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QWebInspector ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QWEBINSPECTOR_NEW )
{
  QWebInspector * o = new QWebInspector ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QWebPage * page () const
*/
HB_FUNC_STATIC( QWEBINSPECTOR_PAGE )
{
  QWebInspector * obj = (QWebInspector *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebPage * ptr = obj->page ();
    _qt5xhb_createReturnClass ( ptr, "QWEBPAGE" );
  }
}


/*
void setPage ( QWebPage * page )
*/
HB_FUNC_STATIC( QWEBINSPECTOR_SETPAGE )
{
  QWebInspector * obj = (QWebInspector *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebPage * par1 = (QWebPage *) _qt5xhb_itemGetPtr(1);
    obj->setPage ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool event ( QEvent * ev )
*/
HB_FUNC_STATIC( QWEBINSPECTOR_EVENT )
{
  QWebInspector * obj = (QWebInspector *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->event ( PQEVENT(1) ) );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QWEBINSPECTOR_SIZEHINT )
{
  QWebInspector * obj = (QWebInspector *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}



#pragma ENDDUMP
