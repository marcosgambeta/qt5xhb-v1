/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QWidgetSlots.h"


static SlotsQWidget * s = NULL;

SlotsQWidget::SlotsQWidget(QObject *parent) : QObject(parent)
{
}

SlotsQWidget::~SlotsQWidget()
{
}

void SlotsQWidget::windowTitleChanged(const QString &title)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "windowTitleChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptitle = hb_itemPutC( NULL, (const char *) title.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptitle );
    hb_itemRelease( psender );
    hb_itemRelease( ptitle );
  }
}

void SlotsQWidget::windowIconChanged(const QIcon &icon)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "windowIconChanged(QIcon)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM picon = hb_itemPutPtr( NULL, (QIcon *) &icon );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, picon );
    hb_itemRelease( psender );
    hb_itemRelease( picon );
  }
}

void SlotsQWidget::windowIconTextChanged(const QString &iconText)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "windowIconTextChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM piconText = hb_itemPutC( NULL, (const char *) iconText.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, piconText );
    hb_itemRelease( psender );
    hb_itemRelease( piconText );
  }
}

void SlotsQWidget::customContextMenuRequested(const QPoint &pos)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "customContextMenuRequested(QPoint)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppos = hb_itemPutPtr( NULL, (QPoint *) &pos );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppos );
    hb_itemRelease( psender );
    hb_itemRelease( ppos );
  }
}

HB_FUNC( QWIDGET_ONWINDOWTITLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "windowTitleChanged(QString)", "windowTitleChanged(QString)" ) );
}

HB_FUNC( QWIDGET_ONWINDOWICONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "windowIconChanged(QIcon)", "windowIconChanged(QIcon)" ) );
}

HB_FUNC( QWIDGET_ONWINDOWICONTEXTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "windowIconTextChanged(QString)", "windowIconTextChanged(QString)" ) );
}

HB_FUNC( QWIDGET_ONCUSTOMCONTEXTMENUREQUESTED )
{
  if( s == NULL )
  {
    s = new SlotsQWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "customContextMenuRequested(QPoint)", "customContextMenuRequested(QPoint)" ) );
}
