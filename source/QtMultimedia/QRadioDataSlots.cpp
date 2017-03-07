/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QRadioDataSlots.h"


static SlotsQRadioData * s = NULL;

SlotsQRadioData::SlotsQRadioData(QObject *parent) : QObject(parent)
{
}

SlotsQRadioData::~SlotsQRadioData()
{
}

void SlotsQRadioData::stationIdChanged(QString stationId)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stationIdChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstationId = hb_itemPutC( NULL, (const char *) stationId.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstationId );
    hb_itemRelease( psender );
    hb_itemRelease( pstationId );
  }
}

void SlotsQRadioData::programTypeChanged(QRadioData::ProgramType programType)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "programTypeChanged(QRadioData::ProgramType)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pprogramType = hb_itemPutNI( NULL, (int) programType );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pprogramType );
    hb_itemRelease( psender );
    hb_itemRelease( pprogramType );
  }
}

void SlotsQRadioData::programTypeNameChanged(QString programTypeName)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "programTypeNameChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pprogramTypeName = hb_itemPutC( NULL, (const char *) programTypeName.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pprogramTypeName );
    hb_itemRelease( psender );
    hb_itemRelease( pprogramTypeName );
  }
}

void SlotsQRadioData::stationNameChanged(QString stationName)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stationNameChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstationName = hb_itemPutC( NULL, (const char *) stationName.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstationName );
    hb_itemRelease( psender );
    hb_itemRelease( pstationName );
  }
}

void SlotsQRadioData::radioTextChanged(QString radioText)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "radioTextChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pradioText = hb_itemPutC( NULL, (const char *) radioText.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pradioText );
    hb_itemRelease( psender );
    hb_itemRelease( pradioText );
  }
}

void SlotsQRadioData::alternativeFrequenciesEnabledChanged(bool enabled)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "alternativeFrequenciesEnabledChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM penabled = hb_itemPutL( NULL, enabled );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, penabled );
    hb_itemRelease( psender );
    hb_itemRelease( penabled );
  }
}

void SlotsQRadioData::error(QRadioData::Error error)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QRadioData::Error)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}

HB_FUNC( QRADIODATA_ONSTATIONIDCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRadioData(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stationIdChanged(QString)", "stationIdChanged(QString)" ) );
}

HB_FUNC( QRADIODATA_ONPROGRAMTYPECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRadioData(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "programTypeChanged(QRadioData::ProgramType)", "programTypeChanged(QRadioData::ProgramType)" ) );
}

HB_FUNC( QRADIODATA_ONPROGRAMTYPENAMECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRadioData(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "programTypeNameChanged(QString)", "programTypeNameChanged(QString)" ) );
}

HB_FUNC( QRADIODATA_ONSTATIONNAMECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRadioData(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stationNameChanged(QString)", "stationNameChanged(QString)" ) );
}

HB_FUNC( QRADIODATA_ONRADIOTEXTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRadioData(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "radioTextChanged(QString)", "radioTextChanged(QString)" ) );
}

HB_FUNC( QRADIODATA_ONALTERNATIVEFREQUENCIESENABLEDCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRadioData(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "alternativeFrequenciesEnabledChanged(bool)", "alternativeFrequenciesEnabledChanged(bool)" ) );
}

HB_FUNC( QRADIODATA_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQRadioData(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QRadioData::Error)", "error(QRadioData::Error)" ) );
}
