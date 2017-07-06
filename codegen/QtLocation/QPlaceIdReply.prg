$header

#include "hbclass.ch"

CLASS QPlaceIdReply INHERIT QPlaceReply

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD operationType
   METHOD id

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
explicit QPlaceIdReply(OperationType operationType, QObject *parent = 0)
*/
HB_FUNC_STATIC( QPLACEIDREPLY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIdReply * o = new QPlaceIdReply ( (QPlaceIdReply::OperationType) hb_parni(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


$deleteMethod=5,4,0

/*
QPlaceReply::Type type() const
*/
HB_FUNC_STATIC( QPLACEIDREPLY_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIdReply * obj = (QPlaceIdReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
#endif
}

/*
OperationType operationType() const
*/
HB_FUNC_STATIC( QPLACEIDREPLY_OPERATIONTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIdReply * obj = (QPlaceIdReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->operationType () );
  }
#endif
}


/*
QString id() const
*/
HB_FUNC_STATIC( QPLACEIDREPLY_ID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIdReply * obj = (QPlaceIdReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->id () );
  }
#endif
}



#pragma ENDDUMP
