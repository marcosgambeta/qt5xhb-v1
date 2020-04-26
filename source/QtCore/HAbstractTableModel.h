/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef HABSTRACTTABLEMODEL_H
#define HABSTRACTTABLEMODEL_H

#include <QtCore/QAbstractTableModel>
#include <QtCore/QDate>
#include <QtCore/QSize>
#include <QtGui/QBrush>
#include <QtGui/QColor>
#include <QtGui/QFont>
#include <QtGui/QIcon>
#include <QtGui/QPixmap>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

class HAbstractTableModel : public QAbstractTableModel
{
  Q_OBJECT

public:
  HAbstractTableModel( QObject * parent = 0 );
  virtual ~HAbstractTableModel();

  PHB_ITEM m_rowCountCB;
  PHB_ITEM m_colCountCB;

  PHB_ITEM m_getFieldCB;
  PHB_ITEM m_getFieldDecorationCB;
  PHB_ITEM m_getFieldEditCB;
  PHB_ITEM m_getFieldToolTipCB;
  PHB_ITEM m_getFieldStatusTipCB;
  PHB_ITEM m_getFieldWhatsThisCB;
  PHB_ITEM m_getFieldSizeHintCB;
  PHB_ITEM m_getFieldFontCB;
  PHB_ITEM m_getFieldAlignCB;
  PHB_ITEM m_getFieldBGColorCB;
  PHB_ITEM m_getFieldFGColorCB;

  PHB_ITEM m_getHHCB;
  PHB_ITEM m_getHHDecorationCB;
  PHB_ITEM m_getHHFontCB;
  PHB_ITEM m_getHHAlignCB;
  PHB_ITEM m_getHHBGColorCB;
  PHB_ITEM m_getHHFGColorCB;

  PHB_ITEM m_getVHCB;
  PHB_ITEM m_getVHDecorationCB;
  PHB_ITEM m_getVHFontCB;
  PHB_ITEM m_getVHAlignCB;
  PHB_ITEM m_getVHBGColorCB;
  PHB_ITEM m_getVHFGColorCB;

  void setRowCountCB( PHB_ITEM block );
  void setColumnCountCB( PHB_ITEM block );

  void setDisplayRoleCB( PHB_ITEM block );
  void setDecorationRoleCB( PHB_ITEM block );
  void setEditRoleCB( PHB_ITEM block );
  void setToolTipRoleCB( PHB_ITEM block );
  void setStatusTipRoleCB( PHB_ITEM block );
  void setWhatsThisRoleCB( PHB_ITEM block );
  void setSizeHintRoleCB( PHB_ITEM block );
  void setFontRoleCB( PHB_ITEM block );
  void setTextAlignmentRoleCB( PHB_ITEM block );
  void setBackgroundRoleCB( PHB_ITEM block );
  void setForegroundRoleCB( PHB_ITEM block );

  void setHorizontalHeaderDisplayRoleCB( PHB_ITEM block );
  void setHorizontalHeaderDecorationRoleCB( PHB_ITEM block );
  void setHorizontalHeaderFontRoleCB( PHB_ITEM block );
  void setHorizontalHeaderTextAlignmentRoleCB( PHB_ITEM block );
  void setHorizontalHeaderBackgroundRoleCB( PHB_ITEM block );
  void setHorizontalHeaderForegroundRoleCB( PHB_ITEM block );

  void setVerticalHeaderDisplayRoleCB( PHB_ITEM block );
  void setVerticalHeaderDecorationRoleCB( PHB_ITEM block );
  void setVerticalHeaderFontRoleCB( PHB_ITEM block );
  void setVerticalHeaderTextAlignmentRoleCB( PHB_ITEM block );
  void setVerticalHeaderBackgroundRoleCB( PHB_ITEM block );
  void setVerticalHeaderForegroundRoleCB( PHB_ITEM block );

  QVariant data( const QModelIndex & index, int role = Qt::DisplayRole ) const;
  QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const;
  int rowCount( const QModelIndex & parent = QModelIndex() ) const;
  int columnCount( const QModelIndex & parent = QModelIndex() ) const;
  void reloadData();
  //QModelIndex createIndex ( int row, int column );

};

#endif /* HABSTRACTTABLEMODEL_H */
