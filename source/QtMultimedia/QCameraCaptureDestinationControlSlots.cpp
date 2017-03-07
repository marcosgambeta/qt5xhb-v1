/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QCameraCaptureDestinationControlSlots.h"


static SlotsQCameraCaptureDestinationControl * s = NULL;

SlotsQCameraCaptureDestinationControl::SlotsQCameraCaptureDestinationControl(QObject *parent) : QObject(parent)
{
}

SlotsQCameraCaptureDestinationControl::~SlotsQCameraCaptureDestinationControl()
{
}

void SlotsQCameraCaptureDestinationControl::captureDestinationChanged(QCameraImageCapture::CaptureDestinations destination)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "captureDestinationChanged(QCameraImageCapture::CaptureDestinations)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdestination = hb_itemPutNI( NULL, (int) destination );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdestination );
    hb_itemRelease( psender );
    hb_itemRelease( pdestination );
  }
}

HB_FUNC( QCAMERACAPTUREDESTINATIONCONTROL_ONCAPTUREDESTINATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraCaptureDestinationControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "captureDestinationChanged(QCameraImageCapture::CaptureDestinations)", "captureDestinationChanged(QCameraImageCapture::CaptureDestinations)" ) );
}
