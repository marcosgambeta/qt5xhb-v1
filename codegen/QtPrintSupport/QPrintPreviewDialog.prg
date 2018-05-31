%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDialog

   METHOD new
   METHOD delete
   METHOD open
   METHOD printer
   METHOD done
   METHOD setVisible

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QPrintPreviewDialog ( QPrinter * printer, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
$internalConstructor=|new1|QPrinter *,QWidget *=0,Qt::WindowFlags=0

$prototype=explicit QPrintPreviewDialog ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
$internalConstructor=|new2|QWidget *=0,Qt::WindowFlags=0

//[1]explicit QPrintPreviewDialog ( QPrinter * printer, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
//[2]explicit QPrintPreviewDialog ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )

HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_NEW )
{
  if( ISBETWEEN(1,3) && ISQPRINTER(1) && ISOPTQWIDGET(2) && ISOPTNUM(3) )
  {
    QPrintPreviewDialog_new1();
  }
  else if( ISBETWEEN(0,2) && ISOPTQWIDGET(1) && ISOPTNUM(2) )
  {
    QPrintPreviewDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void open ( QObject * receiver, const char * member )
$method=|void|open|QObject *,const char *

$prototype=QPrinter * printer ()
$method=|QPrinter *|printer|

$prototype=virtual void done ( int result )
$virtualMethod=|void|done|int

$prototype=virtual void setVisible ( bool visible )
$virtualMethod=|void|setVisible|bool

$beginSignals
$signal=|paintRequested(QPrinter*)
$endSignals

#pragma ENDDUMP
