/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCustom3DVolumeSlots.h"

QCustom3DVolumeSlots::QCustom3DVolumeSlots(QObject *parent) : QObject(parent)
{
}

QCustom3DVolumeSlots::~QCustom3DVolumeSlots()
{
}
void QCustom3DVolumeSlots::alphaMultiplierChanged( float mult )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "alphaMultiplierChanged(float)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DVOLUME" );
    PHB_ITEM pmult = hb_itemPutND( NULL, mult );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmult );
    hb_itemRelease( psender );
    hb_itemRelease( pmult );
  }
}
void QCustom3DVolumeSlots::colorTableChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "colorTableChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DVOLUME" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QCustom3DVolumeSlots::drawSliceFramesChanged( bool enabled )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "drawSliceFramesChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DVOLUME" );
    PHB_ITEM penabled = hb_itemPutL( NULL, enabled );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, penabled );
    hb_itemRelease( psender );
    hb_itemRelease( penabled );
  }
}
void QCustom3DVolumeSlots::drawSlicesChanged( bool enabled )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "drawSlicesChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DVOLUME" );
    PHB_ITEM penabled = hb_itemPutL( NULL, enabled );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, penabled );
    hb_itemRelease( psender );
    hb_itemRelease( penabled );
  }
}
void QCustom3DVolumeSlots::preserveOpacityChanged( bool enabled )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "preserveOpacityChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DVOLUME" );
    PHB_ITEM penabled = hb_itemPutL( NULL, enabled );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, penabled );
    hb_itemRelease( psender );
    hb_itemRelease( penabled );
  }
}
void QCustom3DVolumeSlots::sliceFrameColorChanged( const QColor & color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sliceFrameColorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DVOLUME" );
    PHB_ITEM pcolor = Signals_return_object( (void *) &color, "QCOLOR" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
void QCustom3DVolumeSlots::sliceFrameGapsChanged( const QVector3D & values )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sliceFrameGapsChanged(QVector3D)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DVOLUME" );
    PHB_ITEM pvalues = Signals_return_object( (void *) &values, "QVECTOR3D" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalues );
    hb_itemRelease( psender );
    hb_itemRelease( pvalues );
  }
}
void QCustom3DVolumeSlots::sliceFrameThicknessesChanged( const QVector3D & values )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sliceFrameThicknessesChanged(QVector3D)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DVOLUME" );
    PHB_ITEM pvalues = Signals_return_object( (void *) &values, "QVECTOR3D" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalues );
    hb_itemRelease( psender );
    hb_itemRelease( pvalues );
  }
}
void QCustom3DVolumeSlots::sliceFrameWidthsChanged( const QVector3D & values )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sliceFrameWidthsChanged(QVector3D)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DVOLUME" );
    PHB_ITEM pvalues = Signals_return_object( (void *) &values, "QVECTOR3D" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalues );
    hb_itemRelease( psender );
    hb_itemRelease( pvalues );
  }
}
void QCustom3DVolumeSlots::sliceIndexXChanged( int value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sliceIndexXChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DVOLUME" );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}
void QCustom3DVolumeSlots::sliceIndexYChanged( int value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sliceIndexYChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DVOLUME" );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}
void QCustom3DVolumeSlots::sliceIndexZChanged( int value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sliceIndexZChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DVOLUME" );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}
void QCustom3DVolumeSlots::textureDepthChanged( int value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "textureDepthChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DVOLUME" );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}
void QCustom3DVolumeSlots::textureFormatChanged( QImage::Format format )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "textureFormatChanged(QImage::Format)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DVOLUME" );
    PHB_ITEM pformat = hb_itemPutNI( NULL, (int) format );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pformat );
    hb_itemRelease( psender );
    hb_itemRelease( pformat );
  }
}
void QCustom3DVolumeSlots::textureHeightChanged( int value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "textureHeightChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DVOLUME" );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}
void QCustom3DVolumeSlots::textureWidthChanged( int value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "textureWidthChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DVOLUME" );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}
void QCustom3DVolumeSlots::useHighDefShaderChanged( bool enabled )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "useHighDefShaderChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QCUSTOM3DVOLUME" );
    PHB_ITEM penabled = hb_itemPutL( NULL, enabled );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, penabled );
    hb_itemRelease( psender );
    hb_itemRelease( penabled );
  }
}

void QCustom3DVolumeSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QCustom3DVolume * obj = (QCustom3DVolume *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QCustom3DVolumeSlots * s = QCoreApplication::instance()->findChild<QCustom3DVolumeSlots *>();

    if( s == NULL )
    {
      s = new QCustom3DVolumeSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
