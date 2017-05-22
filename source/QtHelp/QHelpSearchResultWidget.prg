/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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

PROCEDURE destroyObject () CLASS QHelpSearchResultWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QHelpSearchResultWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QHelpSearchResultWidget>
#endif

HB_FUNC_STATIC( QHELPSEARCHRESULTWIDGET_DELETE )
{
  QHelpSearchResultWidget * obj = (QHelpSearchResultWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QUrl linkAt ( const QPoint & point )
*/
HB_FUNC_STATIC( QHELPSEARCHRESULTWIDGET_LINKAT )
{
  QHelpSearchResultWidget * obj = (QHelpSearchResultWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QUrl * ptr = new QUrl( obj->linkAt ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}




#pragma ENDDUMP
