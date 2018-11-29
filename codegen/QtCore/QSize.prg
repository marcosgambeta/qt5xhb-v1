%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSize ()
$internalConstructor=|new1|

$prototype=QSize ( int width, int height )
$internalConstructor=|new2|int,int

//[1]QSize ()
//[2]QSize ( int width, int height )

HB_FUNC_STATIC( QSIZE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSize_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QSize_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QSize boundedTo ( const QSize & otherSize ) const
$method=|QSize|boundedTo|const QSize &

$prototype=QSize expandedTo ( const QSize & otherSize ) const
$method=|QSize|expandedTo|const QSize &

$prototype=int height () const
$method=|int|height|

$prototype=bool isEmpty () const
$method=|bool|isEmpty|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=void scale ( int width, int height, Qt::AspectRatioMode mode )
$internalMethod=|void|scale,scale1|int,int,Qt::AspectRatioMode

$prototype=void scale ( const QSize & size, Qt::AspectRatioMode mode )
$internalMethod=|void|scale,scale2|const QSize &,Qt::AspectRatioMode

//[1]void scale ( int width, int height, Qt::AspectRatioMode mode )
//[2]void scale ( const QSize & size, Qt::AspectRatioMode mode )

HB_FUNC_STATIC( QSIZE_SCALE )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QSize_scale1();
  }
  else if( ISNUMPAR(2) && ISQSIZE(1) && ISNUM(2) )
  {
    QSize_scale2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=scale

$prototype=void setHeight ( int height )
$method=|void|setHeight|int

$prototype=void setWidth ( int width )
$method=|void|setWidth|int

$prototype=void transpose ()
$method=|void|transpose|

$prototype=int width () const
$method=|int|width|

$extraMethods

#pragma ENDDUMP
