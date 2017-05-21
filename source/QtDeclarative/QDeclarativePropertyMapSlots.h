/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQDECLARATIVEPROPERTYMAP_H
#define SLOTSQDECLARATIVEPROPERTYMAP_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDeclarativePropertyMap>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQDeclarativePropertyMap: public QObject
{
  Q_OBJECT
  public:
  SlotsQDeclarativePropertyMap(QObject *parent = 0);
  ~SlotsQDeclarativePropertyMap();
  public slots:
  void valueChanged ( const QString & key, const QVariant & value );
};

#endif // SLOTSQDECLARATIVEPROPERTYMAP_H
