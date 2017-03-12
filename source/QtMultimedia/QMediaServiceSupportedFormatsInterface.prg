/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QMediaServiceSupportedFormatsInterface

   DATA pointer
   DATA class_id INIT Class_Id_QMediaServiceSupportedFormatsInterface
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QMediaServiceSupportedFormatsInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaServiceSupportedFormatsInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaServiceSupportedFormatsInterface>
#endif


HB_FUNC_STATIC( QMEDIASERVICESUPPORTEDFORMATSINTERFACE_DELETE )
{
  QMediaServiceSupportedFormatsInterface * obj = (QMediaServiceSupportedFormatsInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QMultimedia::SupportEstimate hasSupport(const QString & mimeType, const QStringList & codecs) const = 0
*/
HB_FUNC_STATIC( QMEDIASERVICESUPPORTEDFORMATSINTERFACE_HASSUPPORT )
{
  QMediaServiceSupportedFormatsInterface * obj = (QMediaServiceSupportedFormatsInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
QStringList par2;
PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aStrings2);
for (i2=0;i2<nLen2;i2++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings2, i2+1) );
par2 << temp;
}
    hb_retni( obj->hasSupport ( par1, par2 ) );
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
    QStringList strl = obj->supportedMimeTypes (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}



HB_FUNC_STATIC( QMEDIASERVICESUPPORTEDFORMATSINTERFACE_NEWFROM )
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

HB_FUNC_STATIC( QMEDIASERVICESUPPORTEDFORMATSINTERFACE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMEDIASERVICESUPPORTEDFORMATSINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QMEDIASERVICESUPPORTEDFORMATSINTERFACE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMEDIASERVICESUPPORTEDFORMATSINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QMEDIASERVICESUPPORTEDFORMATSINTERFACE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMEDIASERVICESUPPORTEDFORMATSINTERFACE_SETSELFDESTRUCTION )
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