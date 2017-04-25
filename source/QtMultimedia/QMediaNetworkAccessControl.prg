/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
#endif

CLASS QMediaNetworkAccessControl INHERIT QMediaControl

   //DATA class_id INIT Class_Id_QMediaNetworkAccessControl
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD currentConfiguration
   METHOD setConfigurations

   METHOD onConfigurationChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaNetworkAccessControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaNetworkAccessControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaNetworkAccessControl>
#endif


HB_FUNC_STATIC( QMEDIANETWORKACCESSCONTROL_DELETE )
{
  QMediaNetworkAccessControl * obj = (QMediaNetworkAccessControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QNetworkConfiguration currentConfiguration() const = 0
*/
HB_FUNC_STATIC( QMEDIANETWORKACCESSCONTROL_CURRENTCONFIGURATION )
{
  QMediaNetworkAccessControl * obj = (QMediaNetworkAccessControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->currentConfiguration (  ) );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKCONFIGURATION", true );
  }
}


/*
virtual void setConfigurations(const QList<QNetworkConfiguration> & configurations) = 0
*/
HB_FUNC_STATIC( QMEDIANETWORKACCESSCONTROL_SETCONFIGURATIONS )
{
  QMediaNetworkAccessControl * obj = (QMediaNetworkAccessControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QNetworkConfiguration> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QNetworkConfiguration *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setConfigurations ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
