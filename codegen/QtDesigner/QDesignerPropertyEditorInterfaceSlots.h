/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQDESIGNERPROPERTYEDITORINTERFACE_H
#define SLOTSQDESIGNERPROPERTYEDITORINTERFACE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDesignerPropertyEditorInterface>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQDesignerPropertyEditorInterface: public QObject
{
  Q_OBJECT
  public:
  SlotsQDesignerPropertyEditorInterface(QObject *parent = 0);
  ~SlotsQDesignerPropertyEditorInterface();
  public slots:
  void propertyChanged ( const QString & name, const QVariant & value );
};

#endif // SLOTSQDESIGNERPROPERTYEDITORINTERFACE_H
