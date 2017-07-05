$header

#include "hbclass.ch"

CLASS QBitArray

   DATA pointer
   DATA self_destruction INIT .F.

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

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QBitArray ()
*/
void QBitArray_new1 ()
{
  QBitArray * o = new QBitArray ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QBitArray ( int size, bool value = false )
*/
void QBitArray_new2 ()
{
  QBitArray * o = new QBitArray ( PINT(1), OPBOOL(2,false) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QBitArray ( const QBitArray & other )
*/
void QBitArray_new3 ()
{
  QBitArray * o = new QBitArray ( *PQBITARRAY(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

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

/*
bool at ( int i ) const
*/
$method=|bool|at|int

/*
void clear ()
*/
$method=|void|clear|

/*
void clearBit ( int i )
*/
$method=|void|clearBit|int

/*
int count () const
*/
$internalMethod=|int|count,count1|

/*
int count ( bool on ) const
*/
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

/*
bool fill ( bool value, int size = -1 )
*/
$internalMethod=|bool|fill,fill1|bool,int=-1

/*
void fill ( bool value, int begin, int end )
*/
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

/*
bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
void resize ( int size )
*/
$method=|void|resize|int

/*
void setBit ( int i )
*/
$internalMethod=|void|setBit,setBit1|int

/*
void setBit ( int i, bool value )
*/
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

/*
int size () const
*/
$method=|int|size|

/*
bool testBit ( int i ) const
*/
$method=|bool|testBit|int

/*
bool toggleBit ( int i )
*/
$method=|bool|toggleBit|int

/*
void truncate ( int pos )
*/
$method=|void|truncate|int

$extraMethods

#pragma ENDDUMP
