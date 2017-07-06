$header

#include "hbclass.ch"

CLASS QMediaTimeInterval

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD contains
   METHOD end
   METHOD isNormal
   METHOD normalized
   METHOD start
   METHOD translated

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
QMediaTimeInterval()
*/
HB_FUNC_STATIC( QMEDIATIMEINTERVAL_NEW1 )
{
  QMediaTimeInterval * o = new QMediaTimeInterval ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaTimeInterval(qint64 start, qint64 end)
*/
HB_FUNC_STATIC( QMEDIATIMEINTERVAL_NEW2 )
{
  QMediaTimeInterval * o = new QMediaTimeInterval ( PQINT64(1), PQINT64(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaTimeInterval(const QMediaTimeInterval & other)
*/
HB_FUNC_STATIC( QMEDIATIMEINTERVAL_NEW3 )
{
  QMediaTimeInterval * o = new QMediaTimeInterval ( *PQMEDIATIMEINTERVAL(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QMediaTimeInterval()
//[2]QMediaTimeInterval(qint64 start, qint64 end)
//[3]QMediaTimeInterval(const QMediaTimeInterval & other)

HB_FUNC_STATIC( QMEDIATIMEINTERVAL_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMEDIATIMEINTERVAL_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QMEDIATIMEINTERVAL_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQMEDIATIMEINTERVAL(1) )
  {
    HB_FUNC_EXEC( QMEDIATIMEINTERVAL_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool contains(qint64 time) const
*/
HB_FUNC_STATIC( QMEDIATIMEINTERVAL_CONTAINS )
{
  QMediaTimeInterval * obj = (QMediaTimeInterval *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->contains ( PQINT64(1) ) );
  }
}


/*
qint64 end() const
*/
HB_FUNC_STATIC( QMEDIATIMEINTERVAL_END )
{
  QMediaTimeInterval * obj = (QMediaTimeInterval *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->end () );
  }
}


/*
bool isNormal() const
*/
HB_FUNC_STATIC( QMEDIATIMEINTERVAL_ISNORMAL )
{
  QMediaTimeInterval * obj = (QMediaTimeInterval *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNormal () );
  }
}


/*
QMediaTimeInterval normalized() const
*/
HB_FUNC_STATIC( QMEDIATIMEINTERVAL_NORMALIZED )
{
  QMediaTimeInterval * obj = (QMediaTimeInterval *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaTimeInterval * ptr = new QMediaTimeInterval( obj->normalized () );
    _qt5xhb_createReturnClass ( ptr, "QMEDIATIMEINTERVAL" );
  }
}


/*
qint64 start() const
*/
HB_FUNC_STATIC( QMEDIATIMEINTERVAL_START )
{
  QMediaTimeInterval * obj = (QMediaTimeInterval *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->start () );
  }
}


/*
QMediaTimeInterval translated(qint64 offset) const
*/
HB_FUNC_STATIC( QMEDIATIMEINTERVAL_TRANSLATED )
{
  QMediaTimeInterval * obj = (QMediaTimeInterval *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaTimeInterval * ptr = new QMediaTimeInterval( obj->translated ( PQINT64(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QMEDIATIMEINTERVAL" );
  }
}



$extraMethods

#pragma ENDDUMP
