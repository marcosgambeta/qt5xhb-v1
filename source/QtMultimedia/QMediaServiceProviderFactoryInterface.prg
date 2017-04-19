/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIASERVICE
#endif

CLASS QMediaServiceProviderFactoryInterface

   DATA pointer
   DATA class_id INIT Class_Id_QMediaServiceProviderFactoryInterface
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD release

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaServiceProviderFactoryInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaServiceProviderFactoryInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaServiceProviderFactoryInterface>
#endif


HB_FUNC_STATIC( QMEDIASERVICEPROVIDERFACTORYINTERFACE_DELETE )
{
  QMediaServiceProviderFactoryInterface * obj = (QMediaServiceProviderFactoryInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QMediaService* create(QString const& key) = 0
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERFACTORYINTERFACE_CREATE )
{
  QMediaServiceProviderFactoryInterface * obj = (QMediaServiceProviderFactoryInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QMediaService * ptr = obj->create ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QMEDIASERVICE" );
  }
}


/*
virtual void release(QMediaService *service) = 0
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERFACTORYINTERFACE_RELEASE )
{
  QMediaServiceProviderFactoryInterface * obj = (QMediaServiceProviderFactoryInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaService * par1 = (QMediaService *) _qt5xhb_itemGetPtr(1);
    obj->release ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QMEDIASERVICEPROVIDERFACTORYINTERFACE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERFACTORYINTERFACE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMEDIASERVICEPROVIDERFACTORYINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERFACTORYINTERFACE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMEDIASERVICEPROVIDERFACTORYINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERFACTORYINTERFACE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERFACTORYINTERFACE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
