/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGamepadKeyNavigationSlots.h"

QGamepadKeyNavigationSlots::QGamepadKeyNavigationSlots( QObject *parent ) : QObject( parent )
{
}

QGamepadKeyNavigationSlots::~QGamepadKeyNavigationSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadKeyNavigationSlots::activeChanged( bool isActive )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "activeChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADKEYNAVIGATION" );
    PHB_ITEM pisActive = hb_itemPutL( NULL, isActive );

    hb_vmEvalBlockV( cb, 2, psender, pisActive );

    hb_itemRelease( psender );
    hb_itemRelease( pisActive );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadKeyNavigationSlots::gamepadChanged( QGamepad * gamepad )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "gamepadChanged(QGamepad*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADKEYNAVIGATION" );
    PHB_ITEM pgamepad = Qt5xHb::Signals_return_qobject( (QObject *) gamepad, "QGAMEPAD" );

    hb_vmEvalBlockV( cb, 2, psender, pgamepad );

    hb_itemRelease( psender );
    hb_itemRelease( pgamepad );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadKeyNavigationSlots::upKeyChanged( Qt::Key key )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "upKeyChanged(Qt::Key)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADKEYNAVIGATION" );
    PHB_ITEM pkey = hb_itemPutNI( NULL, (int) key );

    hb_vmEvalBlockV( cb, 2, psender, pkey );

    hb_itemRelease( psender );
    hb_itemRelease( pkey );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadKeyNavigationSlots::downKeyChanged( Qt::Key key )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "downKeyChanged(Qt::Key)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADKEYNAVIGATION" );
    PHB_ITEM pkey = hb_itemPutNI( NULL, (int) key );

    hb_vmEvalBlockV( cb, 2, psender, pkey );

    hb_itemRelease( psender );
    hb_itemRelease( pkey );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadKeyNavigationSlots::leftKeyChanged( Qt::Key key )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "leftKeyChanged(Qt::Key)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADKEYNAVIGATION" );
    PHB_ITEM pkey = hb_itemPutNI( NULL, (int) key );

    hb_vmEvalBlockV( cb, 2, psender, pkey );

    hb_itemRelease( psender );
    hb_itemRelease( pkey );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadKeyNavigationSlots::rightKeyChanged( Qt::Key key )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rightKeyChanged(Qt::Key)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADKEYNAVIGATION" );
    PHB_ITEM pkey = hb_itemPutNI( NULL, (int) key );

    hb_vmEvalBlockV( cb, 2, psender, pkey );

    hb_itemRelease( psender );
    hb_itemRelease( pkey );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadKeyNavigationSlots::buttonAKeyChanged( Qt::Key key )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "buttonAKeyChanged(Qt::Key)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADKEYNAVIGATION" );
    PHB_ITEM pkey = hb_itemPutNI( NULL, (int) key );

    hb_vmEvalBlockV( cb, 2, psender, pkey );

    hb_itemRelease( psender );
    hb_itemRelease( pkey );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadKeyNavigationSlots::buttonBKeyChanged( Qt::Key key )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "buttonBKeyChanged(Qt::Key)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADKEYNAVIGATION" );
    PHB_ITEM pkey = hb_itemPutNI( NULL, (int) key );

    hb_vmEvalBlockV( cb, 2, psender, pkey );

    hb_itemRelease( psender );
    hb_itemRelease( pkey );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadKeyNavigationSlots::buttonXKeyChanged( Qt::Key key )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "buttonXKeyChanged(Qt::Key)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADKEYNAVIGATION" );
    PHB_ITEM pkey = hb_itemPutNI( NULL, (int) key );

    hb_vmEvalBlockV( cb, 2, psender, pkey );

    hb_itemRelease( psender );
    hb_itemRelease( pkey );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadKeyNavigationSlots::buttonYKeyChanged( Qt::Key key )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "buttonYKeyChanged(Qt::Key)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADKEYNAVIGATION" );
    PHB_ITEM pkey = hb_itemPutNI( NULL, (int) key );

    hb_vmEvalBlockV( cb, 2, psender, pkey );

    hb_itemRelease( psender );
    hb_itemRelease( pkey );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadKeyNavigationSlots::buttonSelectKeyChanged( Qt::Key key )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "buttonSelectKeyChanged(Qt::Key)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADKEYNAVIGATION" );
    PHB_ITEM pkey = hb_itemPutNI( NULL, (int) key );

    hb_vmEvalBlockV( cb, 2, psender, pkey );

    hb_itemRelease( psender );
    hb_itemRelease( pkey );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadKeyNavigationSlots::buttonStartKeyChanged( Qt::Key key )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "buttonStartKeyChanged(Qt::Key)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADKEYNAVIGATION" );
    PHB_ITEM pkey = hb_itemPutNI( NULL, (int) key );

    hb_vmEvalBlockV( cb, 2, psender, pkey );

    hb_itemRelease( psender );
    hb_itemRelease( pkey );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadKeyNavigationSlots::buttonGuideKeyChanged( Qt::Key key )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "buttonGuideKeyChanged(Qt::Key)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADKEYNAVIGATION" );
    PHB_ITEM pkey = hb_itemPutNI( NULL, (int) key );

    hb_vmEvalBlockV( cb, 2, psender, pkey );

    hb_itemRelease( psender );
    hb_itemRelease( pkey );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadKeyNavigationSlots::buttonL1KeyChanged( Qt::Key key )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "buttonL1KeyChanged(Qt::Key)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADKEYNAVIGATION" );
    PHB_ITEM pkey = hb_itemPutNI( NULL, (int) key );

    hb_vmEvalBlockV( cb, 2, psender, pkey );

    hb_itemRelease( psender );
    hb_itemRelease( pkey );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadKeyNavigationSlots::buttonR1KeyChanged( Qt::Key key )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "buttonR1KeyChanged(Qt::Key)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADKEYNAVIGATION" );
    PHB_ITEM pkey = hb_itemPutNI( NULL, (int) key );

    hb_vmEvalBlockV( cb, 2, psender, pkey );

    hb_itemRelease( psender );
    hb_itemRelease( pkey );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadKeyNavigationSlots::buttonL2KeyChanged( Qt::Key key )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "buttonL2KeyChanged(Qt::Key)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADKEYNAVIGATION" );
    PHB_ITEM pkey = hb_itemPutNI( NULL, (int) key );

    hb_vmEvalBlockV( cb, 2, psender, pkey );

    hb_itemRelease( psender );
    hb_itemRelease( pkey );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadKeyNavigationSlots::buttonR2KeyChanged( Qt::Key key )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "buttonR2KeyChanged(Qt::Key)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADKEYNAVIGATION" );
    PHB_ITEM pkey = hb_itemPutNI( NULL, (int) key );

    hb_vmEvalBlockV( cb, 2, psender, pkey );

    hb_itemRelease( psender );
    hb_itemRelease( pkey );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadKeyNavigationSlots::buttonL3KeyChanged( Qt::Key key )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "buttonL3KeyChanged(Qt::Key)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADKEYNAVIGATION" );
    PHB_ITEM pkey = hb_itemPutNI( NULL, (int) key );

    hb_vmEvalBlockV( cb, 2, psender, pkey );

    hb_itemRelease( psender );
    hb_itemRelease( pkey );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
void QGamepadKeyNavigationSlots::buttonR3KeyChanged( Qt::Key key )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "buttonR3KeyChanged(Qt::Key)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGAMEPADKEYNAVIGATION" );
    PHB_ITEM pkey = hb_itemPutNI( NULL, (int) key );

    hb_vmEvalBlockV( cb, 2, psender, pkey );

    hb_itemRelease( psender );
    hb_itemRelease( pkey );
  }
}
#endif

void QGamepadKeyNavigationSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadKeyNavigation * obj = (QGamepadKeyNavigation *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QGamepadKeyNavigationSlots * s = QCoreApplication::instance()->findChild<QGamepadKeyNavigationSlots *>();

    if( s == NULL )
    {
      s = new QGamepadKeyNavigationSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
