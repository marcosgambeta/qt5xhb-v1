/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "habstractlistmodel.h"

HAbstractListModel::HAbstractListModel (QObject * parent) : QAbstractListModel (parent)
{
  // linhas
  rowCountCB = NULL;

  // células
  getFieldCB = NULL;
  getFieldDecorationCB = NULL;
  getFieldEditCB = NULL;
  getFieldToolTipCB = NULL;
  getFieldStatusTipCB = NULL;
  getFieldWhatsThisCB = NULL;
  getFieldSizeHintCB = NULL;
  getFieldFontCB = NULL;
  getFieldAlignCB = NULL;
  getFieldBGColorCB = NULL;
  getFieldFGColorCB = NULL;

  // cabeçalho horizontal
  getHHCB = NULL;
  getHHDecorationCB = NULL;
  getHHFontCB = NULL;
  getHHAlignCB = NULL;
  getHHBGColorCB = NULL;
  getHHFGColorCB = NULL;

  // cabeçalho vertical
  getVHCB = NULL;
  getVHDecorationCB = NULL;
  getVHFontCB = NULL;
  getVHAlignCB = NULL;
  getVHBGColorCB = NULL;
  getVHFGColorCB = NULL;
}

HAbstractListModel::~HAbstractListModel ()
{
  // linhas
  if( rowCountCB )
  {
    hb_itemRelease( rowCountCB );
  }

  // células
  if( getFieldCB )
  {
    hb_itemRelease( getFieldCB );
  }
  if( getFieldDecorationCB )
  {
    hb_itemRelease( getFieldDecorationCB );
  }
  if( getFieldEditCB )
  {
    hb_itemRelease( getFieldEditCB );
  }
  if( getFieldToolTipCB )
  {
    hb_itemRelease( getFieldToolTipCB );
  }
  if( getFieldStatusTipCB )
  {
    hb_itemRelease( getFieldStatusTipCB );
  }
  if( getFieldWhatsThisCB )
  {
    hb_itemRelease( getFieldWhatsThisCB );
  }
  if( getFieldSizeHintCB )
  {
    hb_itemRelease( getFieldSizeHintCB );
  }
  if( getFieldFontCB )
  {
    hb_itemRelease( getFieldFontCB );
  }
  if( getFieldAlignCB )
  {
    hb_itemRelease( getFieldAlignCB );
  }
  if( getFieldBGColorCB )
  {
    hb_itemRelease( getFieldBGColorCB );
  }
  if( getFieldFGColorCB )
  {
    hb_itemRelease( getFieldFGColorCB );
  }

  // cabeçalho horizontal
  if( getHHCB )
  {
    hb_itemRelease( getHHCB );
  }
  if( getHHDecorationCB )
  {
    hb_itemRelease( getHHDecorationCB );
  }
  if( getHHFontCB )
  {
    hb_itemRelease( getHHFontCB );
  }
  if( getHHAlignCB )
  {
    hb_itemRelease( getHHAlignCB );
  }
  if( getHHBGColorCB )
  {
    hb_itemRelease( getHHBGColorCB );
  }
  if( getHHFGColorCB )
  {
    hb_itemRelease( getHHFGColorCB );
  }

  // dados do cabecalho vertical
  if( getVHCB )
  {
    hb_itemRelease( getVHCB );
  }
  if( getVHDecorationCB )
  {
    hb_itemRelease( getVHDecorationCB );
  }
  if( getVHFontCB )
  {
    hb_itemRelease( getVHFontCB );
  }
  if( getVHAlignCB )
  {
    hb_itemRelease( getVHAlignCB );
  }
  if( getVHBGColorCB )
  {
    hb_itemRelease( getVHBGColorCB );
  }
  if( getVHFGColorCB )
  {
    hb_itemRelease( getVHFGColorCB );
  }

}

// linhas

void HAbstractListModel::setRowCountCB ( PHB_ITEM block )
{
  if( rowCountCB )
  {
    hb_itemRelease( rowCountCB );
  }
  if( block )
  {
    rowCountCB = hb_itemNew( block );
  }
}

// células

void HAbstractListModel::setDisplayRoleCB ( PHB_ITEM block )
{
  if( getFieldCB )
  {
    hb_itemRelease( getFieldCB );
  }
  if( block )
  {
    getFieldCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setDecorationRoleCB ( PHB_ITEM block )
{
  if( getFieldDecorationCB )
  {
    hb_itemRelease( getFieldDecorationCB );
  }
  if( block )
  {
    getFieldDecorationCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setEditRoleCB ( PHB_ITEM block )
{
  if( getFieldEditCB )
  {
    hb_itemRelease( getFieldEditCB );
  }
  if( block )
  {
    getFieldEditCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setToolTipRoleCB ( PHB_ITEM block )
{
  if( getFieldToolTipCB )
  {
    hb_itemRelease( getFieldToolTipCB );
  }
  if( block )
  {
    getFieldToolTipCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setStatusTipRoleCB ( PHB_ITEM block )
{
  if( getFieldStatusTipCB )
  {
    hb_itemRelease( getFieldStatusTipCB );
  }
  if( block )
  {
    getFieldStatusTipCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setWhatsThisRoleCB ( PHB_ITEM block )
{
  if( getFieldWhatsThisCB )
  {
    hb_itemRelease( getFieldWhatsThisCB );
  }
  if( block )
  {
    getFieldWhatsThisCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setSizeHintRoleCB ( PHB_ITEM block )
{
  if( getFieldSizeHintCB )
  {
    hb_itemRelease( getFieldSizeHintCB );
  }
  if( block )
  {
    getFieldSizeHintCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setFontRoleCB ( PHB_ITEM block )
{
  if( getFieldFontCB )
  {
    hb_itemRelease( getFieldFontCB );
  }
  if( block )
  {
    getFieldFontCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setTextAlignmentRoleCB ( PHB_ITEM block )
{
  if( getFieldAlignCB )
  {
    hb_itemRelease( getFieldAlignCB );
  }
  if( block )
  {
    getFieldAlignCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setBackgroundRoleCB ( PHB_ITEM block )
{
  if( getFieldBGColorCB )
  {
    hb_itemRelease( getFieldBGColorCB );
  }
  if( block )
  {
    getFieldBGColorCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setForegroundRoleCB ( PHB_ITEM block )
{
  if( getFieldFGColorCB )
  {
    hb_itemRelease( getFieldFGColorCB );
  }
  if( block )
  {
    getFieldFGColorCB = hb_itemNew( block );
  }
}

// cabeçalho horizontal

void HAbstractListModel::setHorizontalHeaderDisplayRoleCB ( PHB_ITEM block )
{
  if( getHHCB )
  {
    hb_itemRelease( getHHCB );
  }
  if( block )
  {
    getHHCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setHorizontalHeaderDecorationRoleCB ( PHB_ITEM block )
{
  if( getHHDecorationCB )
  {
    hb_itemRelease( getHHDecorationCB );
  }
  if( block )
  {
    getHHDecorationCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setHorizontalHeaderFontRoleCB ( PHB_ITEM block )
{
  if( getHHFontCB )
  {
    hb_itemRelease( getHHFontCB );
  }
  if( block )
  {
    getHHFontCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setHorizontalHeaderTextAlignmentRoleCB ( PHB_ITEM block )
{
  if( getHHAlignCB )
  {
    hb_itemRelease( getHHAlignCB );
  }
  if( block )
  {
    getHHAlignCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setHorizontalHeaderBackgroundRoleCB ( PHB_ITEM block )
{
  if( getHHBGColorCB )
  {
    hb_itemRelease( getHHBGColorCB );
  }
  if( block )
  {
    getHHBGColorCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setHorizontalHeaderForegroundRoleCB ( PHB_ITEM block )
{
  if( getHHFGColorCB )
  {
    hb_itemRelease( getHHFGColorCB );
  }
  if( block )
  {
    getHHFGColorCB = hb_itemNew( block );
  }
}

// cabeçalho vertical

void HAbstractListModel::setVerticalHeaderDisplayRoleCB ( PHB_ITEM block )
{
  if( getVHCB )
  {
    hb_itemRelease( getVHCB );
  }
  if( block )
  {
    getVHCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setVerticalHeaderDecorationRoleCB ( PHB_ITEM block )
{
  if( getVHDecorationCB )
  {
    hb_itemRelease( getVHDecorationCB );
  }
  if( block )
  {
    getVHDecorationCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setVerticalHeaderFontRoleCB ( PHB_ITEM block )
{
  if( getVHFontCB )
  {
    hb_itemRelease( getVHFontCB );
  }
  if( block )
  {
    getVHFontCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setVerticalHeaderTextAlignmentRoleCB ( PHB_ITEM block )
{
  if( getVHAlignCB )
  {
    hb_itemRelease( getVHAlignCB );
  }
  if( block )
  {
    getVHAlignCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setVerticalHeaderBackgroundRoleCB ( PHB_ITEM block )
{
  if( getVHBGColorCB )
  {
    hb_itemRelease( getVHBGColorCB );
  }
  if( block )
  {
    getVHBGColorCB = hb_itemNew( block );
  }
}

void HAbstractListModel::setVerticalHeaderForegroundRoleCB ( PHB_ITEM block )
{
  if( getVHFGColorCB )
  {
    hb_itemRelease( getVHFGColorCB );
  }
  if( block )
  {
    getVHFGColorCB = hb_itemNew( block );
  }
}

QVariant HAbstractListModel::data( const QModelIndex & index, int role ) const
{
  QVariant data;

  if( role == Qt::DisplayRole && getFieldCB )
  {
    PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldCB, 1, pRow ) );
    if( hb_itemType( pRet ) & HB_IT_STRING )
    {
      #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
      data = QLatin1String( hb_itemGetCPtr( pRet ) );
      #else
      data = hb_itemGetCPtr( pRet );
      #endif
    }
    else if( hb_itemType( pRet ) & HB_IT_DOUBLE )
    {
      data = hb_itemGetND( pRet );
    }
    else if( hb_itemType( pRet ) & HB_IT_NUMERIC )
    {
      data = hb_itemGetNI( pRet );
    }
    else if( hb_itemType( pRet ) & HB_IT_LOGICAL )
    {
      data = hb_itemGetL( pRet );
    }
    hb_itemRelease( pRow );
    hb_itemRelease( pRet );
  }
  else if( role == Qt::DecorationRole && getFieldDecorationCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldDecorationCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
       //if( clsid == Class_Id_QIcon )
       if( hb_clsIsParent( hb_objGetClass( pRet ), "QICON" ) )
       {
         data = *( (QIcon *) ptr );
       }
       //else if( clsid == Class_Id_QPixmap )
       else if( hb_clsIsParent( hb_objGetClass( pRet ), "QPIXMAP" ) )
       {
         data = *( (QPixmap *) ptr );
       }
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QIcon( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::EditRole && getFieldEditCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldEditCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = hb_itemGetCPtr( pRet );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::ToolTipRole && getFieldToolTipCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldToolTipCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
       data = QLatin1String( hb_itemGetCPtr( pRet ) );
       #else
       data = hb_itemGetCPtr( pRet );
       #endif
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::StatusTipRole && getFieldStatusTipCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldStatusTipCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
       data = QLatin1String( hb_itemGetCPtr( pRet ) );
       #else
       data = hb_itemGetCPtr( pRet );
       #endif
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::WhatsThisRole && getFieldWhatsThisCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldWhatsThisCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
       data = QLatin1String( hb_itemGetCPtr( pRet ) );
       #else
       data = hb_itemGetCPtr( pRet );
       #endif
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::SizeHintRole && getFieldSizeHintCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldSizeHintCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QSize *) ptr );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::FontRole && getFieldFontCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldFontCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QFont *) ptr );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::TextAlignmentRole && getFieldAlignCB )
  {
    PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldAlignCB, 1, pRow ) );
    if( hb_itemType( pRet ) & HB_IT_NUMERIC )
    {
      data = hb_itemGetNI( pRet );
    }
    hb_itemRelease( pRow );
    hb_itemRelease( pRet );
  }
  else if( role == Qt::BackgroundRole && getFieldBGColorCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldBGColorCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
       //if( clsid == Class_Id_QColor )
       if( hb_clsIsParent( hb_objGetClass( pRet ), "QCOLOR" ) )
       {
         data = *( (QColor *) ptr );
       }
       //else if( clsid == Class_Id_QBrush )
       else if( hb_clsIsParent( hb_objGetClass( pRet ), "QBRUSH" ) )
       {
         data = *( (QBrush *) ptr );
       }
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::ForegroundRole && getFieldFGColorCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldFGColorCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QColor *) ptr );
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
  }

  return data;
}

QVariant HAbstractListModel::headerData( int section, Qt::Orientation orientation, int role ) const
{
  QVariant data;

  if( orientation == Qt::Horizontal )
  {
    if( role == Qt::DisplayRole && getHHCB )
    {
      PHB_ITEM pCol = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHCB, 1, pCol ) );
      if( hb_itemType( pRet ) & HB_IT_STRING )
      {
        #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
        data = QLatin1String( hb_itemGetCPtr( pRet ) );
        #else
        data = hb_itemGetCPtr( pRet );
        #endif
      }
      else if( hb_itemType( pRet ) & HB_IT_DOUBLE )
      {
        data = hb_itemGetND( pRet );
      }
      else if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      else if( hb_itemType( pRet ) & HB_IT_LOGICAL )
      {
        data = hb_itemGetL( pRet );
      }
      hb_itemRelease( pCol );
      hb_itemRelease( pRet );
    }
    else if( role == Qt::DecorationRole && getHHDecorationCB )
    {
      PHB_ITEM pCol = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHDecorationCB, 1, pCol ) );
      if( hb_itemType( pRet ) & HB_IT_OBJECT )
      {
        void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
        //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
        //if( clsid == Class_Id_QIcon )
        if( hb_clsIsParent( hb_objGetClass( pRet ), "QICON" ) )
        {
          data = *( (QIcon *) ptr );
        }
        //else if( clsid == Class_Id_QPixmap )
        else if( hb_clsIsParent( hb_objGetClass( pRet ), "QPIXMAP" ) )
        {
          data = *( (QPixmap *) ptr );
        }
      }
      else if( hb_itemType( pRet ) & HB_IT_STRING )
      {
        data = QIcon( hb_itemGetCPtr( pRet ) );
      }
      hb_itemRelease( pCol );
      hb_itemRelease( pRet );
    }
    else if( role == Qt::FontRole && getHHFontCB )
    {
     PHB_ITEM pCol = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHFontCB, 1, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QFont *) ptr );
     }
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
    }
    else if( role == Qt::TextAlignmentRole && getHHAlignCB )
    {
      PHB_ITEM pCol = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHAlignCB, 1, pCol ) );
      if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      hb_itemRelease( pCol );
      hb_itemRelease( pRet );
    }
    else if( role == Qt::BackgroundRole && getHHBGColorCB )
    {
     PHB_ITEM pCol = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHBGColorCB, 1, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
       //if( clsid == Class_Id_QColor )
       if( hb_clsIsParent( hb_objGetClass( pRet ), "QCOLOR" ) )
       {
         data = *( (QColor *) ptr );
       }
       //else if( clsid == Class_Id_QBrush )
       else if( hb_clsIsParent( hb_objGetClass( pRet ), "QBRUSH" ) )
       {
         data = *( (QBrush *) ptr );
       }
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
    }
    else if( role == Qt::ForegroundRole && getHHFGColorCB )
    {
     PHB_ITEM pCol = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHFGColorCB, 1, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QColor *) ptr );
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
    }
  }
  else if( orientation == Qt::Vertical )
  {
    if( role == Qt::DisplayRole && getVHCB )
    {
      PHB_ITEM pRow = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHCB, 1, pRow ) );
      if( hb_itemType( pRet ) & HB_IT_STRING )
      {
        #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
        data = QLatin1String( hb_itemGetCPtr( pRet ) );
        #else
        data = hb_itemGetCPtr( pRet );
        #endif
      }
      else if( hb_itemType( pRet ) & HB_IT_DOUBLE )
      {
        data = hb_itemGetND( pRet );
      }
      else if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      else if( hb_itemType( pRet ) & HB_IT_LOGICAL )
      {
        data = hb_itemGetL( pRet );
      }
      hb_itemRelease( pRow );
      hb_itemRelease( pRet );
    }
    else if( role == Qt::DecorationRole && getVHDecorationCB )
    {
      PHB_ITEM pRow = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHDecorationCB, 1, pRow ) );
      if( hb_itemType( pRet ) & HB_IT_OBJECT )
      {
        void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
        //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
        //if( clsid == Class_Id_QIcon )
        if( hb_clsIsParent( hb_objGetClass( pRet ), "QICON" ) )
        {
          data = *( (QIcon *) ptr );
        }
        //else if( clsid == Class_Id_QPixmap )
        else if( hb_clsIsParent( hb_objGetClass( pRet ), "QPIXMAP" ) )
        {
          data = *( (QPixmap *) ptr );
        }
      }
      else if( hb_itemType( pRet ) & HB_IT_STRING )
      {
        data = QIcon( hb_itemGetCPtr( pRet ) );
      }
      hb_itemRelease( pRow );
      hb_itemRelease( pRet );
    }
    else if( role == Qt::FontRole && getVHFontCB )
    {
     PHB_ITEM pRow = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHFontCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QFont *) ptr );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
    }
    else if( role == Qt::TextAlignmentRole && getVHAlignCB )
    {
      PHB_ITEM pRow = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHAlignCB, 1, pRow ) );
      if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      hb_itemRelease( pRow );
      hb_itemRelease( pRet );
    }
    else if( role == Qt::BackgroundRole && getVHBGColorCB )
    {
     PHB_ITEM pRow = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHBGColorCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
       //if( clsid == Class_Id_QColor )
       if( hb_clsIsParent( hb_objGetClass( pRet ), "QCOLOR" ) )
       {
         data = *( (QColor *) ptr );
       }
       //else if( clsid == Class_Id_QBrush )
       else if( hb_clsIsParent( hb_objGetClass( pRet ), "QBRUSH" ) )
       {
         data = *( (QBrush *) ptr );
       }
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
    }
    else if( role == Qt::ForegroundRole && getVHFGColorCB )
    {
     PHB_ITEM pRow = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHFGColorCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QColor *) ptr );
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
    }
  }

  return data;
}

int HAbstractListModel::rowCount( const QModelIndex & parent ) const
{
  if( parent.isValid() )
  {
    return 0;
  }
  else
  {
    if( rowCountCB )
    {
      return (int) hb_itemGetNI( hb_vmEvalBlockV( rowCountCB, 0 ) );
    }
    else
    {
      return 0;
    }
  }
}

/*
  emite o sinal QAbstractItemModel::layoutChanged(), forçando
  o recarregamento dos dados
*/
void HAbstractListModel::reloadData()
{
  // Notas da documentação do Qt:
  // emit layoutAboutToBeChanged
  // Remember the QModelIndex that will change
  // Update your internal data
  // Call changePersistentIndex()
  // emit layoutChanged
  emit QAbstractItemModel::layoutChanged();
}
