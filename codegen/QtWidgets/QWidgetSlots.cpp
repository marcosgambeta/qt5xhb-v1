%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QWidgetSlots.h"


static SlotsQWidget * s = NULL;

SlotsQWidget::SlotsQWidget(QObject *parent) : QObject(parent)
{
}

SlotsQWidget::~SlotsQWidget()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void SlotsQWidget::windowTitleChanged(const QString &title)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "windowTitleChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptitle = hb_itemPutC( NULL, QSTRINGTOSTRING(title) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptitle );
    hb_itemRelease( psender );
    hb_itemRelease( ptitle );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
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
#endif

void SlotsQWidget::windowIconTextChanged(const QString &iconText)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "windowIconTextChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM piconText = hb_itemPutC( NULL, QSTRINGTOSTRING(iconText) );
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "windowTitleChanged(QString)", "windowTitleChanged(QString)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QWIDGET_ONWINDOWICONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "windowIconChanged(QIcon)", "windowIconChanged(QIcon)" ) );
#else
  hb_retl( false );
#endif
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
