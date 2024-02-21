/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "Q3DSceneSlots.hpp"

Q3DSceneSlots::Q3DSceneSlots( QObject *parent ) : QObject( parent )
{
}

Q3DSceneSlots::~Q3DSceneSlots()
{
}

void Q3DSceneSlots::activeCameraChanged( Q3DCamera * camera )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "activeCameraChanged(Q3DCamera*)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DSCENE");
    PHB_ITEM pcamera = Qt5xHb::Signals_return_qobject(camera, "Q3DCAMERA");

    hb_vmEvalBlockV(cb, 2, psender, pcamera);

    hb_itemRelease(psender);
    hb_itemRelease( pcamera );
  }
}

void Q3DSceneSlots::activeLightChanged( Q3DLight * light )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "activeLightChanged(Q3DLight*)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DSCENE");
    PHB_ITEM plight = Qt5xHb::Signals_return_qobject(light, "Q3DLIGHT");

    hb_vmEvalBlockV(cb, 2, psender, plight);

    hb_itemRelease(psender);
    hb_itemRelease( plight );
  }
}

void Q3DSceneSlots::devicePixelRatioChanged( float pixelRatio )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "devicePixelRatioChanged(float)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DSCENE");
    PHB_ITEM ppixelRatio = hb_itemPutND( NULL, pixelRatio );

    hb_vmEvalBlockV(cb, 2, psender, ppixelRatio);

    hb_itemRelease(psender);
    hb_itemRelease( ppixelRatio );
  }
}

void Q3DSceneSlots::graphPositionQueryChanged( const QPoint & position )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "graphPositionQueryChanged(QPoint)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DSCENE");
    PHB_ITEM pposition = Qt5xHb::Signals_return_object( (void *) &position, "QPOINT");

    hb_vmEvalBlockV(cb, 2, psender, pposition);

    hb_itemRelease(psender);
    hb_itemRelease( pposition );
  }
}

void Q3DSceneSlots::primarySubViewportChanged( const QRect & subViewport )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "primarySubViewportChanged(QRect)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DSCENE");
    PHB_ITEM psubViewport = Qt5xHb::Signals_return_object( (void *) &subViewport, "QRECT");

    hb_vmEvalBlockV(cb, 2, psender, psubViewport);

    hb_itemRelease(psender);
    hb_itemRelease( psubViewport );
  }
}

void Q3DSceneSlots::secondarySubviewOnTopChanged( bool isSecondaryOnTop )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "secondarySubviewOnTopChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DSCENE");
    PHB_ITEM pisSecondaryOnTop = hb_itemPutL( NULL, isSecondaryOnTop );

    hb_vmEvalBlockV(cb, 2, psender, pisSecondaryOnTop);

    hb_itemRelease(psender);
    hb_itemRelease( pisSecondaryOnTop );
  }
}

void Q3DSceneSlots::secondarySubViewportChanged( const QRect & subViewport )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "secondarySubViewportChanged(QRect)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DSCENE");
    PHB_ITEM psubViewport = Qt5xHb::Signals_return_object( (void *) &subViewport, "QRECT");

    hb_vmEvalBlockV(cb, 2, psender, psubViewport);

    hb_itemRelease(psender);
    hb_itemRelease( psubViewport );
  }
}

void Q3DSceneSlots::selectionQueryPositionChanged( const QPoint & position )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "selectionQueryPositionChanged(QPoint)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DSCENE");
    PHB_ITEM pposition = Qt5xHb::Signals_return_object( (void *) &position, "QPOINT");

    hb_vmEvalBlockV(cb, 2, psender, pposition);

    hb_itemRelease(psender);
    hb_itemRelease( pposition );
  }
}

void Q3DSceneSlots::slicingActiveChanged( bool isSlicingActive )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "slicingActiveChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DSCENE");
    PHB_ITEM pisSlicingActive = hb_itemPutL( NULL, isSlicingActive );

    hb_vmEvalBlockV(cb, 2, psender, pisSlicingActive);

    hb_itemRelease(psender);
    hb_itemRelease( pisSlicingActive );
  }
}

void Q3DSceneSlots::viewportChanged( const QRect & viewport )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "viewportChanged(QRect)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "Q3DSCENE");
    PHB_ITEM pviewport = Qt5xHb::Signals_return_object( (void *) &viewport, "QRECT");

    hb_vmEvalBlockV(cb, 2, psender, pviewport);

    hb_itemRelease(psender);
    hb_itemRelease( pviewport );
  }
}

void Q3DSceneSlots_connect_signal(const QString & signal, const QString & slot)
{
  Q3DScene * obj = (Q3DScene *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Q3DSceneSlots * s = QCoreApplication::instance()->findChild<Q3DSceneSlots*>();

    if( s == NULL )
    {
      s = new Q3DSceneSlots();
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
