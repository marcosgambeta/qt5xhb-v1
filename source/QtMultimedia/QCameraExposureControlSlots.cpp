/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QCameraExposureControlSlots.h"


static SlotsQCameraExposureControl * s = NULL;

SlotsQCameraExposureControl::SlotsQCameraExposureControl(QObject *parent) : QObject(parent)
{
}

SlotsQCameraExposureControl::~SlotsQCameraExposureControl()
{
}

void SlotsQCameraExposureControl::actualValueChanged(int parameter)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "actualValueChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparameter = hb_itemPutNI( NULL, parameter );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pparameter );
    hb_itemRelease( psender );
    hb_itemRelease( pparameter );
  }
}

void SlotsQCameraExposureControl::parameterRangeChanged(int parameter)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "parameterRangeChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparameter = hb_itemPutNI( NULL, parameter );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pparameter );
    hb_itemRelease( psender );
    hb_itemRelease( pparameter );
  }
}

void SlotsQCameraExposureControl::requestedValueChanged(int parameter)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "requestedValueChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparameter = hb_itemPutNI( NULL, parameter );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pparameter );
    hb_itemRelease( psender );
    hb_itemRelease( pparameter );
  }
}

HB_FUNC( QCAMERAEXPOSURECONTROL_ONACTUALVALUECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraExposureControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "actualValueChanged(int)", "actualValueChanged(int)" ) );
}

HB_FUNC( QCAMERAEXPOSURECONTROL_ONPARAMETERRANGECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraExposureControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "parameterRangeChanged(int)", "parameterRangeChanged(int)" ) );
}

HB_FUNC( QCAMERAEXPOSURECONTROL_ONREQUESTEDVALUECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraExposureControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "requestedValueChanged(int)", "requestedValueChanged(int)" ) );
}
