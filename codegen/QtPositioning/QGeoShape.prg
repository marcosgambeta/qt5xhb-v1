$header

#include "hbclass.ch"

CLASS QGeoShape

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD type
   METHOD isValid
   METHOD isEmpty
   METHOD contains

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
QGeoShape()
*/
HB_FUNC_STATIC( QGEOSHAPE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoShape * o = new QGeoShape ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoShape(const QGeoShape &other)
*/
HB_FUNC_STATIC( QGEOSHAPE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoShape * o = new QGeoShape ( *PQGEOSHAPE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QGeoShape()
//[2]QGeoShape(const QGeoShape &other)

HB_FUNC_STATIC( QGEOSHAPE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGEOSHAPE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQGEOSHAPE(1) )
  {
    HB_FUNC_EXEC( QGEOSHAPE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
ShapeType type() const
*/
HB_FUNC_STATIC( QGEOSHAPE_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoShape * obj = (QGeoShape *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
#endif
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QGEOSHAPE_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoShape * obj = (QGeoShape *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
#endif
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QGEOSHAPE_ISEMPTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoShape * obj = (QGeoShape *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
#endif
}


/*
bool contains(const QGeoCoordinate &coordinate) const
*/
HB_FUNC_STATIC( QGEOSHAPE_CONTAINS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoShape * obj = (QGeoShape *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->contains ( *PQGEOCOORDINATE(1) ) );
  }
#endif
}



$extraMethods

#pragma ENDDUMP
