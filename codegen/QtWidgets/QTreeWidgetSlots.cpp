%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQTreeWidget::currentItemChanged ( QTreeWidgetItem * current, QTreeWidgetItem * previous )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentItemChanged(QTreeWidgetItem*,QTreeWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcurrent = hb_itemPutPtr( NULL, (QTreeWidgetItem *) current );
    PHB_ITEM pprevious = hb_itemPutPtr( NULL, (QTreeWidgetItem *) previous );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcurrent, pprevious );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
    hb_itemRelease( pprevious );
  }
}

void SlotsQTreeWidget::itemActivated ( QTreeWidgetItem * item, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemActivated(QTreeWidgetItem*,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTreeWidgetItem *) item );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pitem, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
    hb_itemRelease( pcolumn );
  }
}

void SlotsQTreeWidget::itemChanged ( QTreeWidgetItem * item, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemChanged(QTreeWidgetItem*,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTreeWidgetItem *) item );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pitem, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
    hb_itemRelease( pcolumn );
  }
}

void SlotsQTreeWidget::itemClicked ( QTreeWidgetItem * item, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemClicked(QTreeWidgetItem*,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTreeWidgetItem *) item );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pitem, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
    hb_itemRelease( pcolumn );
  }
}

void SlotsQTreeWidget::itemCollapsed ( QTreeWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemCollapsed(QTreeWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTreeWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQTreeWidget::itemDoubleClicked ( QTreeWidgetItem * item, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemDoubleClicked(QTreeWidgetItem*,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTreeWidgetItem *) item );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pitem, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
    hb_itemRelease( pcolumn );
  }
}

void SlotsQTreeWidget::itemEntered ( QTreeWidgetItem * item, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemEntered(QTreeWidgetItem*,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTreeWidgetItem *) item );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pitem, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
    hb_itemRelease( pcolumn );
  }
}

void SlotsQTreeWidget::itemExpanded ( QTreeWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemExpanded(QTreeWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTreeWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void SlotsQTreeWidget::itemPressed ( QTreeWidgetItem * item, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemPressed(QTreeWidgetItem*,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTreeWidgetItem *) item );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pitem, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
    hb_itemRelease( pcolumn );
  }
}

void SlotsQTreeWidget::itemSelectionChanged ()
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

HB_FUNC( QTREEWIDGET_ONCURRENTITEMCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTreeWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentItemChanged(QTreeWidgetItem*,QTreeWidgetItem*)", "currentItemChanged(QTreeWidgetItem*,QTreeWidgetItem*)" ) );
}

HB_FUNC( QTREEWIDGET_ONITEMACTIVATED )
{
  if( s == NULL )
  {
    s = new SlotsQTreeWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemActivated(QTreeWidgetItem*,int)", "itemActivated(QTreeWidgetItem*,int)" ) );
}

HB_FUNC( QTREEWIDGET_ONITEMCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTreeWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemChanged(QTreeWidgetItem*,int)", "itemChanged(QTreeWidgetItem*,int)" ) );
}

HB_FUNC( QTREEWIDGET_ONITEMCLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQTreeWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemClicked(QTreeWidgetItem*,int)", "itemClicked(QTreeWidgetItem*,int)" ) );
}

HB_FUNC( QTREEWIDGET_ONITEMCOLLAPSED )
{
  if( s == NULL )
  {
    s = new SlotsQTreeWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemCollapsed(QTreeWidgetItem*)", "itemCollapsed(QTreeWidgetItem*)" ) );
}

HB_FUNC( QTREEWIDGET_ONITEMDOUBLECLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQTreeWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemDoubleClicked(QTreeWidgetItem*,int)", "itemDoubleClicked(QTreeWidgetItem*,int)" ) );
}

HB_FUNC( QTREEWIDGET_ONITEMENTERED )
{
  if( s == NULL )
  {
    s = new SlotsQTreeWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemEntered(QTreeWidgetItem*,int)", "itemEntered(QTreeWidgetItem*,int)" ) );
}

HB_FUNC( QTREEWIDGET_ONITEMEXPANDED )
{
  if( s == NULL )
  {
    s = new SlotsQTreeWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemExpanded(QTreeWidgetItem*)", "itemExpanded(QTreeWidgetItem*)" ) );
}

HB_FUNC( QTREEWIDGET_ONITEMPRESSED )
{
  if( s == NULL )
  {
    s = new SlotsQTreeWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemPressed(QTreeWidgetItem*,int)", "itemPressed(QTreeWidgetItem*,int)" ) );
}

HB_FUNC( QTREEWIDGET_ONITEMSELECTIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTreeWidget(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "itemSelectionChanged()", "itemSelectionChanged()" ) );
}

$endSlotsClass
