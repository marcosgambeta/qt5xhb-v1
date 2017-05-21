/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQWIZARDPAGE_H
#define SLOTSQWIZARDPAGE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QWizardPage>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQWizardPage: public QObject
{
  Q_OBJECT
  public:
  SlotsQWizardPage(QObject *parent = 0);
  ~SlotsQWizardPage();
  public slots:
  void completeChanged ();
};

#endif // SLOTSQWIZARDPAGE_H
