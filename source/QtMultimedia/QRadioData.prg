/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIAOBJECT
#endif

CLASS QRadioData INHERIT QObject,QMediaBindableInterface

   METHOD new
   METHOD delete
   METHOD stationId
   METHOD programType
   METHOD programTypeName
   METHOD stationName
   METHOD radioText
   METHOD isAlternativeFrequenciesEnabled
   METHOD setAlternativeFrequenciesEnabled
   METHOD availability
   METHOD mediaObject
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

PROCEDURE destroyObject () CLASS QRadioData
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QRadioData>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QRadioData>
#endif

/*
explicit QRadioData(QMediaObject *mediaObject, QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QRADIODATA_NEW )
{
  if( ISBETWEEN(1,2) && ISQMEDIAOBJECT(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QRadioData * o = new QRadioData ( PQMEDIAOBJECT(1), OPQOBJECT(2,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QRadioData()
*/
HB_FUNC_STATIC( QRADIODATA_DELETE )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString stationId() const
*/
HB_FUNC_STATIC( QRADIODATA_STATIONID )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();

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
ProgramType programType() const
*/
HB_FUNC_STATIC( QRADIODATA_PROGRAMTYPE )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString programTypeName() const
*/
HB_FUNC_STATIC( QRADIODATA_PROGRAMTYPENAME )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString stationName() const
*/
HB_FUNC_STATIC( QRADIODATA_STATIONNAME )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString radioText() const
*/
HB_FUNC_STATIC( QRADIODATA_RADIOTEXT )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool isAlternativeFrequenciesEnabled() const
*/
HB_FUNC_STATIC( QRADIODATA_ISALTERNATIVEFREQUENCIESENABLED )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setAlternativeFrequenciesEnabled(bool enabled)
*/
HB_FUNC_STATIC( QRADIODATA_SETALTERNATIVEFREQUENCIESENABLED )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();

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
QMultimedia::AvailabilityStatus availability() const
*/
HB_FUNC_STATIC( QRADIODATA_AVAILABILITY )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->availability () );
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
QMediaObject *mediaObject() const override
*/
HB_FUNC_STATIC( QRADIODATA_MEDIAOBJECT )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMediaObject * ptr = obj->mediaObject ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QMEDIAOBJECT" );
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
Error error() const
*/
HB_FUNC_STATIC( QRADIODATA_ERROR )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString errorString() const
*/
HB_FUNC_STATIC( QRADIODATA_ERRORSTRING )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();

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

/*
bool setMediaObject(QMediaObject *) override [protected]
*/

void QRadioDataSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QRADIODATA_ONSTATIONIDCHANGED )
{
  QRadioDataSlots_connect_signal( "stationIdChanged(QString)", "stationIdChanged(QString)" );
}

HB_FUNC_STATIC( QRADIODATA_ONPROGRAMTYPECHANGED )
{
  QRadioDataSlots_connect_signal( "programTypeChanged(QRadioData::ProgramType)", "programTypeChanged(QRadioData::ProgramType)" );
}

HB_FUNC_STATIC( QRADIODATA_ONPROGRAMTYPENAMECHANGED )
{
  QRadioDataSlots_connect_signal( "programTypeNameChanged(QString)", "programTypeNameChanged(QString)" );
}

HB_FUNC_STATIC( QRADIODATA_ONSTATIONNAMECHANGED )
{
  QRadioDataSlots_connect_signal( "stationNameChanged(QString)", "stationNameChanged(QString)" );
}

HB_FUNC_STATIC( QRADIODATA_ONRADIOTEXTCHANGED )
{
  QRadioDataSlots_connect_signal( "radioTextChanged(QString)", "radioTextChanged(QString)" );
}

HB_FUNC_STATIC( QRADIODATA_ONALTERNATIVEFREQUENCIESENABLEDCHANGED )
{
  QRadioDataSlots_connect_signal( "alternativeFrequenciesEnabledChanged(bool)", "alternativeFrequenciesEnabledChanged(bool)" );
}

HB_FUNC_STATIC( QRADIODATA_ONERROR )
{
  QRadioDataSlots_connect_signal( "error(QRadioData::Error)", "error(QRadioData::Error)" );
}

#pragma ENDDUMP
