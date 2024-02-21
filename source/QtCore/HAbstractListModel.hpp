/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef HABSTRACTLISTMODEL_H
#define HABSTRACTLISTMODEL_H

#include <QtCore/QAbstractListModel>
#include <QtCore/QDate>
#include <QtCore/QSize>
#include <QtGui/QBrush>
#include <QtGui/QColor>
#include <QtGui/QFont>
#include <QtGui/QIcon>
#include <QtGui/QPixmap>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

class HAbstractListModel : public QAbstractListModel
{
  Q_OBJECT

public:
  HAbstractListModel(QObject *parent = NULL);
  virtual ~HAbstractListModel();

private:
  /*
   linhas
  */

  PHB_ITEM m_rowCountCB;

  /*
   células
  */

  PHB_ITEM m_itemDisplayCB;               // Qt::DisplayRole
  PHB_ITEM m_itemDecorationCB;            // Qt::DecorationRole
  PHB_ITEM m_itemEditCB;                  // Qt::EditRole
  PHB_ITEM m_itemToolTipCB;               // Qt::ToolTipRole
  PHB_ITEM m_itemStatusTipCB;             // Qt::StatusTipRole
  PHB_ITEM m_itemWhatsThisCB;             // Qt::WhatsThisRole
  PHB_ITEM m_itemSizeHintCB;              // Qt::SizeHintRole
  PHB_ITEM m_itemFontCB;                  // Qt::FontRole
  PHB_ITEM m_itemTextAlignmentCB;         // Qt::TextAlignmentRole
  PHB_ITEM m_itemBackgroundCB;            // Qt::BackgroundRole / Qt::BackgroundColorRole
  PHB_ITEM m_itemForegroundCB;            // Qt::ForegroundRole / Qt::TextColorRole
  PHB_ITEM m_itemCheckStateCB;            // Qt::CheckStateRole
  PHB_ITEM m_itemAccessibleTextCB;        // Qt::AccessibleTextRole
  PHB_ITEM m_itemAccessibleDescriptionCB; // Qt::AccessibleDescriptionRole

  /*
   cabeçalho horizontal
  */

  PHB_ITEM m_horizontalHeaderDisplayCB;       // Qt::DisplayRole
  PHB_ITEM m_horizontalHeaderDecorationCB;    // Qt::DecorationRole
                                              // Qt::EditRole
  PHB_ITEM m_horizontalHeaderToolTipCB;       // Qt::ToolTipRole
                                              // Qt::StatusTipRole
                                              // Qt::WhatsThisRole
  PHB_ITEM m_horizontalHeaderSizeHintCB;      // Qt::SizeHintRole
  PHB_ITEM m_horizontalHeaderFontCB;          // Qt::FontRole
  PHB_ITEM m_horizontalHeaderTextAlignmentCB; // Qt::TextAlignmentRole
  PHB_ITEM m_horizontalHeaderBackgroundCB;    // Qt::BackgroundRole / Qt::BackgroundColorRole
  PHB_ITEM m_horizontalHeaderForegroundCB;    // Qt::ForegroundRole
                                              // Qt::CheckStateRole
                                              // Qt::AccessibleTextRole
                                              // Qt::AccessibleDescriptionRole

  /*
   cabeçalho vertical
  */

  PHB_ITEM m_verticalHeaderDisplayCB;       // Qt::DisplayRole
  PHB_ITEM m_verticalHeaderDecorationCB;    // Qt::DecorationRole
                                            // Qt::EditRole
  PHB_ITEM m_verticalHeaderToolTipCB;       // Qt::ToolTipRole
                                            // Qt::StatusTipRole
                                            // Qt::WhatsThisRole
  PHB_ITEM m_verticalHeaderSizeHintCB;      // Qt::SizeHintRole
  PHB_ITEM m_verticalHeaderFontCB;          // Qt::FontRole
  PHB_ITEM m_verticalHeaderTextAlignmentCB; // Qt::TextAlignmentRole
  PHB_ITEM m_verticalHeaderBackgroundCB;    // Qt::BackgroundRole / Qt::BackgroundColorRole
  PHB_ITEM m_verticalHeaderForegroundCB;    // Qt::ForegroundRole
                                            // Qt::CheckStateRole
                                            // Qt::AccessibleTextRole
                                            // Qt::AccessibleDescriptionRole

  PHB_ITEM m_flagsCB;
  PHB_ITEM m_setDataCB;

public:
  /*
   linhas
  */

  void setRowCountCB(PHB_ITEM block);

  /*
   células
  */

  void setCB(int role, PHB_ITEM block);
  void setDisplayRoleCB(PHB_ITEM block);               // Qt::DisplayRole
  void setDecorationRoleCB(PHB_ITEM block);            // Qt::DecorationRole
  void setEditRoleCB(PHB_ITEM block);                  // Qt::EditRole
  void setToolTipRoleCB(PHB_ITEM block);               // Qt::ToolTipRole
  void setStatusTipRoleCB(PHB_ITEM block);             // Qt::StatusTipRole
  void setWhatsThisRoleCB(PHB_ITEM block);             // Qt::WhatsThisRole
  void setSizeHintRoleCB(PHB_ITEM block);              // Qt::SizeHintRole
  void setFontRoleCB(PHB_ITEM block);                  // Qt::FontRole
  void setTextAlignmentRoleCB(PHB_ITEM block);         // Qt::TextAlignmentRole
  void setBackgroundRoleCB(PHB_ITEM block);            // Qt::BackgroundRole / Qt::BackgroundColorRole
  void setForegroundRoleCB(PHB_ITEM block);            // Qt::ForegroundRole / Qt::TextColorRole
  void setCheckStateRoleCB(PHB_ITEM block);            // Qt::CheckStateRole
  void setAccessibleTextRoleCB(PHB_ITEM block);        // Qt::AccessibleTextRole
  void setAccessibleDescriptionRoleCB(PHB_ITEM block); // Qt::AccessibleDescriptionRole

  /*
   cabeçalho horizontal
  */

  void setHorizontalHeaderCB(int role, PHB_ITEM block);
  void setHorizontalHeaderDisplayRoleCB(PHB_ITEM block);       // Qt::DisplayRole
  void setHorizontalHeaderDecorationRoleCB(PHB_ITEM block);    // Qt::DecorationRole
                                                               // Qt::EditRole
  void setHorizontalHeaderToolTipRoleCB(PHB_ITEM block);       // Qt::ToolTipRole
                                                               // Qt::StatusTipRole
                                                               // Qt::WhatsThisRole
  void setHorizontalHeaderSizeHintRoleCB(PHB_ITEM block);      // Qt::SizeHintRole
  void setHorizontalHeaderFontRoleCB(PHB_ITEM block);          // Qt::FontRole
  void setHorizontalHeaderTextAlignmentRoleCB(PHB_ITEM block); // Qt::TextAlignmentRole
  void setHorizontalHeaderBackgroundRoleCB(PHB_ITEM block);    // Qt::BackgroundRole / Qt::BackgroundColorRole
  void setHorizontalHeaderForegroundRoleCB(PHB_ITEM block);    // Qt::ForegroundRole
                                                               // Qt::CheckStateRole
                                                               // Qt::AccessibleTextRole
                                                               // Qt::AccessibleDescriptionRole

  /*
   cabeçalho vertical
  */

  void setVerticalHeaderCB(int role, PHB_ITEM block);
  void setVerticalHeaderDisplayRoleCB(PHB_ITEM block);       // Qt::DisplayRole
  void setVerticalHeaderDecorationRoleCB(PHB_ITEM block);    // Qt::DecorationRole
                                                             // Qt::EditRole
  void setVerticalHeaderToolTipRoleCB(PHB_ITEM block);       // Qt::ToolTipRole
                                                             // Qt::StatusTipRole
                                                             // Qt::WhatsThisRole
  void setVerticalHeaderSizeHintRoleCB(PHB_ITEM block);      // Qt::SizeHintRole
  void setVerticalHeaderFontRoleCB(PHB_ITEM block);          // Qt::FontRole
  void setVerticalHeaderTextAlignmentRoleCB(PHB_ITEM block); // Qt::TextAlignmentRole
  void setVerticalHeaderBackgroundRoleCB(PHB_ITEM block);    // Qt::BackgroundRole / Qt::BackgroundColorRole
  void setVerticalHeaderForegroundRoleCB(PHB_ITEM block);    // Qt::ForegroundRole
                                                             // Qt::CheckStateRole
                                                             // Qt::AccessibleTextRole
                                                             // Qt::AccessibleDescriptionRole

  void setFlagsCB(PHB_ITEM block);
  void setSetDataCB(PHB_ITEM block);

  QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const;
  QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const;
  int rowCount(const QModelIndex &parent = QModelIndex()) const;
  void reloadData();
  Qt::ItemFlags flags(const QModelIndex &index) const;
  bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole);
};

#endif /* HABSTRACTLISTMODEL_H */
