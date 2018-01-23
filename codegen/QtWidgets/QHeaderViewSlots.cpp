%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QHeaderViewSlots.h"

static SlotsQHeaderView * s = NULL;

SlotsQHeaderView::SlotsQHeaderView(QObject *parent) : QObject(parent)
{
}

SlotsQHeaderView::~SlotsQHeaderView()
{
}

void SlotsQHeaderView::geometriesChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "geometriesChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQHeaderView::sectionAutoResize ( int logicalIndex, QHeaderView::ResizeMode mode )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionAutoResize(int,QHeaderView::ResizeMode)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    PHB_ITEM pmode = hb_itemPutNI( NULL, (int) mode );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, plogicalIndex, pmode );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
    hb_itemRelease( pmode );
  }
}

void SlotsQHeaderView::sectionClicked ( int logicalIndex )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionClicked(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plogicalIndex );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
  }
}

void SlotsQHeaderView::sectionCountChanged ( int oldCount, int newCount )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionCountChanged(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM poldCount = hb_itemPutNI( NULL, oldCount );
    PHB_ITEM pnewCount = hb_itemPutNI( NULL, newCount );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, poldCount, pnewCount );
    hb_itemRelease( psender );
    hb_itemRelease( poldCount );
    hb_itemRelease( pnewCount );
  }
}

void SlotsQHeaderView::sectionDoubleClicked ( int logicalIndex )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionDoubleClicked(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plogicalIndex );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
  }
}

void SlotsQHeaderView::sectionEntered ( int logicalIndex )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionEntered(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plogicalIndex );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
  }
}

void SlotsQHeaderView::sectionHandleDoubleClicked ( int logicalIndex )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionHandleDoubleClicked(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plogicalIndex );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
  }
}

void SlotsQHeaderView::sectionMoved ( int logicalIndex, int oldVisualIndex, int newVisualIndex )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionMoved(int,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    PHB_ITEM poldVisualIndex = hb_itemPutNI( NULL, oldVisualIndex );
    PHB_ITEM pnewVisualIndex = hb_itemPutNI( NULL, newVisualIndex );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, plogicalIndex, poldVisualIndex, pnewVisualIndex );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
    hb_itemRelease( poldVisualIndex );
    hb_itemRelease( pnewVisualIndex );
  }
}

void SlotsQHeaderView::sectionPressed ( int logicalIndex )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionPressed(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plogicalIndex );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
  }
}

void SlotsQHeaderView::sectionResized ( int logicalIndex, int oldSize, int newSize )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionResized(int,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    PHB_ITEM poldSize = hb_itemPutNI( NULL, oldSize );
    PHB_ITEM pnewSize = hb_itemPutNI( NULL, newSize );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, plogicalIndex, poldSize, pnewSize );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
    hb_itemRelease( poldSize );
    hb_itemRelease( pnewSize );
  }
}

void SlotsQHeaderView::sortIndicatorChanged ( int logicalIndex, Qt::SortOrder order )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sortIndicatorChanged(int,Qt::SortOrder)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    PHB_ITEM porder = hb_itemPutNI( NULL, (int) order );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, plogicalIndex, porder );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
    hb_itemRelease( porder );
  }
}

HB_FUNC( QHEADERVIEW_ONGEOMETRIESCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "geometriesChanged()", "geometriesChanged()" ) );
}

HB_FUNC( QHEADERVIEW_ONSECTIONAUTORESIZE )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sectionAutoResize(int,QHeaderView::ResizeMode)", "sectionAutoResize(int,QHeaderView::ResizeMode)" ) );
}

HB_FUNC( QHEADERVIEW_ONSECTIONCLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sectionClicked(int)", "sectionClicked(int)" ) );
}

HB_FUNC( QHEADERVIEW_ONSECTIONCOUNTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sectionCountChanged(int,int)", "sectionCountChanged(int,int)" ) );
}

HB_FUNC( QHEADERVIEW_ONSECTIONDOUBLECLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sectionDoubleClicked(int)", "sectionDoubleClicked(int)" ) );
}

HB_FUNC( QHEADERVIEW_ONSECTIONENTERED )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sectionEntered(int)", "sectionEntered(int)" ) );
}

HB_FUNC( QHEADERVIEW_ONSECTIONHANDLEDOUBLECLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sectionHandleDoubleClicked(int)", "sectionHandleDoubleClicked(int)" ) );
}

HB_FUNC( QHEADERVIEW_ONSECTIONMOVED )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sectionMoved(int,int,int)", "sectionMoved(int,int,int)" ) );
}

HB_FUNC( QHEADERVIEW_ONSECTIONPRESSED )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sectionPressed(int)", "sectionPressed(int)" ) );
}

HB_FUNC( QHEADERVIEW_ONSECTIONRESIZED )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sectionResized(int,int,int)", "sectionResized(int,int,int)" ) );
}

HB_FUNC( QHEADERVIEW_ONSORTINDICATORCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sortIndicatorChanged(int,Qt::SortOrder)", "sortIndicatorChanged(int,Qt::SortOrder)" ) );
}