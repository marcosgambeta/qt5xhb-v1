$header

#include "hbclass.ch"

CLASS QMediaServiceSupportedFormatsInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD hasSupport
   METHOD supportedMimeTypes

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QMultimedia::SupportEstimate hasSupport(const QString & mimeType, const QStringList & codecs) const = 0
*/
HB_FUNC_STATIC( QMEDIASERVICESUPPORTEDFORMATSINTERFACE_HASSUPPORT )
{
  QMediaServiceSupportedFormatsInterface * obj = (QMediaServiceSupportedFormatsInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->hasSupport ( PQSTRING(1), PQSTRINGLIST(2) ) );
  }
}


/*
virtual QStringList supportedMimeTypes() const = 0
*/
HB_FUNC_STATIC( QMEDIASERVICESUPPORTEDFORMATSINTERFACE_SUPPORTEDMIMETYPES )
{
  QMediaServiceSupportedFormatsInterface * obj = (QMediaServiceSupportedFormatsInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->supportedMimeTypes () );
  }
}



$extraMethods

#pragma ENDDUMP
