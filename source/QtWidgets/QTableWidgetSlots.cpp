/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QTableWidgetSlots.h"


static SlotsQTableWidget * s = NULL;

SlotsQTableWidget::SlotsQTableWidget(QObject *parent) : QObject(parent)
{
}

SlotsQTableWidget::~SlotsQTableWidget()
{
}

void SlotsQTableWidget::cellActivated ( int row, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cellActivated(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prow, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( prow );
    hb_itemRelease( pcolumn );
  }
}

void SlotsQTableWidget::cellChanged ( int row, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cellChanged(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prow, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( prow );
    hb_itemRelease( pcolumn );
  }
}

void SlotsQTableWidget::cellClicked ( int row, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cellClicked(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prow, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( prow );
    hb_itemRelease( pcolumn );
  }
}

void SlotsQTableWidget::cellDoubleClicked ( int row, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cellDoubleClicked(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prow, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( prow );
    hb_itemRelease( pcolumn );
  }
}

void SlotsQTableWidget::cellEntered ( int row, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cellEntered(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prow, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( prow );
    hb_itemRelease( pcolumn );
  }
}

void SlotsQTableWidget::cellPressed ( int row, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cellPressed(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prow, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( prow );
    hb_itemRelease( pcolumn );
  }
}

void SlotsQTableWidget::currentCellChanged ( int currentRow, int currentColumn, int previousRow, int previousColumn )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentCellChanged(int,int,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcurrentRow = hb_itemPutNI( NULL, currentRow );
    PHB_ITEM pcurrentColumn = hb_itemPutNI( NULL, currentColumn );
    PHB_ITEM ppreviousRow = hb_itemPutNI( NULL, previousRow );
    PHB_ITEM ppreviousColumn = hb_itemPutNI( NULL, previousColumn );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 5, psender, pcurrentRow, pcurrentColumn, ppreviousRow, ppreviousColumn );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrentRow );
    hb_itemRelease( pcurrentColumn );
    hb_itemRelease( ppreviousRow );
    hb_itemRelease( ppreviousColumn );
  }
}

void SlotsQTableWidget::currentItemChanged ( QTableWidgetItem * current, QTableWidgetItem * previous )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentItemChanged(QTableWidgetItem*,QTableWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcurrent = hb_itemPutPtr( NULL, (QTableWidgetItem *) current );
    PHB_ITEM pprevious = hb_itemPutPtr( NULL, (QTableWidgetItem *) previous );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcurrent, pprevious );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
    hb_itemRelease( pprevious );
  }
}

void SlotsQTableWidget::itemActivated ( QTableWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemActivated(QTableWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTableWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQTableWidget::itemChanged ( QTableWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemChanged(QTableWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTableWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQTableWidget::itemClicked ( QTableWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemClicked(QTableWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTableWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQTableWidget::itemDoubleClicked ( QTableWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemDoubleClicked(QTableWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTableWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQTableWidget::itemEntered ( QTableWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemEntered(QTableWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTableWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQTableWidget::itemPressed ( QTableWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemPressed(QTableWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTableWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQTableWidget::itemSelectionChanged ()
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

HB_FUNC( QTABLEWIDGET_ONCELLACTIVATED )
{
  if( s == NULL )
  {
    s = new SlotsQTableWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "cellActivated(int,int)", "cellActivated(int,int)" ) );
}

HB_FUNC( QTABLEWIDGET_ONCELLCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTableWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "cellChanged(int,int)", "cellChanged(int,int)" ) );
}

HB_FUNC( QTABLEWIDGET_ONCELLCLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQTableWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "cellClicked(int,int)", "cellClicked(int,int)" ) );
}

HB_FUNC( QTABLEWIDGET_ONCELLDOUBLECLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQTableWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "cellDoubleClicked(int,int)", "cellDoubleClicked(int,int)" ) );
}

HB_FUNC( QTABLEWIDGET_ONCELLENTERED )
{
  if( s == NULL )
  {
    s = new SlotsQTableWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "cellEntered(int,int)", "cellEntered(int,int)" ) );
}

HB_FUNC( QTABLEWIDGET_ONCELLPRESSED )
{
  if( s == NULL )
  {
    s = new SlotsQTableWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "cellPressed(int,int)", "cellPressed(int,int)" ) );
}

HB_FUNC( QTABLEWIDGET_ONCURRENTCELLCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTableWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentCellChanged(int,int,int,int)", "currentCellChanged(int,int,int,int)" ) );
}

HB_FUNC( QTABLEWIDGET_ONCURRENTITEMCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTableWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentItemChanged(QTableWidgetItem*,QTableWidgetItem*)", "currentItemChanged(QTableWidgetItem*,QTableWidgetItem*)" ) );
}

HB_FUNC( QTABLEWIDGET_ONITEMACTIVATED )
{
  if( s == NULL )
  {
    s = new SlotsQTableWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemActivated(QTableWidgetItem*)", "itemActivated(QTableWidgetItem*)" ) );
}

HB_FUNC( QTABLEWIDGET_ONITEMCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTableWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemChanged(QTableWidgetItem*)", "itemChanged(QTableWidgetItem*)" ) );
}

HB_FUNC( QTABLEWIDGET_ONITEMCLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQTableWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemClicked(QTableWidgetItem*)", "itemClicked(QTableWidgetItem*)" ) );
}

HB_FUNC( QTABLEWIDGET_ONITEMDOUBLECLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQTableWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemDoubleClicked(QTableWidgetItem*)", "itemDoubleClicked(QTableWidgetItem*)" ) );
}

HB_FUNC( QTABLEWIDGET_ONITEMENTERED )
{
  if( s == NULL )
  {
    s = new SlotsQTableWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemEntered(QTableWidgetItem*)", "itemEntered(QTableWidgetItem*)" ) );
}

HB_FUNC( QTABLEWIDGET_ONITEMPRESSED )
{
  if( s == NULL )
  {
    s = new SlotsQTableWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemPressed(QTableWidgetItem*)", "itemPressed(QTableWidgetItem*)" ) );
}

HB_FUNC( QTABLEWIDGET_ONITEMSELECTIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTableWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemSelectionChanged()", "itemSelectionChanged()" ) );
}
