$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPERSISTENTMODELINDEX
REQUEST QMODELINDEX
REQUEST QABSTRACTITEMMODEL
#endif

CLASS QItemSelectionRange

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD top
   METHOD left
   METHOD bottom
   METHOD right
   METHOD width
   METHOD height
   METHOD topLeft
   METHOD bottomRight
   METHOD parent
   METHOD model
   METHOD contains
   METHOD intersects
   METHOD intersected
   METHOD isValid
   METHOD isEmpty
   METHOD indexes

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
QItemSelectionRange()
*/
$internalConstructor=|new1|

/*
QItemSelectionRange(const QItemSelectionRange &other)
*/
$internalConstructor=|new2|const QItemSelectionRange &

/*
QItemSelectionRange(const QModelIndex &topLeft, const QModelIndex &bottomRight)
*/
$internalConstructor=|new3|const QModelIndex &,const QModelIndex &

/*
QItemSelectionRange(const QModelIndex &index)
*/
$internalConstructor=|new4|const QModelIndex &

//[1]QItemSelectionRange()
//[2]QItemSelectionRange(const QItemSelectionRange &other)
//[3]QItemSelectionRange(const QModelIndex &topLeft, const QModelIndex &bottomRight)
//[4]QItemSelectionRange(const QModelIndex &index)

HB_FUNC_STATIC( QITEMSELECTIONRANGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QItemSelectionRange_new1();
  }
  else if( ISNUMPAR(1) && ISQITEMSELECTIONRANGE(1) )
  {
    QItemSelectionRange_new2();
  }
  else if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISQMODELINDEX(2) )
  {
    QItemSelectionRange_new3();
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QItemSelectionRange_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int top() const
*/
$method=|int|top|

/*
int left() const
*/
$method=|int|left|

/*
int bottom() const
*/
$method=|int|bottom|

/*
int right() const
*/
$method=|int|right|

/*
int width() const
*/
$method=|int|width|

/*
int height() const
*/
$method=|int|height|

/*
const QPersistentModelIndex &topLeft() const
*/
$method=|const QPersistentModelIndex &|topLeft|

/*
const QPersistentModelIndex &bottomRight() const
*/
$method=|const QPersistentModelIndex &|bottomRight|

/*
QModelIndex parent() const
*/
$method=|QModelIndex|parent|

/*
const QAbstractItemModel *model() const
*/
$method=|const QAbstractItemModel *|model|

/*
bool contains(const QModelIndex &index) const
*/
$internalMethod=|bool|contains,contains1|const QModelIndex &

/*
bool contains(int row, int column, const QModelIndex &parentIndex) const
*/
$internalMethod=|bool|contains,contains2|int,int,const QModelIndex &

//[1]bool contains(const QModelIndex &index) const
//[2]bool contains(int row, int column, const QModelIndex &parentIndex) const

HB_FUNC_STATIC( QITEMSELECTIONRANGE_CONTAINS )
{
  if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QItemSelectionRange_contains1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQMODELINDEX(3) )
  {
    QItemSelectionRange_contains2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool intersects(const QItemSelectionRange &other) const
*/
$method=|bool|intersects|const QItemSelectionRange &

/*
QItemSelectionRange intersected(const QItemSelectionRange &other) const
*/
$method=|QItemSelectionRange|intersected|const QItemSelectionRange &

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
bool isEmpty() const
*/
$method=|bool|isEmpty|

/*
QModelIndexList indexes() const
*/
$method=|QModelIndexList|indexes|

$extraMethods

#pragma ENDDUMP
