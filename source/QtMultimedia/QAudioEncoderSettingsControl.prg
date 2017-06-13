/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOENCODERSETTINGS
#endif

CLASS QAudioEncoderSettingsControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

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
#include <QAudioEncoderSettingsControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAudioEncoderSettingsControl>
#endif


HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_DELETE )
{
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
}

/*
virtual QAudioEncoderSettings audioSettings() const = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_AUDIOSETTINGS )
{
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioEncoderSettings * ptr = new QAudioEncoderSettings( obj->audioSettings () );
    _qt5xhb_createReturnClass ( ptr, "QAUDIOENCODERSETTINGS" );
  }
}


/*
virtual QString codecDescription(const QString & codec) const = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_CODECDESCRIPTION )
{
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->codecDescription ( PQSTRING(1) ) ) );
  }
}


/*
virtual void setAudioSettings(const QAudioEncoderSettings & settings) = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_SETAUDIOSETTINGS )
{
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAudioSettings ( *PQAUDIOENCODERSETTINGS(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QStringList supportedAudioCodecs() const = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_SUPPORTEDAUDIOCODECS )
{
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->supportedAudioCodecs ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
virtual QList<int> supportedSampleRates(const QAudioEncoderSettings & settings, bool * continuous = 0) const = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_SUPPORTEDSAMPLERATES )
{
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par2;
    QList<int> list = obj->supportedSampleRates ( *PQAUDIOENCODERSETTINGS(1), &par2 );
    _qt5xhb_convert_qlist_int_to_array ( list );
    hb_storl( par2, 2 );
  }
}



#pragma ENDDUMP
