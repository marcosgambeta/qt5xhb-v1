%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QValidator

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDoubleValidator ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QDoubleValidator ( double bottom, double top, int decimals, QObject * parent )
$internalConstructor=|new2|double,double,int,QObject *

/*
[1]QDoubleValidator ( QObject * parent = 0 )
[2]QDoubleValidator ( double bottom, double top, int decimals, QObject * parent = 0 )
*/

HB_FUNC_STATIC( QDOUBLEVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QDoubleValidator_new1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISOPTQOBJECT(4) )
  {
    QDoubleValidator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=double bottom () const
$method=|double|bottom|

$prototype=int decimals () const
$method=|int|decimals|

$prototype=Notation notation () const
$method=|QDoubleValidator::Notation|notation|

$prototype=void setBottom ( double )
$method=|void|setBottom|double

$prototype=void setDecimals ( int )
$method=|void|setDecimals|int

$prototype=void setNotation ( Notation )
$method=|void|setNotation|QDoubleValidator::Notation

$prototype=virtual void setRange ( double minimum, double maximum, int decimals = 0 )
$virtualMethod=|void|setRange|double,double,int=0

$prototype=void setTop ( double )
$method=|void|setTop|double

$prototype=double top () const
$method=|double|top|

$prototype=virtual QValidator::State validate ( QString & input, int & pos ) const
$virtualMethod=|QValidator::State|validate|QString &,int &

#pragma ENDDUMP
