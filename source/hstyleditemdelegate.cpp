/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hstyleditemdelegate.h"

HStyledItemDelegate::HStyledItemDelegate(QObject *parent) : QStyledItemDelegate(parent)
{
  paintBlock = NULL;
  sizeHintBlock = NULL;
  displayTextBlock = NULL;
  createEditorBlock = NULL;
  setEditorDataBlock = NULL;
  setModelDataBlock = NULL;
  updateEditorGeometryBlock = NULL;
}

HStyledItemDelegate::HStyledItemDelegate(PHB_ITEM paintCB, QObject *parent) : QStyledItemDelegate(parent)
{
  paintBlock = hb_itemNew( paintCB );
  sizeHintBlock = NULL;
  displayTextBlock = NULL;
  createEditorBlock = NULL;
  setEditorDataBlock = NULL;
  setModelDataBlock = NULL;
  updateEditorGeometryBlock = NULL;
}

HStyledItemDelegate::HStyledItemDelegate(PHB_ITEM paintCB, PHB_ITEM sizeHintCB, QObject *parent) : QStyledItemDelegate(parent)
{
  paintBlock = hb_itemNew( paintCB );
  sizeHintBlock = hb_itemNew( sizeHintCB );
  displayTextBlock = NULL;
  createEditorBlock = NULL;
  setEditorDataBlock = NULL;
  setModelDataBlock = NULL;
  updateEditorGeometryBlock = NULL;
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

  if( createEditorBlock )
  {
    hb_itemRelease( createEditorBlock );
    createEditorBlock = NULL;
  }

  if( setEditorDataBlock )
  {
    hb_itemRelease( setEditorDataBlock );
    setEditorDataBlock = NULL;
  }

  if( setModelDataBlock )
  {
    hb_itemRelease( setModelDataBlock );
    setEditorDataBlock = NULL;
  }

  if( updateEditorGeometryBlock )
  {
    hb_itemRelease( updateEditorGeometryBlock );
    updateEditorGeometryBlock = NULL;
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

    PHB_ITEM pRet = hb_vmEvalBlockV( sizeHintBlock, 2, pOption, pIndex );

    if( hb_clsIsParent( hb_objGetClass( pRet ), "QSIZE" ) )
    {
      size = *( (QSize *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) ) );
    }
    else
    {
      size = QStyledItemDelegate::sizeHint(option, index);
    }

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

QWidget * HStyledItemDelegate::createEditor(QWidget *parent, const QStyleOptionViewItem &option, const QModelIndex &index) const
{
  QWidget * widget = NULL;

  if( createEditorBlock )
  {
    PHB_ITEM pParent = hb_itemPutPtr( NULL, (QWidget *) parent );
    PHB_ITEM pOption = hb_itemPutPtr( NULL, (QStyleOptionViewItem *) &option );
    PHB_ITEM pIndex = hb_itemPutPtr( NULL, (QModelIndex *) &index );

    PHB_ITEM pRet = hb_vmEvalBlockV( createEditorBlock, 3, pParent, pOption, pIndex );

    if( hb_clsIsParent( hb_objGetClass( pRet ), "QWIDGET" ) )
    {
      widget = (QWidget *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
    }
    else
    {
      widget = QStyledItemDelegate::createEditor(parent, option, index);
    }

    hb_itemRelease( pParent );
    hb_itemRelease( pOption );
    hb_itemRelease( pIndex );
    hb_itemRelease( pRet );
  }
  else
  {
    widget = QStyledItemDelegate::createEditor(parent, option, index);
  }

  return widget;
}

void HStyledItemDelegate::setEditorData(QWidget *editor, const QModelIndex &index) const
{
  if( setEditorDataBlock )
  {
    PHB_ITEM pEditor = hb_itemPutPtr( NULL, (QWidget *) editor );
    PHB_ITEM pIndex = hb_itemPutPtr( NULL, (QModelIndex *) &index );

    PHB_ITEM pRet = hb_vmEvalBlockV( setEditorDataBlock, 2, pEditor, pIndex );

    hb_itemRelease( pEditor );
    hb_itemRelease( pIndex );
    hb_itemRelease( pRet );
  }
  else
  {
    QStyledItemDelegate::setEditorData(editor, index);
  }
}

void HStyledItemDelegate::setModelData(QWidget *editor, QAbstractItemModel *model, const QModelIndex &index) const
{
  if( setModelDataBlock )
  {
    PHB_ITEM pEditor = hb_itemPutPtr( NULL, (QWidget *) editor );
    PHB_ITEM pModel = hb_itemPutPtr( NULL, (QAbstractItemModel *) model );
    PHB_ITEM pIndex = hb_itemPutPtr( NULL, (QModelIndex *) &index );

    PHB_ITEM pRet = hb_vmEvalBlockV( setModelDataBlock, 3, pEditor, pModel, pIndex );

    hb_itemRelease( pEditor );
    hb_itemRelease( pModel );
    hb_itemRelease( pIndex );
    hb_itemRelease( pRet );
  }
  else
  {
    QStyledItemDelegate::setModelData(editor, model, index);
  }
}

void HStyledItemDelegate::updateEditorGeometry(QWidget *editor, const QStyleOptionViewItem &option, const QModelIndex &index) const
{
  if( updateEditorGeometryBlock )
  {
    PHB_ITEM pEditor = hb_itemPutPtr( NULL, (QWidget *) editor );
    PHB_ITEM pOption = hb_itemPutPtr( NULL, (QStyleOptionViewItem *) &option );
    PHB_ITEM pIndex = hb_itemPutPtr( NULL, (QModelIndex *) &index );

    PHB_ITEM pRet = hb_vmEvalBlockV( updateEditorGeometryBlock, 3, pEditor, pOption, pIndex );

    hb_itemRelease( pEditor );
    hb_itemRelease( pOption );
    hb_itemRelease( pIndex );
    hb_itemRelease( pRet );
  }
  else
  {
    QStyledItemDelegate::updateEditorGeometry(editor, option, index);
  }
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

void HStyledItemDelegate::setCreateEditorCB ( PHB_ITEM block )
{
  if( createEditorBlock )
  {
    hb_itemRelease( createEditorBlock );
  }
  if( block )
  {
    createEditorBlock = hb_itemNew( block );
  }
}

void HStyledItemDelegate::setEditorDataCB ( PHB_ITEM block )
{
  if( setEditorDataBlock )
  {
    hb_itemRelease( setEditorDataBlock );
  }
  if( block )
  {
    setEditorDataBlock = hb_itemNew( block );
  }
}

void HStyledItemDelegate::setModelDataCB ( PHB_ITEM block )
{
  if( setModelDataBlock )
  {
    hb_itemRelease( setModelDataBlock );
  }
  if( block )
  {
    setModelDataBlock = hb_itemNew( block );
  }
}

void HStyledItemDelegate::setUpdateEditorGeometryCB ( PHB_ITEM block )
{
  if( updateEditorGeometryBlock )
  {
    hb_itemRelease( updateEditorGeometryBlock );
  }
  if( block )
  {
    updateEditorGeometryBlock = hb_itemNew( block );
  }
}
