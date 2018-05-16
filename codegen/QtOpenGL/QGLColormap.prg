%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

$beginClass

   METHOD new
   METHOD delete
   METHOD entryColor
   METHOD entryRgb
   METHOD find
   METHOD findNearest
   METHOD isEmpty
   METHOD setEntries
   METHOD setEntry
   METHOD size

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGLColormap ()
$internalConstructor=|new1|

$prototype=QGLColormap ( const QGLColormap & map )
$internalConstructor=|new2|const QGLColormap &

//[1]QGLColormap ()
//[2]QGLColormap ( const QGLColormap & map )

HB_FUNC_STATIC( QGLCOLORMAP_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGLColorMap_new1();
  }
  else if( ISNUMPAR(1) && ISQGLCOLORMAP(1) )
  {
    QGLColorMap_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QColor entryColor ( int idx ) const
$method=|QColor|entryColor|int

$prototype=QRgb entryRgb ( int idx ) const
$method=|QRgb|entryRgb|int

$prototype=int find ( QRgb color ) const
$method=|int|find|QRgb

$prototype=int findNearest ( QRgb color ) const
$method=|int|findNearest|QRgb

$prototype=bool isEmpty () const
$method=|bool|isEmpty|

$prototype=void setEntries ( int count, const QRgb * colors, int base = 0 )
%% TODO: corrigir codigo
$method=|void|setEntries|int,const QRgb *,int=0

$prototype=void setEntry ( int idx, QRgb color )
$internalMethod=|void|setEntry,setEntry1|int,QRgb

$prototype=void setEntry ( int idx, const QColor & color )
$internalMethod=|void|setEntry,setEntry2|int,const QColor &

//[1]void setEntry ( int idx, QRgb color )
//[2]void setEntry ( int idx, const QColor & color )

HB_FUNC_STATIC( QGLCOLORMAP_SETENTRY )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGLColorMap_setEntry1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && (ISQCOLOR(2)||ISCHAR(2)) )
  {
    QGLColorMap_setEntry2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int size () const
$method=|int|size|

$extraMethods

#pragma ENDDUMP
