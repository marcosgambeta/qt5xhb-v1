/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QVIDEOENCODERSETTINGS
#endif

CLASS QVideoEncoderSettingsControl INHERIT QMediaControl

   DATA class_id INIT Class_Id_QVideoEncoderSettingsControl
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD setVideoSettings
   METHOD supportedFrameRates
   METHOD supportedResolutions
   METHOD supportedVideoCodecs
   METHOD videoCodecDescription
   METHOD videoSettings
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVideoEncoderSettingsControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QVideoEncoderSettingsControl>
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QVideoEncoderSettingsControl>
#endif


HB_FUNC_STATIC( QVIDEOENCODERSETTINGSCONTROL_DELETE )
{
  QVideoEncoderSettingsControl * obj = (QVideoEncoderSettingsControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void setVideoSettings(const QVideoEncoderSettings & settings) = 0
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGSCONTROL_SETVIDEOSETTINGS )
{
  QVideoEncoderSettingsControl * obj = (QVideoEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoEncoderSettings * par1 = (QVideoEncoderSettings *) _qt5xhb_itemGetPtr(1);
    obj->setVideoSettings ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QList<qreal> supportedFrameRates(const QVideoEncoderSettings & settings, bool * continuous = 0) const = 0
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGSCONTROL_SUPPORTEDFRAMERATES )
{
  QVideoEncoderSettingsControl * obj = (QVideoEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoEncoderSettings * par1 = (QVideoEncoderSettings *) _qt5xhb_itemGetPtr(1);
    bool par2;
    QList<qreal> list = obj->supportedFrameRates ( *par1, &par2 );
    _qt5xhb_convert_qlist_qreal_to_array ( list );
    hb_storl( par2, 2 );
  }
}


/*
virtual QList<QSize> supportedResolutions(const QVideoEncoderSettings & settings, bool * continuous = 0) const = 0
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGSCONTROL_SUPPORTEDRESOLUTIONS )
{
  QVideoEncoderSettingsControl * obj = (QVideoEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoEncoderSettings * par1 = (QVideoEncoderSettings *) _qt5xhb_itemGetPtr(1);
    bool par2;
    QList<QSize> list = obj->supportedResolutions ( *par1, &par2 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSIZE" );
    #else
    pDynSym = hb_dynsymFindName( "QSIZE" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QSize *) new QSize ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
    hb_storl( par2, 2 );
  }
}


/*
virtual QStringList supportedVideoCodecs() const = 0
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGSCONTROL_SUPPORTEDVIDEOCODECS )
{
  QVideoEncoderSettingsControl * obj = (QVideoEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->supportedVideoCodecs (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
virtual QString videoCodecDescription(const QString & codec) const = 0
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGSCONTROL_VIDEOCODECDESCRIPTION )
{
  QVideoEncoderSettingsControl * obj = (QVideoEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->videoCodecDescription ( par1 ).toLatin1().data() );
  }
}


/*
virtual QVideoEncoderSettings videoSettings() const = 0
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGSCONTROL_VIDEOSETTINGS )
{
  QVideoEncoderSettingsControl * obj = (QVideoEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoEncoderSettings * ptr = new QVideoEncoderSettings( obj->videoSettings (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVIDEOENCODERSETTINGS" );
  }
}



#pragma ENDDUMP
