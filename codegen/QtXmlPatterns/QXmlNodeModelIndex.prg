%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTXMLNODEMODEL
#endif

CLASS QXmlNodeModelIndex

   DATA pointer
   DATA self_destruction INIT .F.

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

$prototype=QXmlNodeModelIndex ()
$internalConstructor=|new1|

$prototype=QXmlNodeModelIndex ( const QXmlNodeModelIndex & other )
$internalConstructor=|new2|const QXmlNodeModelIndex &

//[1]QXmlNodeModelIndex ()
//[2]QXmlNodeModelIndex ( const QXmlNodeModelIndex & other )

HB_FUNC_STATIC( QXMLNODEMODELINDEX_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlNodeModelIndex_new1();
  }
  else if( ISNUMPAR(1) && ISQXMLNODEMODELINDEX(1) )
  {
    QXmlNodeModelIndex_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=qint64 additionalData () const
$method=|qint64|additionalData|

$prototype=qint64 data () const
$method=|qint64|data|

$prototype=void * internalPointer () const
$method=|void *|internalPointer|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=const QAbstractXmlNodeModel * model () const
$method=|const QAbstractXmlNodeModel *|model|

$extraMethods

#pragma ENDDUMP
