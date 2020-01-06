%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebKit

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWebElementCollection ()
$internalConstructor=|new1|

$prototype=QWebElementCollection ( const QWebElement & contextElement, const QString & query )
$internalConstructor=|new2|const QWebElement &,const QString &

$prototype=QWebElementCollection ( const QWebElementCollection & other )
$internalConstructor=|new3|const QWebElementCollection &

//[1]QWebElementCollection ()
//[2]QWebElementCollection ( const QWebElement & contextElement, const QString & query )
//[3]QWebElementCollection ( const QWebElementCollection & other )

HB_FUNC_STATIC( QWEBELEMENTCOLLECTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QWebElementCollection_new1();
  }
  else if( ISNUMPAR(2) && ISQWEBELEMENT(1) && ISCHAR(2) )
  {
    QWebElementCollection_new2();
  }
  else if( ISNUMPAR(1) && ISQWEBELEMENTCOLLECTION(1) )
  {
    QWebElementCollection_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void append ( const QWebElementCollection & other )
$method=|void|append|const QWebElementCollection &

$prototype=QWebElement at ( int i ) const
$method=|QWebElement|at|int

$prototype=int count () const
$method=|int|count|

$prototype=QWebElement first () const
$method=|QWebElement|first|

$prototype=QWebElement last () const
$method=|QWebElement|last|

$prototype=QList<QWebElement> toList () const
$method=|QList<QWebElement>|toList|

$extraMethods

#pragma ENDDUMP
