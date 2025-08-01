//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#ifndef HABSTRACTLISTMODELV2_H
#define HABSTRACTLISTMODELV2_H

#include <QtCore/QAbstractListModel>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

class HAbstractListModelV2 : public QAbstractListModel
{
  Q_OBJECT

public:
  HAbstractListModelV2(QObject *parent = NULL);
  virtual ~HAbstractListModelV2();

private:
  PHB_ITEM m_rowCountBlock;
  PHB_ITEM m_dataBlock;
  PHB_ITEM m_headerDataBlock;
  PHB_ITEM m_flagsBlock;
  PHB_ITEM m_setDataBlock;

public:
  void setRowCountCB(PHB_ITEM block);
  void setDataCB(PHB_ITEM block);
  void setHeaderDataCB(PHB_ITEM block);
  void setFlagsCB(PHB_ITEM block);
  void setSetDataCB(PHB_ITEM block);

  int rowCount(const QModelIndex &parent = QModelIndex()) const;
  QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const;
  QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const;
  Qt::ItemFlags flags(const QModelIndex &index) const;
  bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole);
  void reloadData();
};

#endif // HABSTRACTLISTMODELV2_H
