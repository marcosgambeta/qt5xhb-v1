/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQFILESYSTEMMODEL_H
#define SLOTSQFILESYSTEMMODEL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QFileSystemModel>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQFileSystemModel: public QObject
{
  Q_OBJECT
  public:
  SlotsQFileSystemModel(QObject *parent = 0);
  ~SlotsQFileSystemModel();
  public slots:
  void directoryLoaded ( const QString & path );
  void fileRenamed ( const QString & path, const QString & oldName, const QString & newName );
  void rootPathChanged ( const QString & newPath );
};

#endif // SLOTSQFILESYSTEMMODEL_H
