/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQDNSLOOKUP_H
#define SLOTSQDNSLOOKUP_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDnsLookup>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQDnsLookup: public QObject
{
  Q_OBJECT
  public:
  SlotsQDnsLookup(QObject *parent = 0);
  ~SlotsQDnsLookup();
  public slots:
  void finished();
  void nameChanged(const QString & name);
  void typeChanged(QDnsLookup::Type type);
};

#endif // SLOTSQDNSLOOKUP_H
