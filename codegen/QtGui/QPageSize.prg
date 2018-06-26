%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

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
   METHOD size
   METHOD sizePoints
   METHOD sizePixels
   METHOD rect
   METHOD rectPoints
   METHOD rectPixels

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,3,0

#include <QSize>
#include <QRectF>

$prototype=QPageSize()
$internalConstructor=5,3,0|new1|

$prototype=explicit QPageSize(PageSizeId pageSizeId)
$internalConstructor=5,3,0|new2|QPageSize::PageSizeId

$prototype=explicit QPageSize(const QSize &pointSize, const QString &name = QString(), SizeMatchPolicy matchPolicy = FuzzyMatch)
$internalConstructor=5,3,0|new3|const QSize &,const QString &=QString(),QPageSize::SizeMatchPolicy=QPageSize::FuzzyMatch

$prototype=explicit QPageSize(const QSizeF &size, Unit units, const QString &name = QString(), SizeMatchPolicy matchPolicy = FuzzyMatch)
$internalConstructor=5,3,0|new4|const QSizeF &,QPageSize::Unit,const QString &=QString(),QPageSize::SizeMatchPolicy=QPageSize::FuzzyMatch

$prototype=QPageSize(const QPageSize &other)
$internalConstructor=5,3,0|new5|const QPageSize &

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

$deleteMethod=5,3,0

$prototype=void swap(QPageSize &other)
$method=5,3,0|void|swap|QPageSize &

$prototype=bool isEquivalentTo(const QPageSize &other) const
$method=5,3,0|bool|isEquivalentTo|const QPageSize &

$prototype=bool isValid() const
$method=5,3,0|bool|isValid|

$prototype=QString key() const
$internalMethod=5,3,0|QString|key,key1|

$prototype=static QString key(PageSizeId pageSizeId)
$internalStaticMethod=5,3,0|QString|key,key2|QPageSize::PageSizeId

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
$internalMethod=5,3,0|QString|name,name1|

$prototype=static QString name(PageSizeId pageSizeId)
$internalStaticMethod=5,3,0|QString|name,name2|QPageSize::PageSizeId

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
$internalMethod=5,3,0|QPageSize::PageSizeId|id,id1|

$prototype=static PageSizeId id(const QSize &pointSize, SizeMatchPolicy matchPolicy = FuzzyMatch)
$internalStaticMethod=5,3,0|QPageSize::PageSizeId|id,id2|const QSize &,QPageSize::SizeMatchPolicy=QPageSize::FuzzyMatch

$prototype=static PageSizeId id(const QSizeF &size, Unit units, SizeMatchPolicy matchPolicy = FuzzyMatch)
$internalStaticMethod=5,3,0|QPageSize::PageSizeId|id,id3|const QSizeF &,QPageSize::Unit,QPageSize::SizeMatchPolicy=QPageSize::FuzzyMatch

$prototype=static PageSizeId id(int windowsId)
$internalStaticMethod=5,3,0|QPageSize::PageSizeId|id,id4|int

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
$internalMethod=5,3,0|int|windowsId,windowsId1|

$prototype=static int windowsId(PageSizeId pageSizeId)
$internalStaticMethod=5,3,0|int|windowsId,windowsId2|QPageSize::PageSizeId

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
$internalMethod=5,3,0|QSizeF|definitionSize,definitionSize1|

$prototype=static QSizeF definitionSize(PageSizeId pageSizeId)
$internalStaticMethod=5,3,0|QSizeF|definitionSize,definitionSize2|QPageSize::PageSizeId

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
$internalMethod=5,3,0|QPageSize::Unit|definitionUnits,definitionUnits1|

$prototype=static Unit definitionUnits(PageSizeId pageSizeId)
$internalStaticMethod=5,3,0|QPageSize::Unit|definitionUnits,definitionUnits2|QPageSize::PageSizeId

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
$internalMethod=5,3,0|QSizeF|size,size1|QPageSize::Unit

$prototype=static QSizeF size(PageSizeId pageSizeId, Unit units)
$internalStaticMethod=5,3,0|QSizeF|size,size2|QPageSize::PageSizeId,QPageSize::Unit

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
$internalMethod=5,3,0|QSize|sizePoints,sizePoints1|

$prototype=static QSize sizePoints(PageSizeId pageSizeId)
$internalStaticMethod=5,3,0|QSize|sizePoints,sizePoints2|QPageSize::PageSizeId

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
$internalMethod=5,3,0|QSize|sizePixels,sizePixels1|int

$prototype=static QSize sizePixels(PageSizeId pageSizeId, int resolution)
$internalStaticMethod=5,3,0|QSize|sizePixels,sizePixels2|QPageSize::PageSizeId,int

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
$method=5,3,0|QRectF|rect|QPageSize::Unit

$prototype=QRect rectPoints() const
$method=5,3,0|QRect|rectPoints|

$prototype=QRect rectPixels(int resolution) const
$method=5,3,0|QRect|rectPixels|int

$extraMethods

#pragma ENDDUMP
