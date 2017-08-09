$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QProgressDialog INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD autoClose
   METHOD setAutoClose
   METHOD autoReset
   METHOD setAutoReset
   METHOD labelText
   METHOD setLabelText
   METHOD maximum
   METHOD setMaximum
   METHOD minimum
   METHOD setMinimum
   METHOD minimumDuration
   METHOD setMinimumDuration
   METHOD open
   METHOD setBar
   METHOD setCancelButton
   METHOD setLabel
   METHOD value
   METHOD setValue
   METHOD wasCanceled
   METHOD sizeHint
   METHOD cancel
   METHOD reset
   METHOD setCancelButtonText
   METHOD setRange

   METHOD onCanceled

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QProgressDialog ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
$internalConstructor=|new1|QWidget *=0,Qt::WindowFlags=0

/*
QProgressDialog ( const QString & labelText, const QString & cancelButtonText, int minimum, int maximum, QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
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

/*
bool autoClose () const
*/
$method=|bool|autoClose|

/*
void setAutoClose ( bool close )
*/
$method=|void|setAutoClose|bool

/*
bool autoReset () const
*/
$method=|bool|autoReset|

/*
void setAutoReset ( bool reset )
*/
$method=|void|setAutoReset|bool

/*
QString labelText () const
*/
$method=|QString|labelText|

/*
void setLabelText ( const QString & text )
*/
$method=|void|setLabelText|const QString &

/*
int maximum () const
*/
$method=|int|maximum|

/*
void setMaximum ( int maximum )
*/
$method=|void|setMaximum|int

/*
int minimum () const
*/
$method=|int|minimum|

/*
void setMinimum ( int minimum )
*/
$method=|void|setMinimum|int

/*
int minimumDuration () const
*/
$method=|int|minimumDuration|

/*
void setMinimumDuration ( int ms )
*/
$method=|void|setMinimumDuration|int

/*
void open ( QObject * receiver, const char * member )
*/
$method=|void|open|QObject *,const char *

/*
void setBar ( QProgressBar * bar )
*/
$method=|void|setBar|QProgressBar *

/*
void setCancelButton ( QPushButton * cancelButton )
*/
$method=|void|setCancelButton|QPushButton *

/*
void setLabel ( QLabel * label )
*/
$method=|void|setLabel|QLabel *

/*
int value () const
*/
$method=|int|value|

/*
void setValue ( int progress )
*/
$method=|void|setValue|int

/*
bool wasCanceled () const
*/
$method=|bool|wasCanceled|

/*
QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
void cancel ()
*/
$method=|void|cancel|

/*
void reset ()
*/
$method=|void|reset|

/*
void setCancelButtonText ( const QString & text )
*/
$method=|void|setCancelButtonText|const QString &

/*
void setRange ( int minimum, int maximum )
*/
$method=|void|setRange|int,int

#pragma ENDDUMP
