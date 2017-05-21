/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
