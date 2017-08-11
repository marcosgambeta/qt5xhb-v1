$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPRINTER
#endif

CLASS QPageSetupDialog INHERIT QDialog

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD open
   METHOD printer
   METHOD setVisible
   METHOD exec
   METHOD done

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QPageSetupDialog ( QPrinter * printer, QWidget * parent = 0 )
*/
$internalConstructor=|new1|QPrinter *,QWidget *=0

/*
QPageSetupDialog ( QWidget * parent = 0 )
*/
$internalConstructor=|new2|QWidget *=0

//[1]QPageSetupDialog(QPrinter *printer, QWidget *parent = 0)
//[2]QPageSetupDialog(QWidget *parent = 0)

HB_FUNC_STATIC( QPAGESETUPDIALOG_NEW )
{
  if( ISBETWEEN(1,2) && ISQPRINTER(1) && ISOPTQWIDGET(2) )
  {
    QPageSetupDialog_new1();
  }
  else if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QPageSetupDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void open ( QObject * receiver, const char * member )
*/
$method=|void|open|QObject *,const char *

/*
QPrinter * printer ()
*/
$method=|QPrinter *|printer|

/*
virtual void setVisible ( bool visible )
*/
$method=|void|setVisible|bool

/*
virtual int exec()
*/
$method=|int|exec|

/*
void done(int result)
*/
$method=|void|done|int

#pragma ENDDUMP
