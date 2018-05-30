%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD isCheckable
   METHOD isChecked
   METHOD isFlat
   METHOD setAlignment
   METHOD setCheckable
   METHOD setFlat
   METHOD setTitle
   METHOD title
   METHOD minimumSizeHint
   METHOD setChecked

   METHOD onClicked
   METHOD onToggled

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGroupBox ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QGroupBox ( const QString & title, QWidget * parent = 0 )
$internalConstructor=|new2|const QString &,QWidget *=0

//[1]QGroupBox ( QWidget * parent = 0 )
//[2]QGroupBox ( const QString & title, QWidget * parent = 0 )

HB_FUNC_STATIC( QGROUPBOX_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QGroupBox_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QGroupBox_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=Qt::Alignment alignment () const
$method=|Qt::Alignment|alignment|

$prototype=bool isCheckable () const
$method=|bool|isCheckable|

$prototype=bool isChecked () const
$method=|bool|isChecked|

$prototype=bool isFlat () const
$method=|bool|isFlat|

$prototype=void setAlignment ( int alignment )
$method=|void|setAlignment|int

$prototype=void setCheckable ( bool checkable )
$method=|void|setCheckable|bool

$prototype=void setFlat ( bool flat )
$method=|void|setFlat|bool

$prototype=void setTitle ( const QString & title )
$method=|void|setTitle|const QString &

$prototype=QString title () const
$method=|QString|title|

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=void setChecked ( bool checked )
$method=|void|setChecked|bool

$beginSignals
$signal=|clicked(bool)
$signal=|toggled(bool)
$endSignals

#pragma ENDDUMP
