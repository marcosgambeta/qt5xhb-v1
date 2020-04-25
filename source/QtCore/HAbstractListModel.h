/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef HABSTRACTLISTMODEL_H
#define HABSTRACTLISTMODEL_H

#include <QtCore/QAbstractListModel>
#include <QtCore/QSize>
#include <QtGui/QBrush>
#include <QtGui/QColor>
#include <QtGui/QFont>
#include <QtGui/QIcon>
#include <QtGui/QPixmap>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

class HAbstractListModel : public QAbstractListModel
{
  Q_OBJECT

public:
  HAbstractListModel( QObject * parent = 0 );
  virtual ~HAbstractListModel();

  /*
   linhas
  */

  PHB_ITEM m_rowCountCB;
  void setRowCountCB( PHB_ITEM block );

  /*
   células
  */

  // Qt::DisplayRole
  PHB_ITEM m_getFieldCB;
  void setDisplayRoleCB( PHB_ITEM block );

  // Qt::DecorationRole
  PHB_ITEM m_getFieldDecorationCB;
  void setDecorationRoleCB( PHB_ITEM block );

  // Qt::EditRole
  PHB_ITEM m_getFieldEditCB;
  void setEditRoleCB( PHB_ITEM block );

  // Qt::ToolTipRole
  PHB_ITEM m_getFieldToolTipCB;
  void setToolTipRoleCB( PHB_ITEM block );

  // Qt::StatusTipRole
  PHB_ITEM m_getFieldStatusTipCB;
  void setStatusTipRoleCB( PHB_ITEM block );

  // Qt::WhatsThisRole
  PHB_ITEM m_getFieldWhatsThisCB;
  void setWhatsThisRoleCB( PHB_ITEM block );

  // Qt::SizeHintRole
  PHB_ITEM m_getFieldSizeHintCB;
  void setSizeHintRoleCB( PHB_ITEM block );

  // Qt::FontRole
  PHB_ITEM m_getFieldFontCB;
  void setFontRoleCB( PHB_ITEM block );

  // Qt::TextAlignmentRole
  PHB_ITEM m_getFieldAlignCB;
  void setTextAlignmentRoleCB( PHB_ITEM block );

  // Qt::BackgroundRole / Qt::BackgroundColorRole
  PHB_ITEM m_getFieldBGColorCB;
  void setBackgroundRoleCB( PHB_ITEM block );

  // Qt::ForegroundRole / Qt::TextColorRole
  PHB_ITEM m_getFieldFGColorCB;
  void setForegroundRoleCB( PHB_ITEM block );

  // Qt::CheckStateRole

  // Qt::AccessibleTextRole

  // Qt::AccessibleDescriptionRole

  /*
   cabeçalho horizontal
  */

  // Qt::DisplayRole
  PHB_ITEM m_getHHCB;
  void setHorizontalHeaderDisplayRoleCB( PHB_ITEM block );

  // Qt::DecorationRole
  PHB_ITEM m_getHHDecorationCB;
  void setHorizontalHeaderDecorationRoleCB( PHB_ITEM block );

  // Qt::EditRole

  // Qt::ToolTipRole

  // Qt::StatusTipRole

  // Qt::WhatsThisRole

  // Qt::SizeHintRole

  // Qt::FontRole
  PHB_ITEM m_getHHFontCB;
  void setHorizontalHeaderFontRoleCB( PHB_ITEM block );

  // Qt::TextAlignmentRole
  PHB_ITEM m_getHHAlignCB;
  void setHorizontalHeaderTextAlignmentRoleCB( PHB_ITEM block );

  // Qt::BackgroundRole / Qt::BackgroundColorRole
  PHB_ITEM m_getHHBGColorCB;
  void setHorizontalHeaderBackgroundRoleCB( PHB_ITEM block );

  // Qt::ForegroundRole
  PHB_ITEM m_getHHFGColorCB;
  void setHorizontalHeaderForegroundRoleCB( PHB_ITEM block );

  // Qt::CheckStateRole

  // Qt::AccessibleTextRole

  // Qt::AccessibleDescriptionRole

  /*
   cabeçalho vertical
  */

  // Qt::DisplayRole
  PHB_ITEM m_getVHCB;
  void setVerticalHeaderDisplayRoleCB( PHB_ITEM block );

  // Qt::DecorationRole
  PHB_ITEM m_getVHDecorationCB;
  void setVerticalHeaderDecorationRoleCB( PHB_ITEM block );

  // Qt::EditRole

  // Qt::ToolTipRole

  // Qt::StatusTipRole

  // Qt::WhatsThisRole

  // Qt::SizeHintRole

  // Qt::FontRole
  PHB_ITEM m_getVHFontCB;
  void setVerticalHeaderFontRoleCB( PHB_ITEM block );

  // Qt::TextAlignmentRole
  PHB_ITEM m_getVHAlignCB;
  void setVerticalHeaderTextAlignmentRoleCB( PHB_ITEM block );

  // Qt::BackgroundRole / Qt::BackgroundColorRole
  PHB_ITEM m_getVHBGColorCB;
  void setVerticalHeaderBackgroundRoleCB( PHB_ITEM block );

  // Qt::ForegroundRole
  PHB_ITEM m_getVHFGColorCB;
  void setVerticalHeaderForegroundRoleCB( PHB_ITEM block );

  // Qt::CheckStateRole

  // Qt::AccessibleTextRole

  // Qt::AccessibleDescriptionRole

  QVariant data( const QModelIndex & index, int role = Qt::DisplayRole ) const;
  QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const;
  int rowCount( const QModelIndex & parent = QModelIndex() ) const;
  void reloadData();

};

#endif /* HABSTRACTLISTMODEL_H */
