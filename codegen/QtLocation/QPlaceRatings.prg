$header

#include "hbclass.ch"

CLASS QPlaceRatings

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD average
   METHOD setAverage
   METHOD count
   METHOD setCount
   METHOD maximum
   METHOD setMaximum
   METHOD isEmpty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
QPlaceRatings()
*/
void QPlaceRatings_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceRatings * o = new QPlaceRatings ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceRatings(const QPlaceRatings &other)
*/
void QPlaceRatings_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceRatings * o = new QPlaceRatings ( *PQPLACERATINGS(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceRatings()
//[2]QPlaceRatings(const QPlaceRatings &other)

HB_FUNC_STATIC( QPLACERATINGS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceRatings_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACERATINGS(1) )
  {
    QPlaceRatings_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

/*
qreal average() const
*/
HB_FUNC_STATIC( QPLACERATINGS_AVERAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceRatings * obj = (QPlaceRatings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->average () );
  }
#endif
}

/*
void setAverage(qreal average)
*/
HB_FUNC_STATIC( QPLACERATINGS_SETAVERAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceRatings * obj = (QPlaceRatings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAverage ( (qreal) hb_parnd(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int count() const
*/
HB_FUNC_STATIC( QPLACERATINGS_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceRatings * obj = (QPlaceRatings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->count () );
  }
#endif
}

/*
void setCount(int count)
*/
HB_FUNC_STATIC( QPLACERATINGS_SETCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceRatings * obj = (QPlaceRatings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCount ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal maximum() const
*/
HB_FUNC_STATIC( QPLACERATINGS_MAXIMUM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceRatings * obj = (QPlaceRatings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->maximum () );
  }
#endif
}

/*
void setMaximum(qreal max)
*/
HB_FUNC_STATIC( QPLACERATINGS_SETMAXIMUM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceRatings * obj = (QPlaceRatings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaximum ( (qreal) hb_parnd(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QPLACERATINGS_ISEMPTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceRatings * obj = (QPlaceRatings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
#endif
}



$extraMethods

#pragma ENDDUMP
