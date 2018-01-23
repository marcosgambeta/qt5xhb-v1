/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQDESIGNERFORMWINDOWMANAGERINTERFACE_H
#define SLOTSQDESIGNERFORMWINDOWMANAGERINTERFACE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDesignerFormWindowManagerInterface>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQDesignerFormWindowManagerInterface: public QObject
{
  Q_OBJECT
  public:
  SlotsQDesignerFormWindowManagerInterface(QObject *parent = 0);
  ~SlotsQDesignerFormWindowManagerInterface();
  public slots:
  void activeFormWindowChanged ( QDesignerFormWindowInterface * formWindow );
  void formWindowAdded ( QDesignerFormWindowInterface * formWindow );
  void formWindowRemoved ( QDesignerFormWindowInterface * formWindow );
};

#endif // SLOTSQDESIGNERFORMWINDOWMANAGERINTERFACE_H
