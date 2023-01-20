/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOENCODERSETTINGS
#endif

CLASS QAudioEncoderSettingsControl INHERIT QMediaControl

   METHOD delete
   METHOD audioSettings
   METHOD codecDescription
   METHOD setAudioSettings
   METHOD supportedAudioCodecs
   METHOD supportedSampleRates

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAudioEncoderSettingsControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QAudioEncoderSettingsControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QAudioEncoderSettingsControl>
#endif

/*
virtual ~QAudioEncoderSettingsControl()
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_DELETE )
{
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual QAudioEncoderSettings audioSettings() const = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_AUDIOSETTINGS )
{
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAudioEncoderSettings * ptr = new QAudioEncoderSettings( obj->audioSettings() );
      Qt5xHb::createReturnClass(ptr, "QAUDIOENCODERSETTINGS", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QString codecDescription( const QString & codecName ) const = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_CODECDESCRIPTION )
{
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RQSTRING( obj->codecDescription( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void setAudioSettings( const QAudioEncoderSettings & settings ) = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_SETAUDIOSETTINGS )
{
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQAUDIOENCODERSETTINGS(1) )
    {
#endif
      obj->setAudioSettings( *PQAUDIOENCODERSETTINGS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual QStringList supportedAudioCodecs() const = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_SUPPORTEDAUDIOCODECS )
{
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->supportedAudioCodecs() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QList<int> supportedSampleRates( const QAudioEncoderSettings & settings, bool * continuous = nullptr ) const = 0
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGSCONTROL_SUPPORTEDSAMPLERATES )
{
  QAudioEncoderSettingsControl * obj = (QAudioEncoderSettingsControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQAUDIOENCODERSETTINGS(1) && (HB_ISLOG(2)||HB_ISNIL(2)) )
    {
#endif
      bool par2;
      QList<int> list = obj->supportedSampleRates( *PQAUDIOENCODERSETTINGS(1), &par2 );
      Qt5xHb::convert_qlist_int_to_array(list);
      hb_storl( par2, 2 );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
