/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef HABSTRACTLISTMODEL_H
#define HABSTRACTLISTMODEL_H

#include <QtCore/QAbstractListModel>
#include <QtGui/QIcon>
#include <QtGui/QPixmap>
#include <QtGui/QFont>
#include <QtGui/QColor>
#include <QtGui/QBrush>
#include <QtCore/QSize>

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

  PHB_ITEM rowCountCB;
  void setRowCountCB ( PHB_ITEM block );

  /*
   células
  */

  // Qt::DisplayRole
  PHB_ITEM getFieldCB;
  void setDisplayRoleCB ( PHB_ITEM block );

  // Qt::DecorationRole
  PHB_ITEM getFieldDecorationCB;
  void setDecorationRoleCB ( PHB_ITEM block );

  // Qt::EditRole
  PHB_ITEM getFieldEditCB;
  void setEditRoleCB ( PHB_ITEM block );

  // Qt::ToolTipRole
  PHB_ITEM getFieldToolTipCB;
  void setToolTipRoleCB ( PHB_ITEM block );

  // Qt::StatusTipRole
  PHB_ITEM getFieldStatusTipCB;
  void setStatusTipRoleCB ( PHB_ITEM block );

  // Qt::WhatsThisRole
  PHB_ITEM getFieldWhatsThisCB;
  void setWhatsThisRoleCB ( PHB_ITEM block );

  // Qt::SizeHintRole
  PHB_ITEM getFieldSizeHintCB;
  void setSizeHintRoleCB ( PHB_ITEM block );

  // Qt::FontRole
  PHB_ITEM getFieldFontCB;
  void setFontRoleCB ( PHB_ITEM block );

  // Qt::TextAlignmentRole
  PHB_ITEM getFieldAlignCB;
  void setTextAlignmentRoleCB ( PHB_ITEM block );

  // Qt::BackgroundRole / Qt::BackgroundColorRole
  PHB_ITEM getFieldBGColorCB;
  void setBackgroundRoleCB ( PHB_ITEM block );

  // Qt::ForegroundRole / Qt::TextColorRole
  PHB_ITEM getFieldFGColorCB;
  void setForegroundRoleCB ( PHB_ITEM block );

  // Qt::CheckStateRole

  // Qt::AccessibleTextRole

  // Qt::AccessibleDescriptionRole

  /*
   cabeçalho horizontal
  */

  // Qt::DisplayRole
  PHB_ITEM getHHCB;
  void setHorizontalHeaderDisplayRoleCB ( PHB_ITEM block );

  // Qt::DecorationRole
  PHB_ITEM getHHDecorationCB;
  void setHorizontalHeaderDecorationRoleCB ( PHB_ITEM block );

  // Qt::EditRole

  // Qt::ToolTipRole

  // Qt::StatusTipRole

  // Qt::WhatsThisRole

  // Qt::SizeHintRole

  // Qt::FontRole
  PHB_ITEM getHHFontCB;
  void setHorizontalHeaderFontRoleCB ( PHB_ITEM block );

  // Qt::TextAlignmentRole
  PHB_ITEM getHHAlignCB;
  void setHorizontalHeaderTextAlignmentRoleCB ( PHB_ITEM block );

  // Qt::BackgroundRole / Qt::BackgroundColorRole
  PHB_ITEM getHHBGColorCB;
  void setHorizontalHeaderBackgroundRoleCB ( PHB_ITEM block );

  // Qt::ForegroundRole
  PHB_ITEM getHHFGColorCB;
  void setHorizontalHeaderForegroundRoleCB ( PHB_ITEM block );

  // Qt::CheckStateRole

  // Qt::AccessibleTextRole

  // Qt::AccessibleDescriptionRole

  /*
   cabeçalho vertical
  */

  // Qt::DisplayRole
  PHB_ITEM getVHCB;
  void setVerticalHeaderDisplayRoleCB ( PHB_ITEM block );

  // Qt::DecorationRole
  PHB_ITEM getVHDecorationCB;
  void setVerticalHeaderDecorationRoleCB ( PHB_ITEM block );

  // Qt::EditRole

  // Qt::ToolTipRole

  // Qt::StatusTipRole

  // Qt::WhatsThisRole

  // Qt::SizeHintRole

  // Qt::FontRole
  PHB_ITEM getVHFontCB;
  void setVerticalHeaderFontRoleCB ( PHB_ITEM block );

  // Qt::TextAlignmentRole
  PHB_ITEM getVHAlignCB;
  void setVerticalHeaderTextAlignmentRoleCB ( PHB_ITEM block );

  // Qt::BackgroundRole / Qt::BackgroundColorRole
  PHB_ITEM getVHBGColorCB;
  void setVerticalHeaderBackgroundRoleCB ( PHB_ITEM block );

  // Qt::ForegroundRole
  PHB_ITEM getVHFGColorCB;
  void setVerticalHeaderForegroundRoleCB ( PHB_ITEM block );

  // Qt::CheckStateRole

  // Qt::AccessibleTextRole

  // Qt::AccessibleDescriptionRole

  QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const;
  QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const;
  int rowCount ( const QModelIndex & parent = QModelIndex() ) const;
  void reloadData();

};

#endif /* HABSTRACTLISTMODEL_H */
