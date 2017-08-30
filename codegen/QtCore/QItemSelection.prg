$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

CLASS QItemSelection

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD select
   METHOD contains
   METHOD indexes
   METHOD merge
   METHOD split

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
QItemSelection()
*/
$internalConstructor=|new1|

/*
QItemSelection(const QModelIndex &topLeft, const QModelIndex &bottomRight)
*/
$internalConstructor=|new2|const QModelIndex &,const QModelIndex &

//[1]QItemSelection()
//[2]QItemSelection(const QModelIndex &topLeft, const QModelIndex &bottomRight)

HB_FUNC_STATIC( QITEMSELECTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QItemSelection_new1();
  }
  else if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISQMODELINDEX(2) )
  {
    QItemSelection_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void select(const QModelIndex &topLeft, const QModelIndex &bottomRight)
*/
$method=|void|select|const QModelIndex &,const QModelIndex &

/*
bool contains(const QModelIndex &index) const
*/
$method=|bool|contains|const QModelIndex &

/*
QModelIndexList indexes() const
*/
$method=|QModelIndexList|indexes|

/*
void merge(const QItemSelection &other, QItemSelectionModel::SelectionFlags command)
*/
$method=|void|merge|const QItemSelection &,QItemSelectionModel::SelectionFlags

/*
static void split(const QItemSelectionRange &range,const QItemSelectionRange &other,QItemSelection *result)
*/
$staticMethod=|void|split|const QItemSelectionRange &,const QItemSelectionRange &,QItemSelection *

$extraMethods

#pragma ENDDUMP
