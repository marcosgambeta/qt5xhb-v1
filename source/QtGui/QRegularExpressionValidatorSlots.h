/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQREGULAREXPRESSIONVALIDATOR_H
#define SLOTSQREGULAREXPRESSIONVALIDATOR_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QRegularExpressionValidator>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQRegularExpressionValidator: public QObject
{
  Q_OBJECT
  public:
  SlotsQRegularExpressionValidator(QObject *parent = 0);
  ~SlotsQRegularExpressionValidator();
  public slots:
  void regularExpressionChanged(const QRegularExpression &re);
};

#endif // SLOTSQREGULAREXPRESSIONVALIDATOR_H
