$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QUINTPTR
REQUEST QABSTRACTITEMMODEL
#endif

CLASS QModelIndex

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD child
   METHOD column
   METHOD data
   METHOD flags
   METHOD internalId
   METHOD internalPointer
   METHOD isValid
   METHOD model
   METHOD parent
   METHOD row
   METHOD sibling

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
QModelIndex ()
*/
$internalConstructor=|new1|

/*
QModelIndex ( const QModelIndex & other )
*/
$internalConstructor=|new2|const QModelIndex &

//[1]QModelIndex ()
//[2]QModelIndex ( const QModelIndex & other )

HB_FUNC_STATIC( QMODELINDEX_NEW )
{
  if( ISNUMPAR(0) )
  {
    QModelIndex_new1();
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QModelIndex_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QModelIndex child(int row, int column) const
*/
$method=|QModelIndex|child|int,int

/*
int column() const
*/
$method=|int|column|

/*
QVariant data(int role = Qt::DisplayRole) const
*/
$method=|QVariant|data|int=Qt::DisplayRole

/*
Qt::ItemFlags flags() const
*/
$method=|Qt::ItemFlags|flags|

/*
quintptr internalId() const
*/
$method=|quintptr|internalId|

/*
void * internalPointer() const
*/
$method=|void *|internalPointer|

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
const QAbstractItemModel * model() const
*/
$method=|const QAbstractItemModel *|model|

/*
QModelIndex parent() const
*/
$method=|QModelIndex|parent|

/*
int row() const
*/
$method=|int|row|

/*
QModelIndex sibling(int row, int column) const
*/
$method=|QModelIndex|sibling|int,int

$extraMethods

#pragma ENDDUMP
