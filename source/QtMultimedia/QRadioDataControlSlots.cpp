/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QRadioDataControlSlots.h"

QRadioDataControlSlots::QRadioDataControlSlots( QObject *parent ) : QObject( parent )
{
}

QRadioDataControlSlots::~QRadioDataControlSlots()
{
}

void QRadioDataControlSlots::stationIdChanged( QString stationId )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "stationIdChanged(QString)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QRADIODATACONTROL");
    PHB_ITEM pstationId = hb_itemPutC( NULL, (const char *) stationId.toLatin1().data() );

    hb_vmEvalBlockV( cb, 2, psender, pstationId );

    hb_itemRelease( psender );
    hb_itemRelease( pstationId );
  }
}

void QRadioDataControlSlots::programTypeChanged( QRadioData::ProgramType programType )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "programTypeChanged(QRadioData::ProgramType)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QRADIODATACONTROL");
    PHB_ITEM pprogramType = hb_itemPutNI( NULL, (int) programType );

    hb_vmEvalBlockV( cb, 2, psender, pprogramType );

    hb_itemRelease( psender );
    hb_itemRelease( pprogramType );
  }
}

void QRadioDataControlSlots::programTypeNameChanged( QString programTypeName )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "programTypeNameChanged(QString)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QRADIODATACONTROL");
    PHB_ITEM pprogramTypeName = hb_itemPutC( NULL, (const char *) programTypeName.toLatin1().data() );

    hb_vmEvalBlockV( cb, 2, psender, pprogramTypeName );

    hb_itemRelease( psender );
    hb_itemRelease( pprogramTypeName );
  }
}

void QRadioDataControlSlots::stationNameChanged( QString stationName )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "stationNameChanged(QString)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QRADIODATACONTROL");
    PHB_ITEM pstationName = hb_itemPutC( NULL, (const char *) stationName.toLatin1().data() );

    hb_vmEvalBlockV( cb, 2, psender, pstationName );

    hb_itemRelease( psender );
    hb_itemRelease( pstationName );
  }
}

void QRadioDataControlSlots::radioTextChanged( QString radioText )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "radioTextChanged(QString)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QRADIODATACONTROL");
    PHB_ITEM pradioText = hb_itemPutC( NULL, (const char *) radioText.toLatin1().data() );

    hb_vmEvalBlockV( cb, 2, psender, pradioText );

    hb_itemRelease( psender );
    hb_itemRelease( pradioText );
  }
}

void QRadioDataControlSlots::alternativeFrequenciesEnabledChanged( bool enabled )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "alternativeFrequenciesEnabledChanged(bool)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QRADIODATACONTROL");
    PHB_ITEM penabled = hb_itemPutL( NULL, enabled );

    hb_vmEvalBlockV( cb, 2, psender, penabled );

    hb_itemRelease( psender );
    hb_itemRelease( penabled );
  }
}

void QRadioDataControlSlots::error( QRadioData::Error err )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "error(QRadioData::Error)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QRADIODATACONTROL");
    PHB_ITEM perr = hb_itemPutNI( NULL, (int) err );

    hb_vmEvalBlockV( cb, 2, psender, perr );

    hb_itemRelease( psender );
    hb_itemRelease( perr );
  }
}

void QRadioDataControlSlots_connect_signal( const QString & signal, const QString & slot )
{
  QRadioDataControl * obj = (QRadioDataControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QRadioDataControlSlots * s = QCoreApplication::instance()->findChild<QRadioDataControlSlots*>();

    if( s == NULL )
    {
      s = new QRadioDataControlSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
