/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIASERVICE
#endif

CLASS QMediaServiceProviderPlugin INHERIT QObject,QMediaServiceProviderFactoryInterface

   DATA class_id INIT Class_Id_QMediaServiceProviderPlugin
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD release

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaServiceProviderPlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaServiceProviderPlugin>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaServiceProviderPlugin>
#endif


HB_FUNC_STATIC( QMEDIASERVICEPROVIDERPLUGIN_DELETE )
{
  QMediaServiceProviderPlugin * obj = (QMediaServiceProviderPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QMediaService * create(const QString & key) = 0
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERPLUGIN_CREATE )
{
  QMediaServiceProviderPlugin * obj = (QMediaServiceProviderPlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QMediaService * ptr = obj->create ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QMEDIASERVICE" );
  }
}


/*
virtual void release(QMediaService * service) = 0
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERPLUGIN_RELEASE )
{
  QMediaServiceProviderPlugin * obj = (QMediaServiceProviderPlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaService * par1 = (QMediaService *) _qt5xhb_itemGetPtr(1);
    obj->release ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
