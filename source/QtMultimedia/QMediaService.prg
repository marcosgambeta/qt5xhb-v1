/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIACONTROL
#endif

CLASS QMediaService INHERIT QObject

   METHOD delete
   METHOD releaseControl
   METHOD requestControl

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaService
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaService>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaService>
#endif


HB_FUNC_STATIC( QMEDIASERVICE_DELETE )
{
  QMediaService * obj = (QMediaService *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void releaseControl(QMediaControl * control) = 0
*/
HB_FUNC_STATIC( QMEDIASERVICE_RELEASECONTROL )
{
  QMediaService * obj = (QMediaService *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaControl * par1 = (QMediaControl *) _qt5xhb_itemGetPtr(1);
    obj->releaseControl ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QMediaControl * requestControl(const char * interface) = 0
*/
HB_FUNC_STATIC( QMEDIASERVICE_REQUESTCONTROL )
{
  QMediaService * obj = (QMediaService *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaControl * ptr = obj->requestControl ( PCONSTCHAR(1) );
    _qt5xhb_createReturnClass ( ptr, "QMEDIACONTROL" );
  }
}




#pragma ENDDUMP
