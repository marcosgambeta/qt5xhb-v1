%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete
   METHOD at
   METHOD clear
   METHOD clearBit
   METHOD count
   METHOD fill
   METHOD isEmpty
   METHOD isNull
   METHOD resize
   METHOD setBit
   METHOD size
   METHOD testBit
   METHOD toggleBit
   METHOD truncate

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QBitArray ()
$internalConstructor=|new1|

$prototype=QBitArray ( int size, bool value = false )
$internalConstructor=|new2|int,bool=false

$prototype=QBitArray ( const QBitArray & other )
$internalConstructor=|new3|const QBitArray &

//[1]QBitArray ()
//[2]QBitArray ( int size, bool value = false )
//[3]QBitArray ( const QBitArray & other )

HB_FUNC_STATIC( QBITARRAY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBitArray_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTLOG(2) )
  {
    QBitArray_new2();
  }
  else if( ISNUMPAR(1) && ISQBITARRAY(1) )
  {
    QBitArray_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool at ( int i ) const
$method=|bool|at|int

$prototype=void clear ()
$method=|void|clear|

$prototype=void clearBit ( int i )
$method=|void|clearBit|int

$prototype=int count () const
$internalMethod=|int|count,count1|

$prototype=int count ( bool on ) const
$internalMethod=|int|count,count2|bool

//[1]int count () const
//[2]int count ( bool on ) const

HB_FUNC_STATIC( QBITARRAY_COUNT )
{
  if( ISNUMPAR(0) )
  {
    QBitArray_count1();
  }
  else if( ISNUMPAR(1) && ISLOG(1) )
  {
    QBitArray_count2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool fill ( bool value, int size = -1 )
$internalMethod=|bool|fill,fill1|bool,int=-1

$prototype=void fill ( bool value, int begin, int end )
$internalMethod=|void|fill,fill2|bool,int,int

//[1]bool fill ( bool value, int size = -1 )
//[2]void fill ( bool value, int begin, int end )

HB_FUNC_STATIC( QBITARRAY_FILL )
{
  if( ISBETWEEN(1,2) && ISLOG(1) && ISOPTNUM(2) )
  {
    QBitArray_fill1();
  }
  else if( ISNUMPAR(3) && ISLOG(1) && ISNUM(2) && ISNUM(3) )
  {
    QBitArray_fill2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool isEmpty () const
$method=|bool|isEmpty|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=void resize ( int size )
$method=|void|resize|int

$prototype=void setBit ( int i )
$internalMethod=|void|setBit,setBit1|int

$prototype=void setBit ( int i, bool value )
$internalMethod=|void|setBit,setBit2|int,bool

//[1]void setBit ( int i )
//[2]void setBit ( int i, bool value )

HB_FUNC_STATIC( QBITARRAY_SETBIT )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBitArray_setBit1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISLOG(2) )
  {
    QBitArray_setBit2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int size () const
$method=|int|size|

$prototype=bool testBit ( int i ) const
$method=|bool|testBit|int

$prototype=bool toggleBit ( int i )
$method=|bool|toggleBit|int

$prototype=void truncate ( int pos )
$method=|void|truncate|int

$extraMethods

#pragma ENDDUMP
