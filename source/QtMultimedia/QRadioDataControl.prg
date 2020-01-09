/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

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

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QRadioDataControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QRadioDataControl>
#endif

/*
explicit QRadioDataControl(QObject *parent = Q_NULLPTR) [protected]
*/

/*
~QRadioDataControl()
*/
HB_FUNC_STATIC( QRADIODATACONTROL_DELETE )
{
  QRadioDataControl * obj = (QRadioDataControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->stationId () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->programType () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->programTypeName () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->stationName () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->radioText () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setAlternativeFrequenciesEnabled ( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isAlternativeFrequenciesEnabled () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

void QRadioDataControlSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QRADIODATACONTROL_ONSTATIONIDCHANGED )
{
  QRadioDataControlSlots_connect_signal( "stationIdChanged(QString)", "stationIdChanged(QString)" );
}

HB_FUNC_STATIC( QRADIODATACONTROL_ONPROGRAMTYPECHANGED )
{
  QRadioDataControlSlots_connect_signal( "programTypeChanged(QRadioData::ProgramType)", "programTypeChanged(QRadioData::ProgramType)" );
}

HB_FUNC_STATIC( QRADIODATACONTROL_ONPROGRAMTYPENAMECHANGED )
{
  QRadioDataControlSlots_connect_signal( "programTypeNameChanged(QString)", "programTypeNameChanged(QString)" );
}

HB_FUNC_STATIC( QRADIODATACONTROL_ONSTATIONNAMECHANGED )
{
  QRadioDataControlSlots_connect_signal( "stationNameChanged(QString)", "stationNameChanged(QString)" );
}

HB_FUNC_STATIC( QRADIODATACONTROL_ONRADIOTEXTCHANGED )
{
  QRadioDataControlSlots_connect_signal( "radioTextChanged(QString)", "radioTextChanged(QString)" );
}

HB_FUNC_STATIC( QRADIODATACONTROL_ONALTERNATIVEFREQUENCIESENABLEDCHANGED )
{
  QRadioDataControlSlots_connect_signal( "alternativeFrequenciesEnabledChanged(bool)", "alternativeFrequenciesEnabledChanged(bool)" );
}

HB_FUNC_STATIC( QRADIODATACONTROL_ONERROR )
{
  QRadioDataControlSlots_connect_signal( "error(QRadioData::Error)", "error(QRadioData::Error)" );
}

#pragma ENDDUMP
