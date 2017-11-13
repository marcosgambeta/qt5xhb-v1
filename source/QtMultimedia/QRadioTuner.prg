/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRADIODATA
#endif

CLASS QRadioTuner INHERIT QMediaObject

   METHOD new
   METHOD delete
   METHOD availability
   METHOD state
   METHOD band
   METHOD isBandSupported
   METHOD frequency
   METHOD frequencyStep
   METHOD isStereo
   METHOD setStereoMode
   METHOD stereoMode
   METHOD signalStrength
   METHOD volume
   METHOD isMuted
   METHOD isSearching
   METHOD isAntennaConnected
   METHOD error
   METHOD errorString
   METHOD radioData
   METHOD searchForward
   METHOD searchBackward
   METHOD searchAllStations
   METHOD cancelSearch
   METHOD setBand
   METHOD setFrequency
   METHOD setVolume
   METHOD setMuted
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

PROCEDURE destroyObject () CLASS QRadioTuner
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QRadioTuner>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QRadioTuner>
#endif

/*
QRadioTuner(QObject *parent = 0)
*/
HB_FUNC_STATIC( QRADIOTUNER_NEW )
{
  QRadioTuner * o = new QRadioTuner ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QRADIOTUNER_DELETE )
{
  QRadioTuner * obj = (QRadioTuner *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QMultimedia::AvailabilityStatus availability() const
*/
HB_FUNC_STATIC( QRADIOTUNER_AVAILABILITY )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->availability () );
  }
}


/*
State state() const
*/
HB_FUNC_STATIC( QRADIOTUNER_STATE )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state () );
  }
}


/*
Band band() const
*/
HB_FUNC_STATIC( QRADIOTUNER_BAND )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->band () );
  }
}


/*
bool isBandSupported(Band b) const
*/
HB_FUNC_STATIC( QRADIOTUNER_ISBANDSUPPORTED )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isBandSupported ( (QRadioTuner::Band) hb_parni(1) ) );
  }
}


/*
int frequency() const
*/
HB_FUNC_STATIC( QRADIOTUNER_FREQUENCY )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->frequency () );
  }
}


/*
int frequencyStep(Band band) const
*/
HB_FUNC_STATIC( QRADIOTUNER_FREQUENCYSTEP )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->frequencyStep ( (QRadioTuner::Band) hb_parni(1) ) );
  }
}



/*
bool isStereo() const
*/
HB_FUNC_STATIC( QRADIOTUNER_ISSTEREO )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isStereo () );
  }
}


/*
void setStereoMode(QRadioTuner::StereoMode mode)
*/
HB_FUNC_STATIC( QRADIOTUNER_SETSTEREOMODE )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStereoMode ( (QRadioTuner::StereoMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
StereoMode stereoMode() const
*/
HB_FUNC_STATIC( QRADIOTUNER_STEREOMODE )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->stereoMode () );
  }
}


/*
int signalStrength() const
*/
HB_FUNC_STATIC( QRADIOTUNER_SIGNALSTRENGTH )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->signalStrength () );
  }
}


/*
int volume() const
*/
HB_FUNC_STATIC( QRADIOTUNER_VOLUME )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->volume () );
  }
}


/*
bool isMuted() const
*/
HB_FUNC_STATIC( QRADIOTUNER_ISMUTED )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isMuted () );
  }
}


/*
bool isSearching() const
*/
HB_FUNC_STATIC( QRADIOTUNER_ISSEARCHING )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isSearching () );
  }
}


/*
bool isAntennaConnected() const
*/
HB_FUNC_STATIC( QRADIOTUNER_ISANTENNACONNECTED )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isAntennaConnected () );
  }
}


/*
Error error() const
*/
HB_FUNC_STATIC( QRADIOTUNER_ERROR )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QRADIOTUNER_ERRORSTRING )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}


/*
QRadioData *radioData() const
*/
HB_FUNC_STATIC( QRADIOTUNER_RADIODATA )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRadioData * ptr = obj->radioData ();
    _qt5xhb_createReturnClass ( ptr, "QRADIODATA" );
  }
}


/*
void searchForward()
*/
HB_FUNC_STATIC( QRADIOTUNER_SEARCHFORWARD )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->searchForward ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void searchBackward()
*/
HB_FUNC_STATIC( QRADIOTUNER_SEARCHBACKWARD )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->searchBackward ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void searchAllStations(QRadioTuner::SearchMode searchMode = QRadioTuner::SearchFast)
*/
HB_FUNC_STATIC( QRADIOTUNER_SEARCHALLSTATIONS )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QRadioTuner::SearchFast : hb_parni(1);
    obj->searchAllStations ( (QRadioTuner::SearchMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void cancelSearch()
*/
HB_FUNC_STATIC( QRADIOTUNER_CANCELSEARCH )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->cancelSearch ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBand(Band band)
*/
HB_FUNC_STATIC( QRADIOTUNER_SETBAND )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBand ( (QRadioTuner::Band) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFrequency(int frequency)
*/
HB_FUNC_STATIC( QRADIOTUNER_SETFREQUENCY )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFrequency ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVolume(int volume)
*/
HB_FUNC_STATIC( QRADIOTUNER_SETVOLUME )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVolume ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMuted(bool muted)
*/
HB_FUNC_STATIC( QRADIOTUNER_SETMUTED )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMuted ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void start()
*/
HB_FUNC_STATIC( QRADIOTUNER_START )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->start ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop()
*/
HB_FUNC_STATIC( QRADIOTUNER_STOP )
{
  QRadioTuner * obj = (QRadioTuner *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
