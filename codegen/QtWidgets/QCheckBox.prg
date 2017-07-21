$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QCheckBox INHERIT QAbstractButton

   METHOD new
   METHOD delete
   METHOD checkState
   METHOD isTristate
   METHOD setCheckState
   METHOD setTristate
   METHOD minimumSizeHint
   METHOD sizeHint

   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QCheckBox ( QWidget * parent = 0 )
*/
$internalConstructor=|new1|QWidget *=0

/*
explicit QCheckBox ( const QString & text, QWidget * parent = 0 )
*/
$internalConstructor=|new2|const QString &,QWidget *=0

//[1]explicit QCheckBox ( QWidget * parent = 0 )
//[2]explicit QCheckBox ( const QString & text, QWidget * parent = 0 )

HB_FUNC_STATIC( QCHECKBOX_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QCheckBox_new1 ();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QCheckBox_new2 ();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
Qt::CheckState checkState () const
*/
$method=|Qt::CheckState|checkState|

/*
bool isTristate () const
*/
$method=|bool|isTristate|

/*
void setCheckState ( Qt::CheckState state )
*/
$method=|void|setCheckState|Qt::CheckState

/*
void setTristate ( bool y = true )
*/
$method=|void|setTristate|bool=true

/*
QSize minimumSizeHint () const
*/
$method=|QSize|minimumSizeHint|

/*
QSize sizeHint () const
*/
$method=|QSize|sizeHint|

#pragma ENDDUMP
