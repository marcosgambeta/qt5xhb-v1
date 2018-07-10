%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSplashScreen ( const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
$internalConstructor=|new1|const QPixmap &=QPixmap(),Qt::WindowFlags=0

$prototype=QSplashScreen ( QWidget * parent, const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
$internalConstructor=|new2|QWidget *,const QPixmap &=QPixmap(),Qt::WindowFlags=0

//[1]QSplashScreen ( const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
//[2]QSplashScreen ( QWidget * parent, const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )

HB_FUNC_STATIC( QSPLASHSCREEN_NEW )
{
  if( ISBETWEEN(0,2) && (ISQPIXMAP(1)||ISNIL(1)) && ISOPTNUM(2) )
  {
    QSplashScreen_new1();
  }
  else if( ISBETWEEN(1,3) && ISQWIDGET(1) && (ISQPIXMAP(2)||ISNIL(2)) && ISOPTNUM(3) )
  {
    QSplashScreen_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void finish ( QWidget * mainWin )
$method=|void|finish|QWidget *

$prototype=const QPixmap pixmap () const
$method=|const QPixmap|pixmap|

$prototype=void setPixmap ( const QPixmap & pixmap )
$method=|void|setPixmap|const QPixmap &

$prototype=void repaint ()
$method=|void|repaint|

$prototype=void clearMessage ()
$method=|void|clearMessage|

$prototype=void showMessage ( const QString & message, int alignment = Qt::AlignLeft, const QColor & color = Qt::black )
$method=|void|showMessage|const QString &,int=Qt::AlignLeft,const QColor &=Qt::black

$beginSignals
$signal=|messageChanged(QString)
$endSignals

#pragma ENDDUMP
