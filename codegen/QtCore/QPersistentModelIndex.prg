$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QUINTPTR
REQUEST QMODELINDEX
REQUEST QVARIANT
REQUEST QABSTRACTITEMMODEL
#endif

CLASS QPersistentModelIndex

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD row
   METHOD column
   METHOD internalPointer
   METHOD internalId
   METHOD parent
   METHOD sibling
   METHOD child
   METHOD data
   METHOD flags
   METHOD model
   METHOD isValid

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
QPersistentModelIndex()
*/
$internalConstructor=|new1|

/*
QPersistentModelIndex(const QModelIndex &index)
*/
$internalConstructor=|new2|const QModelIndex &

/*
QPersistentModelIndex(const QPersistentModelIndex &other)
*/
$internalConstructor=|new3|const QPersistentModelIndex &

//[1]QPersistentModelIndex()
//[2]QPersistentModelIndex(const QModelIndex &index)
//[3]QPersistentModelIndex(const QPersistentModelIndex &other)

HB_FUNC_STATIC( QPERSISTENTMODELINDEX_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPersistentModelIndex_new1();
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QPersistentModelIndex_new2();
  }
  else if( ISNUMPAR(1) && ISQPERSISTENTMODELINDEX(1) )
  {
    QPersistentModelIndex_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void swap(QPersistentModelIndex &other)
*/
$method=|void|swap|QPersistentModelIndex &

/*
int row() const
*/
$method=|int|row|

/*
int column() const
*/
$method=|int|column|

/*
void *internalPointer() const
*/
$method=|void *|internalPointer|

/*
quintptr internalId() const
*/
$method=|quintptr|internalId|

/*
QModelIndex parent() const
*/
$method=|QModelIndex|parent|

/*
QModelIndex sibling(int row, int column) const
*/
$method=|QModelIndex|sibling|int,int

/*
QModelIndex child(int row, int column) const
*/
$method=|QModelIndex|child|int,int

/*
QVariant data(int role = Qt::DisplayRole) const
*/
$method=|QVariant|data|int=Qt::DisplayRole

/*
Qt::ItemFlags flags() const
*/
$method=|Qt::ItemFlags|flags|

/*
const QAbstractItemModel *model() const
*/
$method=|const QAbstractItemModel *|model|

/*
bool isValid() const
*/
$method=|bool|isValid|

$extraMethods

#pragma ENDDUMP
