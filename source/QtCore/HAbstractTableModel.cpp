/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "HAbstractTableModel.hpp"

/*
  método construtor
*/
HAbstractTableModel::HAbstractTableModel( QObject * parent ) : QAbstractTableModel( parent )
{
  // linhas e colunas
  m_rowCountCB = NULL;
  m_colCountCB = NULL;

  // células
  m_getFieldCB = NULL;
  m_getFieldDecorationCB = NULL;
  m_getFieldEditCB = NULL;
  m_getFieldToolTipCB = NULL;
  m_getFieldStatusTipCB = NULL;
  m_getFieldWhatsThisCB = NULL;
  m_getFieldSizeHintCB = NULL;
  m_getFieldFontCB = NULL;
  m_getFieldAlignCB = NULL;
  m_getFieldBGColorCB = NULL;
  m_getFieldFGColorCB = NULL;

  // cabeçalho horizontal
  m_getHHCB = NULL;
  m_getHHDecorationCB = NULL;
  m_getHHFontCB = NULL;
  m_getHHAlignCB = NULL;
  m_getHHBGColorCB = NULL;
  m_getHHFGColorCB = NULL;

  // cabeçalho vertical
  m_getVHCB = NULL;
  m_getVHDecorationCB = NULL;
  m_getVHFontCB = NULL;
  m_getVHAlignCB = NULL;
  m_getVHBGColorCB = NULL;
  m_getVHFGColorCB = NULL;
}

/*
  método destruidor
*/
HAbstractTableModel::~HAbstractTableModel()
{
  // linhas e colunas
  if( m_rowCountCB )
  {
    hb_itemRelease( m_rowCountCB );
    m_rowCountCB = NULL;
  }
  if( m_colCountCB )
  {
    hb_itemRelease( m_colCountCB );
    m_colCountCB = NULL;
  }

  // células
  if( m_getFieldCB )
  {
    hb_itemRelease( m_getFieldCB );
    m_getFieldCB = NULL;
  }
  if( m_getFieldDecorationCB )
  {
    hb_itemRelease( m_getFieldDecorationCB );
    m_getFieldDecorationCB = NULL;
  }
  if( m_getFieldEditCB )
  {
    hb_itemRelease( m_getFieldEditCB );
    m_getFieldEditCB = NULL;
  }
  if( m_getFieldToolTipCB )
  {
    hb_itemRelease( m_getFieldToolTipCB );
    m_getFieldToolTipCB = NULL;
  }
  if( m_getFieldStatusTipCB )
  {
    hb_itemRelease( m_getFieldStatusTipCB );
    m_getFieldStatusTipCB = NULL;
  }
  if( m_getFieldWhatsThisCB )
  {
    hb_itemRelease( m_getFieldWhatsThisCB );
    m_getFieldWhatsThisCB = NULL;
  }
  if( m_getFieldSizeHintCB )
  {
    hb_itemRelease( m_getFieldSizeHintCB );
    m_getFieldSizeHintCB = NULL;
  }
  if( m_getFieldFontCB )
  {
    hb_itemRelease( m_getFieldFontCB );
    m_getFieldFontCB = NULL;
  }
  if( m_getFieldAlignCB )
  {
    hb_itemRelease( m_getFieldAlignCB );
    m_getFieldAlignCB = NULL;
  }
  if( m_getFieldBGColorCB )
  {
    hb_itemRelease( m_getFieldBGColorCB );
    m_getFieldBGColorCB = NULL;
  }
  if( m_getFieldFGColorCB )
  {
    hb_itemRelease( m_getFieldFGColorCB );
    m_getFieldFGColorCB = NULL;
  }

  // cabeçalho horizontal
  if( m_getHHCB )
  {
    hb_itemRelease( m_getHHCB );
    m_getHHCB = NULL;
  }
  if( m_getHHDecorationCB )
  {
    hb_itemRelease( m_getHHDecorationCB );
    m_getHHDecorationCB = NULL;
  }
  if( m_getHHFontCB )
  {
    hb_itemRelease( m_getHHFontCB );
    m_getHHFontCB = NULL;
  }
  if( m_getHHAlignCB )
  {
    hb_itemRelease( m_getHHAlignCB );
    m_getHHAlignCB = NULL;
  }
  if( m_getHHBGColorCB )
  {
    hb_itemRelease( m_getHHBGColorCB );
    m_getHHBGColorCB = NULL;
  }
  if( m_getHHFGColorCB )
  {
    hb_itemRelease( m_getHHFGColorCB );
    m_getHHFGColorCB = NULL;
  }

  // cabeçalho vertical
  if( m_getVHCB )
  {
    hb_itemRelease( m_getVHCB );
    m_getVHCB = NULL;
  }
  if( m_getVHDecorationCB )
  {
    hb_itemRelease( m_getVHDecorationCB );
    m_getVHDecorationCB = NULL;
  }
  if( m_getVHFontCB )
  {
    hb_itemRelease( m_getVHFontCB );
    m_getVHFontCB = NULL;
  }
  if( m_getVHAlignCB )
  {
    hb_itemRelease( m_getVHAlignCB );
    m_getVHAlignCB = NULL;
  }
  if( m_getVHBGColorCB )
  {
    hb_itemRelease( m_getVHBGColorCB );
    m_getVHBGColorCB = NULL;
  }
  if( m_getVHFGColorCB )
  {
    hb_itemRelease( m_getVHFGColorCB );
    m_getVHFGColorCB = NULL;
  }
}

/*
  define o codeblock para o número de linhas
*/
void HAbstractTableModel::setRowCountCB( PHB_ITEM block )
{
  if( m_rowCountCB )
  {
    hb_itemRelease( m_rowCountCB );
  }
  if( block )
  {
    m_rowCountCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o número de colunas
*/
void HAbstractTableModel::setColumnCountCB( PHB_ITEM block )
{
  if( m_colCountCB )
  {
    hb_itemRelease( m_colCountCB );
  }
  if( block )
  {
    m_colCountCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o conteúdo da célula
*/
void HAbstractTableModel::setDisplayRoleCB( PHB_ITEM block )
{
  if( m_getFieldCB )
  {
    hb_itemRelease( m_getFieldCB );
  }
  if( block )
  {
    m_getFieldCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a decoração da célula
*/
void HAbstractTableModel::setDecorationRoleCB( PHB_ITEM block )
{
  if( m_getFieldDecorationCB )
  {
    hb_itemRelease( m_getFieldDecorationCB );
  }
  if( block )
  {
    m_getFieldDecorationCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a edição da célula
*/
void HAbstractTableModel::setEditRoleCB( PHB_ITEM block )
{
  if( m_getFieldEditCB )
  {
    hb_itemRelease( m_getFieldEditCB );
  }
  if( block )
  {
    m_getFieldEditCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o tooltip da célula
*/
void HAbstractTableModel::setToolTipRoleCB( PHB_ITEM block )
{
  if( m_getFieldToolTipCB )
  {
    hb_itemRelease( m_getFieldToolTipCB );
  }
  if( block )
  {
    m_getFieldToolTipCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o statustip da célula
*/
void HAbstractTableModel::setStatusTipRoleCB( PHB_ITEM block )
{
  if( m_getFieldStatusTipCB )
  {
    hb_itemRelease( m_getFieldStatusTipCB );
  }
  if( block )
  {
    m_getFieldStatusTipCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o whatsthis da célula
*/
void HAbstractTableModel::setWhatsThisRoleCB( PHB_ITEM block )
{
  if( m_getFieldWhatsThisCB )
  {
    hb_itemRelease( m_getFieldWhatsThisCB );
  }
  if( block )
  {
    m_getFieldWhatsThisCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o sizehint da célula
*/
void HAbstractTableModel::setSizeHintRoleCB( PHB_ITEM block )
{
  if( m_getFieldSizeHintCB )
  {
    hb_itemRelease( m_getFieldSizeHintCB );
  }
  if( block )
  {
    m_getFieldSizeHintCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a fonte da célula
*/
void HAbstractTableModel::setFontRoleCB( PHB_ITEM block )
{
  if( m_getFieldFontCB )
  {
    hb_itemRelease( m_getFieldFontCB );
  }
  if( block )
  {
    m_getFieldFontCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o alinhamento do conteúdo da célula
*/
void HAbstractTableModel::setTextAlignmentRoleCB( PHB_ITEM block )
{
  if( m_getFieldAlignCB )
  {
    hb_itemRelease( m_getFieldAlignCB );
  }
  if( block )
  {
    m_getFieldAlignCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o background da célula
*/
void HAbstractTableModel::setBackgroundRoleCB( PHB_ITEM block )
{
  if( m_getFieldBGColorCB )
  {
    hb_itemRelease( m_getFieldBGColorCB );
  }
  if( block )
  {
    m_getFieldBGColorCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o foreground da célula
*/
void HAbstractTableModel::setForegroundRoleCB( PHB_ITEM block )
{
  if( m_getFieldFGColorCB )
  {
    hb_itemRelease( m_getFieldFGColorCB );
  }
  if( block )
  {
    m_getFieldFGColorCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o conteúdo do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderDisplayRoleCB( PHB_ITEM block )
{
  if( m_getHHCB )
  {
    hb_itemRelease( m_getHHCB );
  }
  if( block )
  {
    m_getHHCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a decoração do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderDecorationRoleCB( PHB_ITEM block )
{
  if( m_getHHDecorationCB )
  {
    hb_itemRelease( m_getHHDecorationCB );
  }
  if( block )
  {
    m_getHHDecorationCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a fonte do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderFontRoleCB( PHB_ITEM block )
{
  if( m_getHHFontCB )
  {
    hb_itemRelease( m_getHHFontCB );
  }
  if( block )
  {
    m_getHHFontCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o alinhamento do conteúdo do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderTextAlignmentRoleCB( PHB_ITEM block )
{
  if( m_getHHAlignCB )
  {
    hb_itemRelease( m_getHHAlignCB );
  }
  if( block )
  {
    m_getHHAlignCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o background do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderBackgroundRoleCB( PHB_ITEM block )
{
  if( m_getHHBGColorCB )
  {
    hb_itemRelease( m_getHHBGColorCB );
  }
  if( block )
  {
    m_getHHBGColorCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o foreground do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderForegroundRoleCB( PHB_ITEM block )
{
  if( m_getHHFGColorCB )
  {
    hb_itemRelease( m_getHHFGColorCB );
  }
  if( block )
  {
    m_getHHFGColorCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o conteúdo do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderDisplayRoleCB( PHB_ITEM block )
{
  if( m_getVHCB )
  {
    hb_itemRelease( m_getVHCB );
  }
  if( block )
  {
    m_getVHCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a decoração do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderDecorationRoleCB( PHB_ITEM block )
{
  if( m_getVHDecorationCB )
  {
    hb_itemRelease( m_getVHDecorationCB );
  }
  if( block )
  {
    m_getVHDecorationCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a fonte do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderFontRoleCB( PHB_ITEM block )
{
  if( m_getVHFontCB )
  {
    hb_itemRelease( m_getVHFontCB );
  }
  if( block )
  {
    m_getVHFontCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o alinhamento do conteúdo do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderTextAlignmentRoleCB( PHB_ITEM block )
{
  if( m_getVHAlignCB )
  {
    hb_itemRelease( m_getVHAlignCB );
  }
  if( block )
  {
    m_getVHAlignCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o background do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderBackgroundRoleCB( PHB_ITEM block )
{
  if( m_getVHBGColorCB )
  {
    hb_itemRelease( m_getVHBGColorCB );
  }
  if( block )
  {
    m_getVHBGColorCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o foreground do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderForegroundRoleCB( PHB_ITEM block )
{
  if( m_getVHFGColorCB )
  {
    hb_itemRelease( m_getVHFGColorCB );
  }
  if( block )
  {
    m_getVHFGColorCB = hb_itemNew( block );
  }
}

/*
  executa os codeblocks (células), conforme a informação (role) requisitada
*/
QVariant HAbstractTableModel::data( const QModelIndex & index, int role ) const
{
  QVariant data;

  // TODO: confirmar se a verificação abaixo é realmente necessária
  if( index.isValid() == false )
  {
    return data;
  }

  if( role == Qt::DisplayRole && m_getFieldCB )
  {
    PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
    PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldCB, 2, pRow, pCol ) );
    if( hb_itemType( pRet ) & HB_IT_STRING )
    {
      #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
      data = QLatin1String( hb_itemGetCPtr( pRet ) );
      #else
      data = hb_itemGetCPtr( pRet );
      #endif
    }
    else if( hb_itemType( pRet ) & HB_IT_MEMO )
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
    else if( hb_itemType( pRet ) & HB_IT_DATE )
    {
      int y,m,d;
      hb_dateDecode( hb_itemGetDL( pRet ), &y, &m, &d );
      QDate date(y,m,d);
      data = date;
    }
    else if( hb_itemType( pRet ) & HB_IT_OBJECT )
    {
      void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
      //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
      //if( clsid == Class_Id_QVariant )
      if( hb_clsIsParent( hb_objGetClass( pRet ), "QVARIANT" ) )
      {
        data = *( (QVariant *) ptr );
      }
    }
    hb_itemRelease( pRow );
    hb_itemRelease( pCol );
    hb_itemRelease( pRet );
  }
  else if( role == Qt::DecorationRole && m_getFieldDecorationCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldDecorationCB, 2, pRow, pCol ) );
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
       ptr = NULL;
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QIcon( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::EditRole && m_getFieldEditCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldEditCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = hb_itemGetCPtr( pRet );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::ToolTipRole && m_getFieldToolTipCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldToolTipCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
       data = QLatin1String( hb_itemGetCPtr( pRet ) );
       #else
       data = hb_itemGetCPtr( pRet );
       #endif
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::StatusTipRole && m_getFieldStatusTipCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldStatusTipCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
       data = QLatin1String( hb_itemGetCPtr( pRet ) );
       #else
       data = hb_itemGetCPtr( pRet );
       #endif
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::WhatsThisRole && m_getFieldWhatsThisCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldWhatsThisCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
       data = QLatin1String( hb_itemGetCPtr( pRet ) );
       #else
       data = hb_itemGetCPtr( pRet );
       #endif
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::SizeHintRole && m_getFieldSizeHintCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldSizeHintCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QSize *) ptr );
       ptr = NULL;
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::FontRole && m_getFieldFontCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldFontCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QFont *) ptr );
       ptr = NULL;
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::TextAlignmentRole && m_getFieldAlignCB )
  {
    PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
    PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldAlignCB, 2, pRow, pCol ) );
    if( hb_itemType( pRet ) & HB_IT_NUMERIC )
    {
      data = hb_itemGetNI( pRet );
    }
    hb_itemRelease( pRow );
    hb_itemRelease( pCol );
    hb_itemRelease( pRet );
  }
  else if( role == Qt::BackgroundRole && m_getFieldBGColorCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldBGColorCB, 2, pRow, pCol ) );
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
       ptr = NULL;
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::ForegroundRole && m_getFieldFGColorCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldFGColorCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QColor *) ptr );
       ptr = NULL;
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }

  return data;
}

/*
  executa os codeblocks (cabeçalhos), conforme a informação (role) requisitada
*/
QVariant HAbstractTableModel::headerData( int section, Qt::Orientation orientation, int role ) const
{
  QVariant data;

  if( orientation == Qt::Horizontal )
  {
    if( role == Qt::DisplayRole && m_getHHCB )
    {
      PHB_ITEM pCol = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getHHCB, 1, pCol ) );
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
    else if( role == Qt::DecorationRole && m_getHHDecorationCB )
    {
      PHB_ITEM pCol = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getHHDecorationCB, 1, pCol ) );
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
        ptr = NULL;
      }
      else if( hb_itemType( pRet ) & HB_IT_STRING )
      {
        data = QIcon( hb_itemGetCPtr( pRet ) );
      }
      hb_itemRelease( pCol );
      hb_itemRelease( pRet );
    }
    else if( role == Qt::FontRole && m_getHHFontCB )
    {
     PHB_ITEM pCol = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getHHFontCB, 1, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QFont *) ptr );
       ptr = NULL;
     }
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
    }
    else if( role == Qt::TextAlignmentRole && m_getHHAlignCB )
    {
      PHB_ITEM pCol = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getHHAlignCB, 1, pCol ) );
      if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      hb_itemRelease( pCol );
      hb_itemRelease( pRet );
    }
    else if( role == Qt::BackgroundRole && m_getHHBGColorCB )
    {
     PHB_ITEM pCol = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getHHBGColorCB, 1, pCol ) );
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
       ptr = NULL;
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
    }
    else if( role == Qt::ForegroundRole && m_getHHFGColorCB )
    {
     PHB_ITEM pCol = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getHHFGColorCB, 1, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QColor *) ptr );
       ptr = NULL;
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
    if( role == Qt::DisplayRole && m_getVHCB )
    {
      PHB_ITEM pRow = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getVHCB, 1, pRow ) );
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
    else if( role == Qt::DecorationRole && m_getVHDecorationCB )
    {
      PHB_ITEM pRow = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getVHDecorationCB, 1, pRow ) );
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
        ptr = NULL;
      }
      else if( hb_itemType( pRet ) & HB_IT_STRING )
      {
        data = QIcon( hb_itemGetCPtr( pRet ) );
      }
      hb_itemRelease( pRow );
      hb_itemRelease( pRet );
    }
    else if( role == Qt::FontRole && m_getVHFontCB )
    {
     PHB_ITEM pRow = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getVHFontCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QFont *) ptr );
       ptr = NULL;
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
    }
    else if( role == Qt::TextAlignmentRole && m_getVHAlignCB )
    {
      PHB_ITEM pRow = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getVHAlignCB, 1, pRow ) );
      if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      hb_itemRelease( pRow );
      hb_itemRelease( pRet );
    }
    else if( role == Qt::BackgroundRole && m_getVHBGColorCB )
    {
     PHB_ITEM pRow = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getVHBGColorCB, 1, pRow ) );
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
       ptr = NULL;
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
    }
    else if( role == Qt::ForegroundRole && m_getVHFGColorCB )
    {
     PHB_ITEM pRow = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getVHFGColorCB, 1, pRow ) );
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

/*
  executa o codeblock que retorna o número de linhas
*/
int HAbstractTableModel::rowCount( const QModelIndex & parent ) const
{
  if( parent.isValid() )
  {
    return 0;
  }
  else
  {
    if( m_rowCountCB )
    {
      return (int) hb_itemGetNI( hb_vmEvalBlockV( m_rowCountCB, 0 ) );
    }
    else
    {
      return 0;
    }
  }
}

/*
  executa o codeblock que retorna o número de colunas
*/
int HAbstractTableModel::columnCount( const QModelIndex & parent ) const
{
  if( parent.isValid() )
  {
    return 0;
  }
  else
  {
    if( m_colCountCB )
    {
      return (int) hb_itemGetNI( hb_vmEvalBlockV( m_colCountCB, 0 ) );
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
void HAbstractTableModel::reloadData()
{
  // Notas da documentação do Qt:
  emit QAbstractTableModel::layoutAboutToBeChanged();
  // Remember the QModelIndex that will change
  // Update your internal data
  // Call changePersistentIndex()
  // emit layoutChanged
  //emit QAbstractItemModel::layoutChanged();
  emit QAbstractTableModel::layoutChanged();
}

/*
  cria um objeto da classe QModelIndex
*/
// QModelIndex HAbstractTableModel::createIndex ( int row, int column )
// {
//   return QAbstractItemModel::createIndex( row, column, 0 );
// }
