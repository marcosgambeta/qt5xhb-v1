$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QHelpSearchResultWidget INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD linkAt

   METHOD onRequestShowLink

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
QUrl linkAt ( const QPoint & point )
*/
HB_FUNC_STATIC( QHELPSEARCHRESULTWIDGET_LINKAT )
{
  QHelpSearchResultWidget * obj = (QHelpSearchResultWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->linkAt ( *PQPOINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}

#pragma ENDDUMP
