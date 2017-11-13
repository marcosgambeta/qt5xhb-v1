/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QRadioDataControl INHERIT QMediaControl

   METHOD delete
   METHOD stationId
   METHOD programType
   METHOD programTypeName
   METHOD stationName
   METHOD radioText
   METHOD setAlternativeFrequenciesEnabled
   METHOD isAlternativeFrequenciesEnabled
   METHOD error
   METHOD errorString

   METHOD onStationIdChanged
   METHOD onProgramTypeChanged
   METHOD onProgramTypeNameChanged
   METHOD onStationNameChanged
   METHOD onRadioTextChanged
   METHOD onAlternativeFrequenciesEnabledChanged
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRadioDataControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QRadioDataControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QRadioDataControl>
#endif


HB_FUNC_STATIC( QRADIODATACONTROL_DELETE )
{
  QRadioDataControl * obj = (QRadioDataControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QString stationId() const = 0
*/
HB_FUNC_STATIC( QRADIODATACONTROL_STATIONID )
{
  QRadioDataControl * obj = (QRadioDataControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->stationId () );
  }
}


/*
virtual QRadioData::ProgramType programType() const = 0
*/
HB_FUNC_STATIC( QRADIODATACONTROL_PROGRAMTYPE )
{
  QRadioDataControl * obj = (QRadioDataControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->programType () );
  }
}


/*
virtual QString programTypeName() const = 0
*/
HB_FUNC_STATIC( QRADIODATACONTROL_PROGRAMTYPENAME )
{
  QRadioDataControl * obj = (QRadioDataControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->programTypeName () );
  }
}


/*
virtual QString stationName() const = 0
*/
HB_FUNC_STATIC( QRADIODATACONTROL_STATIONNAME )
{
  QRadioDataControl * obj = (QRadioDataControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->stationName () );
  }
}


/*
virtual QString radioText() const = 0
*/
HB_FUNC_STATIC( QRADIODATACONTROL_RADIOTEXT )
{
  QRadioDataControl * obj = (QRadioDataControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->radioText () );
  }
}


/*
virtual void setAlternativeFrequenciesEnabled(bool enabled) = 0
*/
HB_FUNC_STATIC( QRADIODATACONTROL_SETALTERNATIVEFREQUENCIESENABLED )
{
  QRadioDataControl * obj = (QRadioDataControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAlternativeFrequenciesEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isAlternativeFrequenciesEnabled() const = 0
*/
HB_FUNC_STATIC( QRADIODATACONTROL_ISALTERNATIVEFREQUENCIESENABLED )
{
  QRadioDataControl * obj = (QRadioDataControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isAlternativeFrequenciesEnabled () );
  }
}


/*
virtual QRadioData::Error error() const = 0
*/
HB_FUNC_STATIC( QRADIODATACONTROL_ERROR )
{
  QRadioDataControl * obj = (QRadioDataControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
}


/*
virtual QString errorString() const = 0
*/
HB_FUNC_STATIC( QRADIODATACONTROL_ERRORSTRING )
{
  QRadioDataControl * obj = (QRadioDataControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}




#pragma ENDDUMP
