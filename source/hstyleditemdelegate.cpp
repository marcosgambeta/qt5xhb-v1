/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hstyleditemdelegate.h"

HStyledItemDelegate::HStyledItemDelegate(QObject *parent) : QStyledItemDelegate(parent)
{
  paintBlock = NULL;
  sizeHintBlock = NULL;
}

HStyledItemDelegate::HStyledItemDelegate(PHB_ITEM paintCB, QObject *parent) : QStyledItemDelegate(parent)
{
  paintBlock = hb_itemNew( paintCB );
  sizeHintBlock = NULL;
}

HStyledItemDelegate::HStyledItemDelegate(PHB_ITEM paintCB, PHB_ITEM sizeHintCB, QObject *parent) : QStyledItemDelegate(parent)
{
  paintBlock = hb_itemNew( paintCB );
  sizeHintBlock = hb_itemNew( sizeHintCB );
}

HStyledItemDelegate::~HStyledItemDelegate ()
{
  if( paintBlock )
  {
    hb_itemRelease( paintBlock );
    paintBlock = NULL;
  }

  if( sizeHintBlock )
  {
    hb_itemRelease( sizeHintBlock );
    sizeHintBlock = NULL;
  }
}

void HStyledItemDelegate::paint(QPainter *painter, const QStyleOptionViewItem &option, const QModelIndex &index) const
{
  if( paintBlock )
  {
    PHB_ITEM pPainter = hb_itemPutPtr( NULL, (QPainter *) painter );
    PHB_ITEM pOption = hb_itemPutPtr( NULL, (QStyleOptionViewItem *) &option );
    PHB_ITEM pIndex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
    PHB_ITEM pRet = hb_vmEvalBlockV( paintBlock, 3, pPainter, pOption, pIndex );
    hb_itemRelease( pPainter );
    hb_itemRelease( pOption );
    hb_itemRelease( pIndex );
    hb_itemRelease( pRet );
  }
  else
  {
    QStyledItemDelegate::paint(painter, option, index);
  }
}

QSize HStyledItemDelegate::sizeHint(const QStyleOptionViewItem &option, const QModelIndex &index) const
{
  QSize size;

  if( sizeHintBlock )
  {
    PHB_ITEM pOption = hb_itemPutPtr( NULL, (QStyleOptionViewItem *) &option );
    PHB_ITEM pIndex = hb_itemPutPtr( NULL, (QModelIndex *) &index );

    PHB_ITEM pRet = hb_vmEvalBlockV( paintBlock, 2, pOption, pIndex );

    void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );

    if( hb_clsIsParent( hb_objGetClass( pRet ), "QSIZE" ) )
    {
      size = *( (QSize *) ptr );
    }
    else
    {
      size = QStyledItemDelegate::sizeHint(option, index);
    }

    ptr = NULL;

    hb_itemRelease( pOption );
    hb_itemRelease( pIndex );
    hb_itemRelease( pRet );
  }
  else
  {
    size = QStyledItemDelegate::sizeHint(option, index);
  }

  return size;
}
