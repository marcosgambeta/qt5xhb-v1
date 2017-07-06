$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
#endif

CLASS QMediaNetworkAccessControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD currentConfiguration
   METHOD setConfigurations

   METHOD onConfigurationChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QNetworkConfiguration currentConfiguration() const = 0
*/
HB_FUNC_STATIC( QMEDIANETWORKACCESSCONTROL_CURRENTCONFIGURATION )
{
  QMediaNetworkAccessControl * obj = (QMediaNetworkAccessControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->currentConfiguration () );
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