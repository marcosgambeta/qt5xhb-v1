/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QAUDIOENCODERSETTINGS

CLASS QAudioEncoderSettingsControl INHERIT QMediaControl

   DATA class_id INIT Class_Id_QAudioEncoderSettingsControl
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD audioSettings
   METHOD codecDescription
   METHOD setAudioSettings
   METHOD supportedAudioCodecs
   METHOD supportedSampleRates
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAudioEncoderSettingsControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAudioEncoderSettingsControl>
#endif
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAudioEncoderSettingsControl>
#endif
#endif


HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
virtual QAudioEncoderSettings audioSettings() const = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_AUDIOSETTINGS )
{
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioEncoderSettings * ptr = new QAudioEncoderSettings( obj->audioSettings (  ) );
    _qt4xhb_createReturnClass ( ptr, "QAUDIOENCODERSETTINGS" );
  }
}


/*
virtual QString codecDescription(const QString & codec) const = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_CODECDESCRIPTION )
{
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->codecDescription ( par1 ).toLatin1().data() );
  }
}


/*
virtual void setAudioSettings(const QAudioEncoderSettings & settings) = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_SETAUDIOSETTINGS )
{
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioEncoderSettings * par1 = (QAudioEncoderSettings *) _qtxhb_itemGetPtr(1);
    obj->setAudioSettings ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QStringList supportedAudioCodecs() const = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_SUPPORTEDAUDIOCODECS )
{
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->supportedAudioCodecs (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
virtual QList<int> supportedSampleRates(const QAudioEncoderSettings & settings, bool * continuous = 0) const = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_SUPPORTEDSAMPLERATES )
{
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioEncoderSettings * par1 = (QAudioEncoderSettings *) _qtxhb_itemGetPtr(1);
    bool par2;
    QList<int> list = obj->supportedSampleRates ( *par1, &par2 );
    _qtxhb_convert_qlist_int_to_array ( list );
    hb_storl( par2, 2 );
  }
}



#pragma ENDDUMP
