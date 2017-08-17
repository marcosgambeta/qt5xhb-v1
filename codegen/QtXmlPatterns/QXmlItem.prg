$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QXMLNODEMODELINDEX
#endif

CLASS QXmlItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD isAtomicValue
   METHOD isNode
   METHOD isNull
   METHOD toAtomicValue
   METHOD toNodeModelIndex

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

#include <QVariant>

/*
QXmlItem ()
*/
$constructor=|new1|

/*
QXmlItem ( const QXmlItem & other )
*/
$constructor=|new2|const QXmlItem &

/*
QXmlItem ( const QXmlNodeModelIndex & node )
*/
$constructor=|new3|const QXmlNodeModelIndex &

/*
QXmlItem ( const QVariant & atomicValue )
*/
$constructor=|new4|const QVariant &

//[1]QXmlItem ()
//[2]QXmlItem ( const QXmlItem & other )
//[3]QXmlItem ( const QXmlNodeModelIndex & node )
//[4]QXmlItem ( const QVariant & atomicValue )

HB_FUNC_STATIC( QXMLITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLITEM_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLITEM(1) )
  {
    HB_FUNC_EXEC( QXMLITEM_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQXMLNODEMODELINDEX(1) )
  {
    HB_FUNC_EXEC( QXMLITEM_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    HB_FUNC_EXEC( QXMLITEM_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isAtomicValue () const
*/
$method=|bool|isAtomicValue|

/*
bool isNode () const
*/
$method=|bool|isNode|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
QVariant toAtomicValue () const
*/
$method=|QVariant|toAtomicValue|

/*
QXmlNodeModelIndex toNodeModelIndex () const
*/
$method=|QXmlNodeModelIndex|toNodeModelIndex|

$extraMethods

#pragma ENDDUMP
