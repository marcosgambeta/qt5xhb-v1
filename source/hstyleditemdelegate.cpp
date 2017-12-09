/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hstyleditemdelegate.h"

HStyledItemDelegate::HStyledItemDelegate(QObject *parent) : QStyledItemDelegate(parent)
{
  paintBlock = NULL;
  sizeHintBlock = NULL;
  displayTextBlock = NULL;
}

HStyledItemDelegate::HStyledItemDelegate(PHB_ITEM paintCB, QObject *parent) : QStyledItemDelegate(parent)
{
  paintBlock = hb_itemNew( paintCB );
  sizeHintBlock = NULL;
  displayTextBlock = NULL;
}

HStyledItemDelegate::HStyledItemDelegate(PHB_ITEM paintCB, PHB_ITEM sizeHintCB, QObject *parent) : QStyledItemDelegate(parent)
{
  paintBlock = hb_itemNew( paintCB );
  sizeHintBlock = hb_itemNew( sizeHintCB );
  displayTextBlock = NULL;
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

  if( displayTextBlock )
  {
    hb_itemRelease( displayTextBlock );
    displayTextBlock = NULL;
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

void HStyledItemDelegate::defaultPaint(QPainter *painter, const QStyleOptionViewItem &option, const QModelIndex &index) const
{
  QStyledItemDelegate::paint(painter, option, index);
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

QString HStyledItemDelegate::displayText(const QVariant &value, const QLocale &locale) const
{
  QString data = value.toString();

  if( displayTextBlock )
  {
    PHB_ITEM pValue = hb_itemPutPtr( NULL, (QVariant *) &value );
    PHB_ITEM pLocale = hb_itemPutPtr( NULL, (QLocale *) &locale );

    PHB_ITEM pRet = hb_vmEvalBlockV( displayTextBlock, 2, pValue, pLocale );

    if( hb_itemType( pRet ) & HB_IT_STRING )
    {
      #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
      data = QLatin1String( hb_itemGetCPtr( pRet ) );
      #else
      data = hb_itemGetCPtr( pRet );
      #endif
    }

    hb_itemRelease( pValue );
    hb_itemRelease( pLocale );
    hb_itemRelease( pRet );
  }

  return data;
}

void HStyledItemDelegate::setPaintCB ( PHB_ITEM block )
{
  if( paintBlock )
  {
    hb_itemRelease( paintBlock );
  }
  if( block )
  {
    paintBlock = hb_itemNew( block );
  }
}

void HStyledItemDelegate::setSizeHintCB ( PHB_ITEM block )
{
  if( sizeHintBlock )
  {
    hb_itemRelease( sizeHintBlock );
  }
  if( block )
  {
    sizeHintBlock = hb_itemNew( block );
  }
}

void HStyledItemDelegate::setDisplayTextCB ( PHB_ITEM block )
{
  if( displayTextBlock )
  {
    hb_itemRelease( displayTextBlock );
  }
  if( block )
  {
    displayTextBlock = hb_itemNew( block );
  }
}
