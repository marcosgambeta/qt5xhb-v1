/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

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

private:

  /*
   linhas
  */

  PHB_ITEM m_rowCountCB;

  /*
   células
  */

  PHB_ITEM m_getFieldCB;           // Qt::DisplayRole
  PHB_ITEM m_getFieldDecorationCB; // Qt::DecorationRole
  PHB_ITEM m_getFieldEditCB;       // Qt::EditRole
  PHB_ITEM m_getFieldToolTipCB;    // Qt::ToolTipRole
  PHB_ITEM m_getFieldStatusTipCB;  // Qt::StatusTipRole
  PHB_ITEM m_getFieldWhatsThisCB;  // Qt::WhatsThisRole
  PHB_ITEM m_getFieldSizeHintCB;   // Qt::SizeHintRole
  PHB_ITEM m_getFieldFontCB;       // Qt::FontRole
  PHB_ITEM m_getFieldAlignCB;      // Qt::TextAlignmentRole
  PHB_ITEM m_getFieldBGColorCB;    // Qt::BackgroundRole / Qt::BackgroundColorRole
  PHB_ITEM m_getFieldFGColorCB;    // Qt::ForegroundRole / Qt::TextColorRole
                                   // Qt::CheckStateRole
                                   // Qt::AccessibleTextRole
                                   // Qt::AccessibleDescriptionRole

  /*
   cabeçalho horizontal
  */

  PHB_ITEM m_getHHCB;              // Qt::DisplayRole
  PHB_ITEM m_getHHDecorationCB;    // Qt::DecorationRole
                                   // Qt::EditRole
                                   // Qt::ToolTipRole
                                   // Qt::StatusTipRole
                                   // Qt::WhatsThisRole
                                   // Qt::SizeHintRole
  PHB_ITEM m_getHHFontCB;          // Qt::FontRole
  PHB_ITEM m_getHHAlignCB;         // Qt::TextAlignmentRole
  PHB_ITEM m_getHHBGColorCB;       // Qt::BackgroundRole / Qt::BackgroundColorRole
  PHB_ITEM m_getHHFGColorCB;       // Qt::ForegroundRole
                                   // Qt::CheckStateRole
                                   // Qt::AccessibleTextRole
                                   // Qt::AccessibleDescriptionRole

  /*
   cabeçalho vertical
  */

  PHB_ITEM m_getVHCB;              // Qt::DisplayRole
  PHB_ITEM m_getVHDecorationCB;    // Qt::DecorationRole
                                   // Qt::EditRole
                                   // Qt::ToolTipRole
                                   // Qt::StatusTipRole
                                   // Qt::WhatsThisRole
                                   // Qt::SizeHintRole

  PHB_ITEM m_getVHFontCB;          // Qt::FontRole
  PHB_ITEM m_getVHAlignCB;         // Qt::TextAlignmentRole
  PHB_ITEM m_getVHBGColorCB;       // Qt::BackgroundRole / Qt::BackgroundColorRole
  PHB_ITEM m_getVHFGColorCB;       // Qt::ForegroundRole
                                   // Qt::CheckStateRole
                                   // Qt::AccessibleTextRole
                                   // Qt::AccessibleDescriptionRole

public:

  /*
   linhas
  */

  void setRowCountCB( PHB_ITEM block );

  /*
   células
  */

  void setDisplayRoleCB( PHB_ITEM block );                       // Qt::DisplayRole
  void setDecorationRoleCB( PHB_ITEM block );                    // Qt::DecorationRole
  void setEditRoleCB( PHB_ITEM block );                          // Qt::EditRole
  void setToolTipRoleCB( PHB_ITEM block );                       // Qt::ToolTipRole
  void setStatusTipRoleCB( PHB_ITEM block );                     // Qt::StatusTipRole
  void setWhatsThisRoleCB( PHB_ITEM block );                     // Qt::WhatsThisRole
  void setSizeHintRoleCB( PHB_ITEM block );                      // Qt::SizeHintRole
  void setFontRoleCB( PHB_ITEM block );                          // Qt::FontRole
  void setTextAlignmentRoleCB( PHB_ITEM block );                 // Qt::TextAlignmentRole
  void setBackgroundRoleCB( PHB_ITEM block );                    // Qt::BackgroundRole / Qt::BackgroundColorRole
  void setForegroundRoleCB( PHB_ITEM block );                    // Qt::ForegroundRole / Qt::TextColorRole
                                                                 // Qt::CheckStateRole
                                                                 // Qt::AccessibleTextRole
                                                                 // Qt::AccessibleDescriptionRole

  /*
   cabeçalho horizontal
  */

  void setHorizontalHeaderDisplayRoleCB( PHB_ITEM block );       // Qt::DisplayRole
  void setHorizontalHeaderDecorationRoleCB( PHB_ITEM block );    // Qt::DecorationRole
                                                                 // Qt::EditRole
                                                                 // Qt::ToolTipRole
                                                                 // Qt::StatusTipRole
                                                                 // Qt::WhatsThisRole
                                                                 // Qt::SizeHintRole

  void setHorizontalHeaderFontRoleCB( PHB_ITEM block );          // Qt::FontRole
  void setHorizontalHeaderTextAlignmentRoleCB( PHB_ITEM block ); // Qt::TextAlignmentRole
  void setHorizontalHeaderBackgroundRoleCB( PHB_ITEM block );    // Qt::BackgroundRole / Qt::BackgroundColorRole
  void setHorizontalHeaderForegroundRoleCB( PHB_ITEM block );    // Qt::ForegroundRole
                                                                 // Qt::CheckStateRole
                                                                 // Qt::AccessibleTextRole
                                                                 // Qt::AccessibleDescriptionRole

  /*
   cabeçalho vertical
  */

  void setVerticalHeaderDisplayRoleCB( PHB_ITEM block );         // Qt::DisplayRole
  void setVerticalHeaderDecorationRoleCB( PHB_ITEM block );      // Qt::DecorationRole
                                                                 // Qt::EditRole
                                                                 // Qt::ToolTipRole
                                                                 // Qt::StatusTipRole
                                                                 // Qt::WhatsThisRole
                                                                 // Qt::SizeHintRole
  void setVerticalHeaderFontRoleCB( PHB_ITEM block );            // Qt::FontRole
  void setVerticalHeaderTextAlignmentRoleCB( PHB_ITEM block );   // Qt::TextAlignmentRole
  void setVerticalHeaderBackgroundRoleCB( PHB_ITEM block );      // Qt::BackgroundRole / Qt::BackgroundColorRole
  void setVerticalHeaderForegroundRoleCB( PHB_ITEM block );      // Qt::ForegroundRole
                                                                 // Qt::CheckStateRole
                                                                 // Qt::AccessibleTextRole
                                                                 // Qt::AccessibleDescriptionRole

  QVariant data( const QModelIndex & index, int role = Qt::DisplayRole ) const;
  QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const;
  int rowCount( const QModelIndex & parent = QModelIndex() ) const;
  void reloadData();
};

#endif /* HABSTRACTLISTMODEL_H */
