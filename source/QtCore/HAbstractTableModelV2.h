/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef HABSTRACTTABLEMODELV2_H
#define HABSTRACTTABLEMODELV2_H

#include <QAbstractTableModel>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

class HAbstractTableModelV2 : public QAbstractTableModel
{
  Q_OBJECT

public:
  HAbstractTableModelV2( QObject * parent = 0 );
  virtual ~HAbstractTableModelV2();

  PHB_ITEM rowCountBlock;
  PHB_ITEM columnCountBlock;
  PHB_ITEM dataBlock;
  PHB_ITEM headerDataBlock;
  PHB_ITEM flagsBlock;
  PHB_ITEM setDataBlock;

  void setRowCountCB ( PHB_ITEM block );
  void setColumnCountCB ( PHB_ITEM block );
  void setDataCB ( PHB_ITEM block );
  void setHeaderDataCB ( PHB_ITEM block );
  void setFlagsCB ( PHB_ITEM block );
  void setSetDataCB ( PHB_ITEM block );

  int rowCount ( const QModelIndex & parent = QModelIndex() ) const;
  int columnCount ( const QModelIndex & parent = QModelIndex() ) const;
  QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const;
  QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const;
  Qt::ItemFlags flags(const QModelIndex &index) const;
  bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole);
  void reloadData();

};

#endif /* HABSTRACTTABLEMODELV2_H */
