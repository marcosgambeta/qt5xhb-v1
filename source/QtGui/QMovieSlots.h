/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQMOVIE_H
#define SLOTSQMOVIE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMovie>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQMovie: public QObject
{
  Q_OBJECT
  public:
  SlotsQMovie(QObject *parent = 0);
  ~SlotsQMovie();
  public slots:
  void error ( QImageReader::ImageReaderError error );
  void finished ();
  void frameChanged ( int frameNumber );
  void resized ( const QSize & size );
  void started ();
  void stateChanged ( QMovie::MovieState state );
  void updated ( const QRect & rect );
};

#endif // SLOTSQMOVIE_H
