/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QListWidgetSlots.h"


static SlotsQListWidget * s = NULL;

SlotsQListWidget::SlotsQListWidget(QObject *parent) : QObject(parent)
{
}

SlotsQListWidget::~SlotsQListWidget()
{
}

void SlotsQListWidget::currentItemChanged ( QListWidgetItem * current, QListWidgetItem * previous )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentItemChanged(QListWidgetItem*,QListWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcurrent = hb_itemPutPtr( NULL, (QListWidgetItem *) current );
    PHB_ITEM pprevious = hb_itemPutPtr( NULL, (QListWidgetItem *) previous );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcurrent, pprevious );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
    hb_itemRelease( pprevious );
  }
}

void SlotsQListWidget::currentRowChanged ( int currentRow )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentRowChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcurrentRow = hb_itemPutNI( NULL, currentRow );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcurrentRow );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrentRow );
  }
}

void SlotsQListWidget::currentTextChanged ( const QString & currentText )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentTextChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcurrentText = hb_itemPutC( NULL, QSTRINGTOSTRING(currentText) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcurrentText );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrentText );
  }
}

void SlotsQListWidget::itemActivated ( QListWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemActivated(QListWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QListWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQListWidget::itemChanged ( QListWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemChanged(QListWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QListWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQListWidget::itemClicked ( QListWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemClicked(QListWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QListWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQListWidget::itemDoubleClicked ( QListWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemDoubleClicked(QListWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QListWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQListWidget::itemEntered ( QListWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemEntered(QListWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QListWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQListWidget::itemPressed ( QListWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemPressed(QListWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QListWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQListWidget::itemSelectionChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemSelectionChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QLISTWIDGET_ONCURRENTITEMCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQListWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentItemChanged(QListWidgetItem*,QListWidgetItem*)", "currentItemChanged(QListWidgetItem*,QListWidgetItem*)" ) );
}

HB_FUNC( QLISTWIDGET_ONCURRENTROWCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQListWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentRowChanged(int)", "currentRowChanged(int)" ) );
}

HB_FUNC( QLISTWIDGET_ONCURRENTTEXTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQListWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentTextChanged(QString)", "currentTextChanged(QString)" ) );
}

HB_FUNC( QLISTWIDGET_ONITEMACTIVATED )
{
  if( s == NULL )
  {
    s = new SlotsQListWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemActivated(QListWidgetItem*)", "itemActivated(QListWidgetItem*)" ) );
}

HB_FUNC( QLISTWIDGET_ONITEMCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQListWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemChanged(QListWidgetItem*)", "itemChanged(QListWidgetItem*)" ) );
}

HB_FUNC( QLISTWIDGET_ONITEMCLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQListWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemClicked(QListWidgetItem*)", "itemClicked(QListWidgetItem*)" ) );
}

HB_FUNC( QLISTWIDGET_ONITEMDOUBLECLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQListWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemDoubleClicked(QListWidgetItem*)", "itemDoubleClicked(QListWidgetItem*)" ) );
}

HB_FUNC( QLISTWIDGET_ONITEMENTERED )
{
  if( s == NULL )
  {
    s = new SlotsQListWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemEntered(QListWidgetItem*)", "itemEntered(QListWidgetItem*)" ) );
}

HB_FUNC( QLISTWIDGET_ONITEMPRESSED )
{
  if( s == NULL )
  {
    s = new SlotsQListWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemPressed(QListWidgetItem*)", "itemPressed(QListWidgetItem*)" ) );
}

HB_FUNC( QLISTWIDGET_ONITEMSELECTIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQListWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemSelectionChanged()", "itemSelectionChanged()" ) );
}
