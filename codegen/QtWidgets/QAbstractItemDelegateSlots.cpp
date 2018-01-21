%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QAbstractItemDelegateSlots.h"


static SlotsQAbstractItemDelegate * s = NULL;

SlotsQAbstractItemDelegate::SlotsQAbstractItemDelegate(QObject *parent) : QObject(parent)
{
}

SlotsQAbstractItemDelegate::~SlotsQAbstractItemDelegate()
{
}

void SlotsQAbstractItemDelegate::closeEditor ( QWidget * editor, QAbstractItemDelegate::EndEditHint hint )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "closeEditor(QWidget*,QAbstractItemDelegate::EndEditHint)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM peditor = hb_itemPutPtr( NULL, (QWidget *) editor );
    PHB_ITEM phint = hb_itemPutNI( NULL, (int) hint );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, peditor, phint );
    hb_itemRelease( psender );
    hb_itemRelease( peditor );
    hb_itemRelease( phint );
  }
}

void SlotsQAbstractItemDelegate::commitData ( QWidget * editor )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "commitData(QWidget*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM peditor = hb_itemPutPtr( NULL, (QWidget *) editor );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, peditor );
    hb_itemRelease( psender );
    hb_itemRelease( peditor );
  }
}

void SlotsQAbstractItemDelegate::sizeHintChanged ( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sizeHintChanged(QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

HB_FUNC( QABSTRACTITEMDELEGATE_ONCLOSEEDITOR )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemDelegate(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "closeEditor(QWidget*,QAbstractItemDelegate::EndEditHint)", "closeEditor(QWidget*,QAbstractItemDelegate::EndEditHint)" ) );
}

HB_FUNC( QABSTRACTITEMDELEGATE_ONCOMMITDATA )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemDelegate(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "commitData(QWidget*)", "commitData(QWidget*)" ) );
}

HB_FUNC( QABSTRACTITEMDELEGATE_ONSIZEHINTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemDelegate(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sizeHintChanged(QModelIndex)", "sizeHintChanged(QModelIndex)" ) );
}
