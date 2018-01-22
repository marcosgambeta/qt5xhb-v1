%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QTabWidgetSlots.h"

static SlotsQTabWidget * s = NULL;

SlotsQTabWidget::SlotsQTabWidget(QObject *parent) : QObject(parent)
{
}

SlotsQTabWidget::~SlotsQTabWidget()
{
}

void SlotsQTabWidget::currentChanged ( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void SlotsQTabWidget::tabCloseRequested ( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "tabCloseRequested(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void SlotsQTabWidget::tabBarClicked(int index)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "tabBarClicked(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void SlotsQTabWidget::tabBarDoubleClicked(int index)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "tabBarDoubleClicked(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}
#endif

HB_FUNC( QTABWIDGET_ONCURRENTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTabWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentChanged(int)", "currentChanged(int)" ) );
}

HB_FUNC( QTABWIDGET_ONTABCLOSEREQUESTED )
{
  if( s == NULL )
  {
    s = new SlotsQTabWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "tabCloseRequested(int)", "tabCloseRequested(int)" ) );
}

HB_FUNC( QTABWIDGET_ONTABBARCLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQTabWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "tabBarClicked(int)", "tabBarClicked(int)" ) );
}

HB_FUNC( QTABWIDGET_ONTABBARDOUBLECLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQTabWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "tabBarDoubleClicked(int)", "tabBarDoubleClicked(int)" ) );
}
