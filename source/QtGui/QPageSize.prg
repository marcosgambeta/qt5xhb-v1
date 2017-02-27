/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QSIZEF
REQUEST QSIZE
REQUEST QRECTF
REQUEST QRECT
#endif

CLASS QPageSize

   DATA pointer
   DATA class_id INIT Class_Id_QPageSize
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
   METHOD key1
   METHOD key2
   METHOD key
   METHOD name1
   METHOD name2
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

PROCEDURE destroyObject () CLASS QPageSize
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QPageSize>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QPageSize>
#endif
#endif

#include <QSize>
#include <QRectF>

/*
QPageSize()
*/
HB_FUNC_STATIC( QPAGESIZE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPageSize * o = new QPageSize (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPageSize *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
explicit QPageSize(PageSizeId pageSizeId)
*/
HB_FUNC_STATIC( QPAGESIZE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QPageSize * o = new QPageSize (  (QPageSize::PageSizeId) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPageSize *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
explicit QPageSize(const QSize &pointSize, const QString &name = QString(), SizeMatchPolicy matchPolicy = FuzzyMatch)
*/
HB_FUNC_STATIC( QPAGESIZE_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  int par3 = ISNIL(3)? (int) QPageSize::FuzzyMatch : hb_parni(3);
  QPageSize * o = new QPageSize ( *par1, par2,  (QPageSize::SizeMatchPolicy) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPageSize *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
explicit QPageSize(const QSizeF &size, Unit units, const QString &name = QString(), SizeMatchPolicy matchPolicy = FuzzyMatch)
*/
HB_FUNC_STATIC( QPAGESIZE_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSizeF * par1 = (QSizeF *) _qtxhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  int par4 = ISNIL(4)? (int) QPageSize::FuzzyMatch : hb_parni(4);
  QPageSize * o = new QPageSize ( *par1,  (QPageSize::Unit) par2, par3,  (QPageSize::SizeMatchPolicy) par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPageSize *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QPageSize(const QPageSize &other)
*/
HB_FUNC_STATIC( QPAGESIZE_NEW5 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPageSize * par1 = (QPageSize *) _qtxhb_itemGetPtr(1);
  QPageSize * o = new QPageSize ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPageSize *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
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
  else if( ISBETWEEN(1,3) && ISQSIZE(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPAGESIZE_NEW3 );
  }
  else if( ISBETWEEN(2,4) && ISQSIZEF(1) && ISNUM(2) && (ISCHAR(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
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

HB_FUNC_STATIC( QPAGESIZE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPageSize * obj = (QPageSize *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void swap(QPageSize &other)
*/
HB_FUNC_STATIC( QPAGESIZE_SWAP )
{
  QPageSize * obj = (QPageSize *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPageSize * par1 = (QPageSize *) _qtxhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isEquivalentTo(const QPageSize &other) const
*/
HB_FUNC_STATIC( QPAGESIZE_ISEQUIVALENTTO )
{
  QPageSize * obj = (QPageSize *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPageSize * par1 = (QPageSize *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->isEquivalentTo ( *par1 ) );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QPAGESIZE_ISVALID )
{
  QPageSize * obj = (QPageSize *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QString key() const
*/
HB_FUNC_STATIC( QPAGESIZE_KEY1 )
{
  QPageSize * obj = (QPageSize *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->key (  ).toLatin1().data() );
  }
}

/*
static QString key(PageSizeId pageSizeId)
*/
HB_FUNC_STATIC( QPAGESIZE_KEY2 )
{
  int par1 = hb_parni(1);
  hb_retc( (const char *) QPageSize::key (  (QPageSize::PageSizeId) par1 ).toLatin1().data() );
}


//[1]QString key() const
//[2]static QString key(PageSizeId pageSizeId)

HB_FUNC_STATIC( QPAGESIZE_KEY )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPAGESIZE_KEY1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPAGESIZE_KEY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString name() const
*/
HB_FUNC_STATIC( QPAGESIZE_NAME1 )
{
  QPageSize * obj = (QPageSize *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
}

/*
static QString name(PageSizeId pageSizeId)
*/
HB_FUNC_STATIC( QPAGESIZE_NAME2 )
{
  int par1 = hb_parni(1);
  hb_retc( (const char *) QPageSize::name (  (QPageSize::PageSizeId) par1 ).toLatin1().data() );
}


//[1]QString name() const
//[2]static QString name(PageSizeId pageSizeId)

HB_FUNC_STATIC( QPAGESIZE_NAME )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPAGESIZE_NAME1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPAGESIZE_NAME2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
PageSizeId id() const
*/
HB_FUNC_STATIC( QPAGESIZE_ID1 )
{
  QPageSize * obj = (QPageSize *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->id (  ) );
  }
}

/*
static PageSizeId id(const QSize &pointSize, SizeMatchPolicy matchPolicy = FuzzyMatch)
*/
HB_FUNC_STATIC( QPAGESIZE_ID2 )
{
  QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) QPageSize::FuzzyMatch : hb_parni(2);
  hb_retni( QPageSize::id ( *par1,  (QPageSize::SizeMatchPolicy) par2 ) );
}

/*
static PageSizeId id(const QSizeF &size, Unit units, SizeMatchPolicy matchPolicy = FuzzyMatch)
*/
HB_FUNC_STATIC( QPAGESIZE_ID3 )
{
  QSizeF * par1 = (QSizeF *) _qtxhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  int par3 = ISNIL(3)? (int) QPageSize::FuzzyMatch : hb_parni(3);
  hb_retni( QPageSize::id ( *par1,  (QPageSize::Unit) par2,  (QPageSize::SizeMatchPolicy) par3 ) );
}

/*
static PageSizeId id(int windowsId)
*/
HB_FUNC_STATIC( QPAGESIZE_ID4 )
{
  hb_retni( QPageSize::id ( (int) hb_parni(1) ) );
}


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
  else if( ISBETWEEN(1,2) && ISQSIZE(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPAGESIZE_ID2 );
  }
  else if( ISBETWEEN(2,3) && ISQSIZEF(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
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
HB_FUNC_STATIC( QPAGESIZE_WINDOWSID1 )
{
  QPageSize * obj = (QPageSize *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->windowsId (  ) );
  }
}

/*
static int windowsId(PageSizeId pageSizeId)
*/
HB_FUNC_STATIC( QPAGESIZE_WINDOWSID2 )
{
  int par1 = hb_parni(1);
  hb_retni( QPageSize::windowsId (  (QPageSize::PageSizeId) par1 ) );
}


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
HB_FUNC_STATIC( QPAGESIZE_DEFINITIONSIZE1 )
{
  QPageSize * obj = (QPageSize *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->definitionSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}

/*
static QSizeF definitionSize(PageSizeId pageSizeId)
*/
HB_FUNC_STATIC( QPAGESIZE_DEFINITIONSIZE2 )
{
  int par1 = hb_parni(1);
  QSizeF * ptr = new QSizeF( QPageSize::definitionSize (  (QPageSize::PageSizeId) par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
}


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
HB_FUNC_STATIC( QPAGESIZE_DEFINITIONUNITS1 )
{
  QPageSize * obj = (QPageSize *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->definitionUnits (  ) );
  }
}

/*
static Unit definitionUnits(PageSizeId pageSizeId)
*/
HB_FUNC_STATIC( QPAGESIZE_DEFINITIONUNITS2 )
{
  int par1 = hb_parni(1);
  hb_retni( QPageSize::definitionUnits (  (QPageSize::PageSizeId) par1 ) );
}


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
HB_FUNC_STATIC( QPAGESIZE_SIZE1 )
{
  QPageSize * obj = (QPageSize *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QSizeF * ptr = new QSizeF( obj->size (  (QPageSize::Unit) par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}

/*
static QSizeF size(PageSizeId pageSizeId, Unit units)
*/
HB_FUNC_STATIC( QPAGESIZE_SIZE2 )
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  QSizeF * ptr = new QSizeF( QPageSize::size (  (QPageSize::PageSizeId) par1,  (QPageSize::Unit) par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
}


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
HB_FUNC_STATIC( QPAGESIZE_SIZEPOINTS1 )
{
  QPageSize * obj = (QPageSize *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizePoints (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
static QSize sizePoints(PageSizeId pageSizeId)
*/
HB_FUNC_STATIC( QPAGESIZE_SIZEPOINTS2 )
{
  int par1 = hb_parni(1);
  QSize * ptr = new QSize( QPageSize::sizePoints (  (QPageSize::PageSizeId) par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
}


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
HB_FUNC_STATIC( QPAGESIZE_SIZEPIXELS1 )
{
  QPageSize * obj = (QPageSize *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizePixels ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
static QSize sizePixels(PageSizeId pageSizeId, int resolution)
*/
HB_FUNC_STATIC( QPAGESIZE_SIZEPIXELS2 )
{
  int par1 = hb_parni(1);
  QSize * ptr = new QSize( QPageSize::sizePixels (  (QPageSize::PageSizeId) par1, (int) hb_parni(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
}


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
HB_FUNC_STATIC( QPAGESIZE_RECT )
{
  QPageSize * obj = (QPageSize *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QRectF * ptr = new QRectF( obj->rect (  (QPageSize::Unit) par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QRect rectPoints() const
*/
HB_FUNC_STATIC( QPAGESIZE_RECTPOINTS )
{
  QPageSize * obj = (QPageSize *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->rectPoints (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QRect rectPixels(int resolution) const
*/
HB_FUNC_STATIC( QPAGESIZE_RECTPIXELS )
{
  QPageSize * obj = (QPageSize *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->rectPixels ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}



HB_FUNC_STATIC( QPAGESIZE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QPAGESIZE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPAGESIZE_NEWFROM );
}

HB_FUNC_STATIC( QPAGESIZE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPAGESIZE_NEWFROM );
}

HB_FUNC_STATIC( QPAGESIZE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPAGESIZE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
