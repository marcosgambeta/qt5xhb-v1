$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTXMLNODEMODEL
#endif

CLASS QXmlNodeModelIndex

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD additionalData
   METHOD data
   METHOD internalPointer
   METHOD isNull
   METHOD model

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
QXmlNodeModelIndex ()
*/
$constructor=|new1|

/*
QXmlNodeModelIndex ( const QXmlNodeModelIndex & other )
*/
$constructor=|new2|const QXmlNodeModelIndex &

//[1]QXmlNodeModelIndex ()
//[2]QXmlNodeModelIndex ( const QXmlNodeModelIndex & other )

HB_FUNC_STATIC( QXMLNODEMODELINDEX_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLNODEMODELINDEX_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLNODEMODELINDEX(1) )
  {
    HB_FUNC_EXEC( QXMLNODEMODELINDEX_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
qint64 additionalData () const
*/
$method=|qint64|additionalData|

/*
qint64 data () const
*/
$method=|qint64|data|

/*
void * internalPointer () const
*/
$method=|void *|internalPointer|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
const QAbstractXmlNodeModel * model () const
*/
$method=|const QAbstractXmlNodeModel *|model|

$extraMethods

#pragma ENDDUMP
