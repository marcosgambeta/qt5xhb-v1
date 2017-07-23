$header

#include "hbclass.ch"

CLASS QSize

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD boundedTo
   METHOD expandedTo
   METHOD height
   METHOD isEmpty
   METHOD isNull
   METHOD isValid
   METHOD scale
   METHOD setHeight
   METHOD setWidth
   METHOD transpose
   METHOD width

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
QSize ()
*/
$internalConstructor=|new1|

/*
QSize ( int width, int height )
*/
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

/*
QSize boundedTo ( const QSize & otherSize ) const
*/
$method=|QSize|boundedTo|const QSize &

/*
QSize expandedTo ( const QSize & otherSize ) const
*/
$method=|QSize|expandedTo|const QSize &

/*
int height () const
*/
$method=|int|height|

/*
bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
void scale ( int width, int height, Qt::AspectRatioMode mode )
*/
$internalMethod=|void|scale,scale1|int,int,Qt::AspectRatioMode

/*
void scale ( const QSize & size, Qt::AspectRatioMode mode )
*/
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

/*
void setHeight ( int height )
*/
$method=|void|setHeight|int

/*
void setWidth ( int width )
*/
$method=|void|setWidth|int

/*
void transpose ()
*/
$method=|void|transpose|

/*
int width () const
*/
$method=|int|width|

$extraMethods

#pragma ENDDUMP
