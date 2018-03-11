%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPRINTER
#endif

CLASS QPrintDialog INHERIT QAbstractPrintDialog

   METHOD new
   METHOD delete
   METHOD open
   METHOD options
   METHOD printer
   METHOD setOption
   METHOD setOptions
   METHOD testOption
   METHOD done
   METHOD exec
   METHOD setVisible

   METHOD onAccepted

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPrintDialog ( QPrinter * printer, QWidget * parent = 0 )
$internalConstructor=|new1|QPrinter *,QWidget *=0

$prototype=QPrintDialog ( QWidget * parent = 0 )
$internalConstructor=|new2|QWidget *=0

//[1]QPrintDialog ( QPrinter * printer, QWidget * parent = 0 )
//[2]QPrintDialog ( QWidget * parent = 0 )

HB_FUNC_STATIC( QPRINTDIALOG_NEW )
{
  if( ISBETWEEN(1,2) && ISQPRINTER(1) && ISOPTQWIDGET(2) )
  {
    QPrintDialog_new1();
  }
  else if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QPrintDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void open ( QObject * receiver, const char * member )
$method=|void|open|QObject *,const char *

$prototype=PrintDialogOptions options () const
$method=|QAbstractPrintDialog::PrintDialogOptions|options|

$prototype=QPrinter * printer ()
$method=|QPrinter *|printer|

$prototype=void setOption ( PrintDialogOption option, bool on = true )
$method=|void|setOption|QPrintDialog::PrintDialogOption,bool=true

$prototype=void setOptions ( PrintDialogOptions options )
$method=|void|setOptions|QPrintDialog::PrintDialogOptions

$prototype=bool testOption ( PrintDialogOption option ) const
$method=|bool|testOption|QPrintDialog::PrintDialogOption

$prototype=void done ( int result )
$method=|void|done|int

$prototype=int exec ()
$method=|int|exec|

$prototype=void setVisible ( bool visible )
$method=|void|setVisible|bool

$beginSignals
$signal=|accepted(QPrinter*)
$endSignals

#pragma ENDDUMP
