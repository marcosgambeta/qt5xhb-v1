$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

CLASS QHelpContentWidget INHERIT QTreeView

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD indexOf

   METHOD onLinkActivated

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
QModelIndex indexOf ( const QUrl & link )
*/
HB_FUNC_STATIC( QHELPCONTENTWIDGET_INDEXOF )
{
  QHelpContentWidget * obj = (QHelpContentWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->indexOf ( *PQURL(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

#pragma ENDDUMP
