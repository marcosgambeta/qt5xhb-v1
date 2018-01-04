%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZEF
REQUEST QSIZE
REQUEST QRECTF
REQUEST QRECT
#endif

CLASS QPageSize

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isEquivalentTo
   METHOD isValid
   METHOD key
   METHOD name
   METHOD id
   METHOD windowsId
   METHOD definitionSize
   METHOD definitionUnits
   METHOD size1
   METHOD size2
   METHOD size
   METHOD sizePoints
   METHOD sizePixels
   METHOD rect
   METHOD rectPoints
   METHOD rectPixels

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

#include <QSize>
#include <QRectF>

$prototype=QPageSize()
$internalConstructor=|new1|

$prototype=explicit QPageSize(PageSizeId pageSizeId)
$internalConstructor=|new2|QPageSize::PageSizeId

$prototype=explicit QPageSize(const QSize &pointSize, const QString &name = QString(), SizeMatchPolicy matchPolicy = FuzzyMatch)
$internalConstructor=|new3|const QSize &,const QString &=QString(),QPageSize::SizeMatchPolicy=QPageSize::FuzzyMatch

$prototype=explicit QPageSize(const QSizeF &size, Unit units, const QString &name = QString(), SizeMatchPolicy matchPolicy = FuzzyMatch)
$internalConstructor=|new4|const QSizeF &,QPageSize::Unit,const QString &=QString(),QPageSize::SizeMatchPolicy=QPageSize::FuzzyMatch

$prototype=QPageSize(const QPageSize &other)
$internalConstructor=|new5|const QPageSize &

//[1]QPageSize()
//[2]explicit QPageSize(PageSizeId pageSizeId)
//[3]explicit QPageSize(const QSize &pointSize, const QString &name = QString(), SizeMatchPolicy matchPolicy = FuzzyMatch)
//[4]explicit QPageSize(const QSizeF &size, Unit units, const QString &name = QString(), SizeMatchPolicy matchPolicy = FuzzyMatch)
//[5]QPageSize(const QPageSize &other)

HB_FUNC_STATIC( QPAGESIZE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPageSize_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageSize_new2();
  }
  else if( ISBETWEEN(1,3) && ISQSIZE(1) && ISOPTCHAR(2) && ISOPTNUM(3) )
  {
    QPageSize_new3();
  }
  else if( ISBETWEEN(2,4) && ISQSIZEF(1) && ISNUM(2) && ISOPTCHAR(3) && ISOPTNUM(4) )
  {
    QPageSize_new4();
  }
  else if( ISNUMPAR(1) && ISQPAGESIZE(1) )
  {
    QPageSize_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void swap(QPageSize &other)
$method=|void|swap|QPageSize &

$prototype=bool isEquivalentTo(const QPageSize &other) const
$method=|bool|isEquivalentTo|const QPageSize &

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=QString key() const
$internalMethod=|QString|key,key1|

$prototype=static QString key(PageSizeId pageSizeId)
$internalStaticMethod=|QString|key,key2|QPageSize::PageSizeId

//[1]QString key() const
//[2]static QString key(PageSizeId pageSizeId)

HB_FUNC_STATIC( QPAGESIZE_KEY )
{
  if( ISNUMPAR(0) )
  {
    QPageSize_key1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageSize_key2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QString name() const
$internalMethod=|QString|name,name1|

$prototype=static QString name(PageSizeId pageSizeId)
$internalStaticMethod=|QString|name,name2|QPageSize::PageSizeId

//[1]QString name() const
//[2]static QString name(PageSizeId pageSizeId)

HB_FUNC_STATIC( QPAGESIZE_NAME )
{
  if( ISNUMPAR(0) )
  {
    QPageSize_name1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageSize_name2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=PageSizeId id() const
$internalMethod=|QPageSize::PageSizeId|id,id1|

$prototype=static PageSizeId id(const QSize &pointSize, SizeMatchPolicy matchPolicy = FuzzyMatch)
$internalStaticMethod=|QPageSize::PageSizeId|id,id2|const QSize &,QPageSize::SizeMatchPolicy=QPageSize::FuzzyMatch

$prototype=static PageSizeId id(const QSizeF &size, Unit units, SizeMatchPolicy matchPolicy = FuzzyMatch)
$internalStaticMethod=|QPageSize::PageSizeId|id,id3|const QSizeF &,QPageSize::Unit,QPageSize::SizeMatchPolicy=QPageSize::FuzzyMatch

$prototype=static PageSizeId id(int windowsId)
$internalStaticMethod=|QPageSize::PageSizeId|id,id4|int

//[1]PageSizeId id() const
//[2]static PageSizeId id(const QSize &pointSize, SizeMatchPolicy matchPolicy = FuzzyMatch)
//[3]static PageSizeId id(const QSizeF &size, Unit units, SizeMatchPolicy matchPolicy = FuzzyMatch)
//[4]static PageSizeId id(int windowsId)

HB_FUNC_STATIC( QPAGESIZE_ID )
{
  if( ISNUMPAR(0) )
  {
    QPageSize_id1();
  }
  else if( ISBETWEEN(1,2) && ISQSIZE(1) && ISOPTNUM(2) )
  {
    QPageSize_id2();
  }
  else if( ISBETWEEN(2,3) && ISQSIZEF(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QPageSize_id3();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageSize_id4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int windowsId() const
$internalMethod=|int|windowsId,windowsId1|

$prototype=static int windowsId(PageSizeId pageSizeId)
$internalStaticMethod=|int|windowsId,windowsId2|QPageSize::PageSizeId

//[1]int windowsId() const
//[2]static int windowsId(PageSizeId pageSizeId)

HB_FUNC_STATIC( QPAGESIZE_WINDOWSID )
{
  if( ISNUMPAR(0) )
  {
    QPageSize_windowsId1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageSize_windowsId2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QSizeF definitionSize() const
$internalMethod=|QSizeF|definitionSize,definitionSize1|

$prototype=static QSizeF definitionSize(PageSizeId pageSizeId)
$internalStaticMethod=|QSizeF|definitionSize,definitionSize2|QPageSize::PageSizeId

//[1]QSizeF definitionSize() const
//[2]static QSizeF definitionSize(PageSizeId pageSizeId)

HB_FUNC_STATIC( QPAGESIZE_DEFINITIONSIZE )
{
  if( ISNUMPAR(0) )
  {
    QPageSize_definitionSize1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageSize_definitionSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=Unit definitionUnits() const
$internalMethod=|QPageSize::Unit|definitionUnits,definitionUnits1|

$prototype=static Unit definitionUnits(PageSizeId pageSizeId)
$internalStaticMethod=|QPageSize::Unit|definitionUnits,definitionUnits2|PageSizeId

//[1]Unit definitionUnits() const
//[2]static Unit definitionUnits(PageSizeId pageSizeId)

HB_FUNC_STATIC( QPAGESIZE_DEFINITIONUNITS )
{
  if( ISNUMPAR(0) )
  {
    QPageSize_definitionUnits1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageSize_definitionUnits2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QSizeF size(Unit units) const
$internalMethod=|QSizeF|size,size1|QPageSize::Unit

$prototype=static QSizeF size(PageSizeId pageSizeId, Unit units)
$internalStaticMethod=|QSizeF|size,size2|QPageSize::PageSizeId,QPageSize::Unit

//[1]QSizeF size(Unit units) const
//[2]static QSizeF size(PageSizeId pageSizeId, Unit units)

HB_FUNC_STATIC( QPAGESIZE_SIZE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageSize_size1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPageSize_size2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QSize sizePoints() const
$internalMethod=|QSize|sizePoints,sizePoints1|

$prototype=static QSize sizePoints(PageSizeId pageSizeId)
$internalStaticMethod=|QSize|sizePoints,sizePoints2|QPageSize::PageSizeId

//[1]QSize sizePoints() const
//[2]static QSize sizePoints(PageSizeId pageSizeId)

HB_FUNC_STATIC( QPAGESIZE_SIZEPOINTS )
{
  if( ISNUMPAR(0) )
  {
    QPageSize_sizePoints1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageSize_sizePoints2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QSize sizePixels(int resolution) const
$internalMethod=|QSize|sizePixels,sizePixels1|int

$prototype=static QSize sizePixels(PageSizeId pageSizeId, int resolution)
$internalStaticMethod=|QSize|sizePixels,sizePixels2|QPageSize::PageSizeId,int

//[1]QSize sizePixels(int resolution) const
//[2]static QSize sizePixels(PageSizeId pageSizeId, int resolution)

HB_FUNC_STATIC( QPAGESIZE_SIZEPIXELS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageSize_sizePixels1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPageSize_sizePixels2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QRectF rect(Unit units) const
$method=|QRectF|rect|QPageSize::Unit

$prototype=QRect rectPoints() const
$method=|QRect|rectPoints|

$prototype=QRect rectPixels(int resolution) const
$method=|QRect|rectPixels|int

$extraMethods

#pragma ENDDUMP
