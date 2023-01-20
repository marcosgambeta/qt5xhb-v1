/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRADIODATA
#endif

CLASS QRadioTuner INHERIT QMediaObject

   METHOD new
   METHOD delete
   METHOD state
   METHOD band
   METHOD setBand
   METHOD frequency
   METHOD setFrequency
   METHOD isStereo
   METHOD stereoMode
   METHOD setStereoMode
   METHOD signalStrength
   METHOD volume
   METHOD setVolume
   METHOD isMuted
   METHOD setMuted
   METHOD isSearching
   METHOD isAntennaConnected
   METHOD radioData
   METHOD availability
   METHOD isBandSupported
   METHOD frequencyStep
   METHOD error
   METHOD errorString
   METHOD searchForward
   METHOD searchBackward
   METHOD searchAllStations
   METHOD cancelSearch
   METHOD start
   METHOD stop

   METHOD onStateChanged
   METHOD onBandChanged
   METHOD onFrequencyChanged
   METHOD onStereoStatusChanged
   METHOD onSearchingChanged
   METHOD onSignalStrengthChanged
   METHOD onVolumeChanged
   METHOD onMutedChanged
   METHOD onStationFound
   METHOD onAntennaConnectedChanged
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QRadioTuner
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QRadioTuner>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QRadioTuner>
#endif

#include <QtMultimedia/QRadioData>

/*
QRadioTuner( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QRADIOTUNER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QRadioTuner * obj = new QRadioTuner( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QRadioTuner()
*/
HB_FUNC_STATIC( QRADIOTUNER_DELETE )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

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
QRadioTuner::State state() const
*/
HB_FUNC_STATIC( QRADIOTUNER_STATE )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state() );
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
QRadioTuner::Band band() const
*/
HB_FUNC_STATIC( QRADIOTUNER_BAND )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->band() );
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
void setBand( QRadioTuner::Band band )
*/
HB_FUNC_STATIC( QRADIOTUNER_SETBAND )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setBand( (QRadioTuner::Band) hb_parni(1) );
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
int frequency() const
*/
HB_FUNC_STATIC( QRADIOTUNER_FREQUENCY )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->frequency() );
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
void setFrequency( int frequency )
*/
HB_FUNC_STATIC( QRADIOTUNER_SETFREQUENCY )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setFrequency( PINT(1) );
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
bool isStereo() const
*/
HB_FUNC_STATIC( QRADIOTUNER_ISSTEREO )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isStereo() );
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
QRadioTuner::StereoMode stereoMode() const
*/
HB_FUNC_STATIC( QRADIOTUNER_STEREOMODE )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->stereoMode() );
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
void setStereoMode( QRadioTuner::StereoMode mode )
*/
HB_FUNC_STATIC( QRADIOTUNER_SETSTEREOMODE )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setStereoMode( (QRadioTuner::StereoMode) hb_parni(1) );
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
int signalStrength() const
*/
HB_FUNC_STATIC( QRADIOTUNER_SIGNALSTRENGTH )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->signalStrength() );
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
int volume() const
*/
HB_FUNC_STATIC( QRADIOTUNER_VOLUME )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->volume() );
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
void setVolume( int volume )
*/
HB_FUNC_STATIC( QRADIOTUNER_SETVOLUME )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setVolume( PINT(1) );
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
bool isMuted() const
*/
HB_FUNC_STATIC( QRADIOTUNER_ISMUTED )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isMuted() );
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
void setMuted( bool muted )
*/
HB_FUNC_STATIC( QRADIOTUNER_SETMUTED )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setMuted( PBOOL(1) );
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
bool isSearching() const
*/
HB_FUNC_STATIC( QRADIOTUNER_ISSEARCHING )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSearching() );
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
bool isAntennaConnected() const
*/
HB_FUNC_STATIC( QRADIOTUNER_ISANTENNACONNECTED )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isAntennaConnected() );
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
QRadioData * radioData() const
*/
HB_FUNC_STATIC( QRADIOTUNER_RADIODATA )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRadioData * ptr = obj->radioData();
      Qt5xHb::createReturnQObjectClass(ptr, "QRADIODATA");
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
QMultimedia::AvailabilityStatus availability() const override
*/
HB_FUNC_STATIC( QRADIOTUNER_AVAILABILITY )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->availability() );
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
bool isBandSupported( QRadioTuner::Band b ) const
*/
HB_FUNC_STATIC( QRADIOTUNER_ISBANDSUPPORTED )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->isBandSupported( (QRadioTuner::Band) hb_parni(1) ) );
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
int frequencyStep( QRadioTuner::Band band ) const
*/
HB_FUNC_STATIC( QRADIOTUNER_FREQUENCYSTEP )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RINT( obj->frequencyStep( (QRadioTuner::Band) hb_parni(1) ) );
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
QRadioTuner::Error error() const
*/
HB_FUNC_STATIC( QRADIOTUNER_ERROR )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
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
QString errorString() const
*/
HB_FUNC_STATIC( QRADIOTUNER_ERRORSTRING )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
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
void searchForward()
*/
HB_FUNC_STATIC( QRADIOTUNER_SEARCHFORWARD )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->searchForward();
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
void searchBackward()
*/
HB_FUNC_STATIC( QRADIOTUNER_SEARCHBACKWARD )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->searchBackward();
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
void searchAllStations( QRadioTuner::SearchMode searchMode = QRadioTuner::SearchFast )
*/
HB_FUNC_STATIC( QRADIOTUNER_SEARCHALLSTATIONS )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISNUM(1)||HB_ISNIL(1)) )
    {
#endif
      obj->searchAllStations( HB_ISNIL(1)? (QRadioTuner::SearchMode) QRadioTuner::SearchFast : (QRadioTuner::SearchMode) hb_parni(1) );
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
void cancelSearch()
*/
HB_FUNC_STATIC( QRADIOTUNER_CANCELSEARCH )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->cancelSearch();
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
void start()
*/
HB_FUNC_STATIC( QRADIOTUNER_START )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->start();
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
void stop()
*/
HB_FUNC_STATIC( QRADIOTUNER_STOP )
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop();
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

void QRadioTunerSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QRADIOTUNER_ONSTATECHANGED )
{
  QRadioTunerSlots_connect_signal("stateChanged(QRadioTuner::State)", "stateChanged(QRadioTuner::State)");
}

HB_FUNC_STATIC( QRADIOTUNER_ONBANDCHANGED )
{
  QRadioTunerSlots_connect_signal("bandChanged(QRadioTuner::Band)", "bandChanged(QRadioTuner::Band)");
}

HB_FUNC_STATIC( QRADIOTUNER_ONFREQUENCYCHANGED )
{
  QRadioTunerSlots_connect_signal("frequencyChanged(int)", "frequencyChanged(int)");
}

HB_FUNC_STATIC( QRADIOTUNER_ONSTEREOSTATUSCHANGED )
{
  QRadioTunerSlots_connect_signal("stereoStatusChanged(bool)", "stereoStatusChanged(bool)");
}

HB_FUNC_STATIC( QRADIOTUNER_ONSEARCHINGCHANGED )
{
  QRadioTunerSlots_connect_signal("searchingChanged(bool)", "searchingChanged(bool)");
}

HB_FUNC_STATIC( QRADIOTUNER_ONSIGNALSTRENGTHCHANGED )
{
  QRadioTunerSlots_connect_signal("signalStrengthChanged(int)", "signalStrengthChanged(int)");
}

HB_FUNC_STATIC( QRADIOTUNER_ONVOLUMECHANGED )
{
  QRadioTunerSlots_connect_signal("volumeChanged(int)", "volumeChanged(int)");
}

HB_FUNC_STATIC( QRADIOTUNER_ONMUTEDCHANGED )
{
  QRadioTunerSlots_connect_signal("mutedChanged(bool)", "mutedChanged(bool)");
}

HB_FUNC_STATIC( QRADIOTUNER_ONSTATIONFOUND )
{
  QRadioTunerSlots_connect_signal("stationFound(int,QString)", "stationFound(int,QString)");
}

HB_FUNC_STATIC( QRADIOTUNER_ONANTENNACONNECTEDCHANGED )
{
  QRadioTunerSlots_connect_signal("antennaConnectedChanged(bool)", "antennaConnectedChanged(bool)");
}

HB_FUNC_STATIC( QRADIOTUNER_ONERROR )
{
  QRadioTunerSlots_connect_signal("error(QRadioTuner::Error)", "error(QRadioTuner::Error)");
}

#pragma ENDDUMP
