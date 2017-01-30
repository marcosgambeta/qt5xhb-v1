/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QRadioTunerControl INHERIT QMediaControl

   DATA class_id INIT Class_Id_QRadioTunerControl
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD state
   METHOD band
   METHOD setBand
   METHOD isBandSupported
   METHOD frequency
   METHOD frequencyStep
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
   METHOD searchForward
   METHOD searchBackward
   METHOD searchAllStations
   METHOD cancelSearch
   METHOD start
   METHOD stop
   METHOD error
   METHOD errorString
   METHOD onStateChanged
   METHOD onBandChanged
   METHOD onFrequencyChanged
   METHOD onStereoStatusChanged
   METHOD onSearchingChanged
   METHOD onSignalStrengthChanged
   METHOD onVolumeChanged
   METHOD onMutedChanged
   METHOD onError
   METHOD onStationFound
   METHOD onAntennaConnectedChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRadioTunerControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QRadioTunerControl>
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
#include <QRadioTunerControl>
#endif
#endif


HB_FUNC_STATIC( QRADIOTUNERCONTROL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QRadioTunerControl * obj = (QRadioTunerControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QRadioTuner::State state() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_STATE )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->state (  );
    hb_retni( i );
  }
}


/*
virtual QRadioTuner::Band band() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_BAND )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->band (  );
    hb_retni( i );
  }
}


/*
virtual void setBand(QRadioTuner::Band b) = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SETBAND )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setBand (  (QRadioTuner::Band) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isBandSupported(QRadioTuner::Band b) const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_ISBANDSUPPORTED )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isBandSupported (  (QRadioTuner::Band) par1 ) );
  }
}


/*
virtual int frequency() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_FREQUENCY )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->frequency (  ) );
  }
}


/*
virtual int frequencyStep(QRadioTuner::Band b) const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_FREQUENCYSTEP )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( obj->frequencyStep (  (QRadioTuner::Band) par1 ) );
  }
}



/*
virtual void setFrequency(int frequency) = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SETFREQUENCY )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFrequency ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isStereo() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_ISSTEREO )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isStereo (  ) );
  }
}


/*
virtual QRadioTuner::StereoMode stereoMode() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_STEREOMODE )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->stereoMode (  );
    hb_retni( i );
  }
}


/*
virtual void setStereoMode(QRadioTuner::StereoMode mode) = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SETSTEREOMODE )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setStereoMode (  (QRadioTuner::StereoMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int signalStrength() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SIGNALSTRENGTH )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->signalStrength (  ) );
  }
}


/*
virtual int volume() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_VOLUME )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->volume (  ) );
  }
}


/*
virtual void setVolume(int volume) = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SETVOLUME )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVolume ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isMuted() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_ISMUTED )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isMuted (  ) );
  }
}


/*
virtual void setMuted(bool muted) = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SETMUTED )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMuted ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isSearching() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_ISSEARCHING )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSearching (  ) );
  }
}


/*
virtual bool isAntennaConnected() const
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_ISANTENNACONNECTED )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAntennaConnected (  ) );
  }
}


/*
virtual void searchForward() = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SEARCHFORWARD )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->searchForward (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void searchBackward() = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SEARCHBACKWARD )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->searchBackward (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void searchAllStations(QRadioTuner::SearchMode searchMode = QRadioTuner::SearchFast) = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SEARCHALLSTATIONS )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QRadioTuner::SearchFast : hb_parni(1);
    obj->searchAllStations (  (QRadioTuner::SearchMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void cancelSearch() = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_CANCELSEARCH )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->cancelSearch (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void start() = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_START )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->start (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void stop() = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_STOP )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QRadioTuner::Error error() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_ERROR )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->error (  );
    hb_retni( i );
  }
}


/*
virtual QString errorString() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_ERRORSTRING )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}




#pragma ENDDUMP
