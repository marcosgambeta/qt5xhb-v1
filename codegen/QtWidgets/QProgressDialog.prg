%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDialog

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QProgressDialog ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
$internalConstructor=|new1|QWidget *=0,Qt::WindowFlags=0

$prototype=QProgressDialog ( const QString & labelText, const QString & cancelButtonText, int minimum, int maximum, QWidget * parent = 0, Qt::WindowFlags f = 0 )
$internalConstructor=|new2|const QString &,const QString &,int,int,QWidget *=0,Qt::WindowFlags=0

//[1]explicit QProgressDialog ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
//[2]QProgressDialog ( const QString & labelText, const QString & cancelButtonText, int minimum, int maximum, QWidget * parent = 0, Qt::WindowFlags f = 0 )

HB_FUNC_STATIC( QPROGRESSDIALOG_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTQWIDGET(1) && ISOPTNUM(2) )
  {
    QProgressDialog_new1();
  }
  else if( ISBETWEEN(4,6) && ISCHAR(1) && ISCHAR(2) && ISNUM(3) && ISNUM(4) && ISOPTQWIDGET(5) && ISOPTNUM(6) )
  {
    QProgressDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool autoClose () const
$method=|bool|autoClose|

$prototype=void setAutoClose ( bool close )
$method=|void|setAutoClose|bool

$prototype=bool autoReset () const
$method=|bool|autoReset|

$prototype=void setAutoReset ( bool reset )
$method=|void|setAutoReset|bool

$prototype=QString labelText () const
$method=|QString|labelText|

$prototype=void setLabelText ( const QString & text )
$method=|void|setLabelText|const QString &

$prototype=int maximum () const
$method=|int|maximum|

$prototype=void setMaximum ( int maximum )
$method=|void|setMaximum|int

$prototype=int minimum () const
$method=|int|minimum|

$prototype=void setMinimum ( int minimum )
$method=|void|setMinimum|int

$prototype=int minimumDuration () const
$method=|int|minimumDuration|

$prototype=void setMinimumDuration ( int ms )
$method=|void|setMinimumDuration|int

$prototype=void open ( QObject * receiver, const char * member )
$method=|void|open|QObject *,const char *

$prototype=void setBar ( QProgressBar * bar )
$method=|void|setBar|QProgressBar *

$prototype=void setCancelButton ( QPushButton * cancelButton )
$method=|void|setCancelButton|QPushButton *

$prototype=void setLabel ( QLabel * label )
$method=|void|setLabel|QLabel *

$prototype=int value () const
$method=|int|value|

$prototype=void setValue ( int progress )
$method=|void|setValue|int

$prototype=bool wasCanceled () const
$method=|bool|wasCanceled|

$prototype=QSize sizeHint () const
$method=|QSize|sizeHint|

$prototype=void cancel ()
$method=|void|cancel|

$prototype=void reset ()
$method=|void|reset|

$prototype=void setCancelButtonText ( const QString & text )
$method=|void|setCancelButtonText|const QString &

$prototype=void setRange ( int minimum, int maximum )
$method=|void|setRange|int,int

$beginSignals
$signal=|canceled()
$endSignals

#pragma ENDDUMP
