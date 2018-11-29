%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QRegExpValidator ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QRegExpValidator ( const QRegExp & rx, QObject * parent = 0 )
$internalConstructor=|new2|const QRegExp &,QObject *=0

//[1]QRegExpValidator ( QObject * parent = 0 )
//[2]QRegExpValidator ( const QRegExp & rx, QObject * parent )

HB_FUNC_STATIC( QREGEXPVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QRegExpValidator_new1();
  }
  else if( ISNUMPAR(2) && ISQREGEXP(1) && ISQOBJECT(2) )
  {
    QRegExpValidator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=const QRegExp & regExp () const
$method=|const QRegExp &|regExp|

$prototype=void setRegExp ( const QRegExp & rx )
$method=|void|setRegExp|const QRegExp &

$prototype=virtual QValidator::State validate ( QString & input, int & pos ) const
$virtualMethod=|QValidator::State|validate|QString &,int &

#pragma ENDDUMP
