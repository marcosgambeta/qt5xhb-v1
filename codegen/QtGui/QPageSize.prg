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

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD swap
   METHOD isEquivalentTo
   METHOD isValid
   METHOD key
   METHOD name
   METHOD id1
   METHOD id2
   METHOD id3
   METHOD id4
   METHOD id
   METHOD windowsId1
   METHOD windowsId2
   METHOD windowsId
   METHOD definitionSize1
   METHOD definitionSize2
   METHOD definitionSize
   METHOD definitionUnits1
   METHOD definitionUnits2
   METHOD definitionUnits
   METHOD size1
   METHOD size2
   METHOD size
   METHOD sizePoints1
   METHOD sizePoints2
   METHOD sizePoints
   METHOD sizePixels1
   METHOD sizePixels2
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

/*
QPageSize()
*/
HB_FUNC_STATIC( QPAGESIZE_NEW1 )
{
  QPageSize * o = new QPageSize ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
explicit QPageSize(PageSizeId pageSizeId)
*/
HB_FUNC_STATIC( QPAGESIZE_NEW2 )
{
  QPageSize * o = new QPageSize ( (QPageSize::PageSizeId) hb_parni(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
explicit QPageSize(const QSize &pointSize, const QString &name = QString(), SizeMatchPolicy matchPolicy = FuzzyMatch)
*/
HB_FUNC_STATIC( QPAGESIZE_NEW3 )
{
  int par3 = ISNIL(3)? (int) QPageSize::FuzzyMatch : hb_parni(3);
  QPageSize * o = new QPageSize ( *PQSIZE(1), OPQSTRING(2,QString()), (QPageSize::SizeMatchPolicy) par3 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
explicit QPageSize(const QSizeF &size, Unit units, const QString &name = QString(), SizeMatchPolicy matchPolicy = FuzzyMatch)
*/
HB_FUNC_STATIC( QPAGESIZE_NEW4 )
{
  int par4 = ISNIL(4)? (int) QPageSize::FuzzyMatch : hb_parni(4);
  QPageSize * o = new QPageSize ( *PQSIZEF(1), (QPageSize::Unit) hb_parni(2), OPQSTRING(3,QString()), (QPageSize::SizeMatchPolicy) par4 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPageSize(const QPageSize &other)
*/
HB_FUNC_STATIC( QPAGESIZE_NEW5 )
{
  QPageSize * o = new QPageSize ( *PQPAGESIZE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QPageSize()
//[2]explicit QPageSize(PageSizeId pageSizeId)
//[3]explicit QPageSize(const QSize &pointSize, const QString &name = QString(), SizeMatchPolicy matchPolicy = FuzzyMatch)
//[4]explicit QPageSize(const QSizeF &size, Unit units, const QString &name = QString(), SizeMatchPolicy matchPolicy = FuzzyMatch)
//[5]QPageSize(const QPageSize &other)

HB_FUNC_STATIC( QPAGESIZE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPAGESIZE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPAGESIZE_NEW2 );
  }
  else if( ISBETWEEN(1,3) && ISQSIZE(1) && ISOPTCHAR(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QPAGESIZE_NEW3 );
  }
  else if( ISBETWEEN(2,4) && ISQSIZEF(1) && ISNUM(2) && ISOPTCHAR(3) && ISOPTNUM(4) )
  {
    HB_FUNC_EXEC( QPAGESIZE_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQPAGESIZE(1) )
  {
    HB_FUNC_EXEC( QPAGESIZE_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void swap(QPageSize &other)
*/
$method=|void|swap|QPageSize &

/*
bool isEquivalentTo(const QPageSize &other) const
*/
$method=|bool|isEquivalentTo|const QPageSize &

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
QString key() const
*/
$internalMethod=|QString|key,key1|

/*
static QString key(PageSizeId pageSizeId)
*/
$staticInternalMethod=|QString|key,key2|QPageSize::PageSizeId

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

/*
QString name() const
*/
$internalMethod=|QString|name,name1|

/*
static QString name(PageSizeId pageSizeId)
*/
$staticInternalMethod=|QString|name,name2|QPageSize::PageSizeId

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

/*
PageSizeId id() const
*/
$method=|QPageSize::PageSizeId|id,id1|

/*
static PageSizeId id(const QSize &pointSize, SizeMatchPolicy matchPolicy = FuzzyMatch)
*/
$staticMethod=|QPageSize::PageSizeId|id,id2|const QSize &,QPageSize::SizeMatchPolicy=QPageSize::FuzzyMatch

/*
static PageSizeId id(const QSizeF &size, Unit units, SizeMatchPolicy matchPolicy = FuzzyMatch)
*/
$staticMethod=|QPageSize::PageSizeId|id,id3|const QSizeF &,QPageSize::Unit,QPageSize::SizeMatchPolicy=QPageSize::FuzzyMatch

/*
static PageSizeId id(int windowsId)
*/
$staticMethod=|QPageSize::PageSizeId|id,id4|int

//[1]PageSizeId id() const
//[2]static PageSizeId id(const QSize &pointSize, SizeMatchPolicy matchPolicy = FuzzyMatch)
//[3]static PageSizeId id(const QSizeF &size, Unit units, SizeMatchPolicy matchPolicy = FuzzyMatch)
//[4]static PageSizeId id(int windowsId)

HB_FUNC_STATIC( QPAGESIZE_ID )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPAGESIZE_ID1 );
  }
  else if( ISBETWEEN(1,2) && ISQSIZE(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QPAGESIZE_ID2 );
  }
  else if( ISBETWEEN(2,3) && ISQSIZEF(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QPAGESIZE_ID3 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPAGESIZE_ID4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int windowsId() const
*/
$method=|int|windowsId,windowsId1|

/*
static int windowsId(PageSizeId pageSizeId)
*/
$staticMethod=|int|windowsId,windowsId2|QPageSize::PageSizeId

//[1]int windowsId() const
//[2]static int windowsId(PageSizeId pageSizeId)

HB_FUNC_STATIC( QPAGESIZE_WINDOWSID )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPAGESIZE_WINDOWSID1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPAGESIZE_WINDOWSID2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSizeF definitionSize() const
*/
$method=|QSizeF|definitionSize,definitionSize1|

/*
static QSizeF definitionSize(PageSizeId pageSizeId)
*/
$staticMethod=|QSizeF|definitionSize,definitionSize2|QPageSize::PageSizeId

//[1]QSizeF definitionSize() const
//[2]static QSizeF definitionSize(PageSizeId pageSizeId)

HB_FUNC_STATIC( QPAGESIZE_DEFINITIONSIZE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPAGESIZE_DEFINITIONSIZE1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPAGESIZE_DEFINITIONSIZE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Unit definitionUnits() const
*/
$method=|QPageSize::Unit|definitionUnits,definitionUnits1|

/*
static Unit definitionUnits(PageSizeId pageSizeId)
*/
$staticMethod=|QPageSize::Unit|definitionUnits,definitionUnits2|PageSizeId

//[1]Unit definitionUnits() const
//[2]static Unit definitionUnits(PageSizeId pageSizeId)

HB_FUNC_STATIC( QPAGESIZE_DEFINITIONUNITS )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPAGESIZE_DEFINITIONUNITS1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPAGESIZE_DEFINITIONUNITS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSizeF size(Unit units) const
*/
$method=|QSizeF|size,size1|QPageSize::Unit

/*
static QSizeF size(PageSizeId pageSizeId, Unit units)
*/
$staticMethod=|QSizeF|size,size2|QPageSize::PageSizeId,QPageSize::Unit

//[1]QSizeF size(Unit units) const
//[2]static QSizeF size(PageSizeId pageSizeId, Unit units)

HB_FUNC_STATIC( QPAGESIZE_SIZE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPAGESIZE_SIZE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAGESIZE_SIZE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSize sizePoints() const
*/
$method=|QSize|sizePoints,sizePoints1|

/*
static QSize sizePoints(PageSizeId pageSizeId)
*/
$staticMethod=|QSize|sizePoints,sizePoints2|QPageSize::PageSizeId

//[1]QSize sizePoints() const
//[2]static QSize sizePoints(PageSizeId pageSizeId)

HB_FUNC_STATIC( QPAGESIZE_SIZEPOINTS )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPAGESIZE_SIZEPOINTS1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPAGESIZE_SIZEPOINTS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSize sizePixels(int resolution) const
*/
$method=|QSize|sizePixels,sizePixels1|int

/*
static QSize sizePixels(PageSizeId pageSizeId, int resolution)
*/
$staticMethod=|QSize|sizePixels,sizePixels2|QPageSize::PageSizeId,int

//[1]QSize sizePixels(int resolution) const
//[2]static QSize sizePixels(PageSizeId pageSizeId, int resolution)

HB_FUNC_STATIC( QPAGESIZE_SIZEPIXELS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPAGESIZE_SIZEPIXELS1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAGESIZE_SIZEPIXELS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF rect(Unit units) const
*/
$method=|QRectF|rect|QPageSize::Unit

/*
QRect rectPoints() const
*/
$method=|QRect|rectPoints|

/*
QRect rectPixels(int resolution) const
*/
$method=|QRect|rectPixels|int

$extraMethods

#pragma ENDDUMP
