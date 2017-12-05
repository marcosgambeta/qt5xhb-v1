/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef HSTYLEDITEMDELEGATE_H
#define HSTYLEDITEMDELEGATE_H

#include <QStyledItemDelegate>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

class HStyledItemDelegate : public QStyledItemDelegate
{
    Q_OBJECT
public:
    explicit HStyledItemDelegate(QObject *parent = 0);
    HStyledItemDelegate(PHB_ITEM paintBlock, QObject *parent = 0);
    HStyledItemDelegate(PHB_ITEM paintBlock, PHB_ITEM sizeHintBlock, QObject *parent = 0);
    ~HStyledItemDelegate();

    void paint(QPainter *painter, const QStyleOptionViewItem &option, const QModelIndex &index) const;
    QSize sizeHint(const QStyleOptionViewItem &option, const QModelIndex &index) const;

    PHB_ITEM paintBlock;
    PHB_ITEM sizeHintBlock;

};

#endif /* HSTYLEDITEMDELEGATE_H */
