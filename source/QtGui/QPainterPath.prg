//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QPOLYGONF
REQUEST QRECTF
#endif

CLASS QPainterPath

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addEllipse
   METHOD addPath
   METHOD addPolygon
   METHOD addRect
   METHOD addRegion
   METHOD addRoundedRect
   METHOD addText
   METHOD angleAtPercent
   METHOD arcMoveTo
   METHOD arcTo
   METHOD boundingRect
   METHOD closeSubpath
   METHOD connectPath
   METHOD contains
   METHOD controlPointRect
   METHOD cubicTo
   METHOD currentPosition
   METHOD elementCount
   METHOD fillRule
   METHOD intersected
   METHOD intersects
   METHOD isEmpty
   METHOD length
   METHOD lineTo
   METHOD moveTo
   METHOD percentAtLength
   METHOD pointAtPercent
   METHOD quadTo
   METHOD setElementPositionAt
   METHOD setFillRule
   METHOD simplified
   METHOD slopeAtPercent
   METHOD subtracted
   METHOD swap
   METHOD toFillPolygon
   METHOD toReversed
   METHOD translate
   METHOD translated
   METHOD united

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPainterPath
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QPainterPath>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QPainterPath>
#endif

HB_FUNC_STATIC(QPAINTERPATH_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QPainterPath()
    */
    QPainterPath *obj = new QPainterPath();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQPOINTF(1))
  {
    /*
    QPainterPath( const QPointF &startPoint )
    */
    QPainterPath *obj = new QPainterPath(*PQPOINTF(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQPAINTERPATH(1))
  {
    /*
    QPainterPath( const QPainterPath &path )
    */
    QPainterPath *obj = new QPainterPath(*PQPAINTERPATH(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPAINTERPATH_DELETE)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC(QPAINTERPATH_ADDELLIPSE)
{
  if (ISNUMPAR(1) && ISQRECTF(1))
  {
    /*
    void addEllipse( const QRectF &boundingRectangle )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->addEllipse(*PQRECTF(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
  {
    /*
    void addEllipse( qreal x, qreal y, qreal width, qreal height )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->addEllipse(PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(3) && ISQPOINTF(1) && HB_ISNUM(2) && HB_ISNUM(3))
  {
    /*
    void addEllipse( const QPointF &center, qreal rx, qreal ry )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->addEllipse(*PQPOINTF(1), PQREAL(2), PQREAL(3));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void addPath( const QPainterPath &path )
*/
HB_FUNC_STATIC(QPAINTERPATH_ADDPATH)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPAINTERPATH(1))
    {
#endif
      obj->addPath(*PQPAINTERPATH(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void addPolygon( const QPolygonF &polygon )
*/
HB_FUNC_STATIC(QPAINTERPATH_ADDPOLYGON)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPOLYGONF(1))
    {
#endif
      obj->addPolygon(*PQPOLYGONF(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC(QPAINTERPATH_ADDRECT)
{
  if (ISNUMPAR(1) && ISQRECTF(1))
  {
    /*
    void addRect( const QRectF &rectangle )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->addRect(*PQRECTF(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
  {
    /*
    void addRect( qreal x, qreal y, qreal width, qreal height )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->addRect(PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void addRegion( const QRegion &region )
*/
HB_FUNC_STATIC(QPAINTERPATH_ADDREGION)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQREGION(1))
    {
#endif
      obj->addRegion(*PQREGION(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC(QPAINTERPATH_ADDROUNDEDRECT)
{
  if (ISBETWEEN(3, 4) && ISQRECTF(1) && HB_ISNUM(2) && HB_ISNUM(3) && ISNUMORNIL(4))
  {
    /*
    void addRoundedRect( const QRectF &rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->addRoundedRect(*PQRECTF(1), PQREAL(2), PQREAL(3),
                          HB_ISNIL(4) ? (Qt::SizeMode)Qt::AbsoluteSize : (Qt::SizeMode)hb_parni(4));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISBETWEEN(6, 7) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && HB_ISNUM(6) &&
           ISNUMORNIL(7))
  {
    /*
    void addRoundedRect( qreal x, qreal y, qreal w, qreal h, qreal xRadius, qreal yRadius, Qt::SizeMode mode =
    Qt::AbsoluteSize )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->addRoundedRect(PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6),
                          HB_ISNIL(7) ? (Qt::SizeMode)Qt::AbsoluteSize : (Qt::SizeMode)hb_parni(7));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPAINTERPATH_ADDTEXT)
{
  if (ISNUMPAR(3) && ISQPOINTF(1) && ISQFONT(2) && HB_ISCHAR(3))
  {
    /*
    void addText( const QPointF &point, const QFont &font, const QString &text )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->addText(*PQPOINTF(1), *PQFONT(2), PQSTRING(3));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && ISQFONT(3) && HB_ISCHAR(4))
  {
    /*
    void addText( qreal x, qreal y, const QFont &font, const QString &text )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->addText(PQREAL(1), PQREAL(2), *PQFONT(3), PQSTRING(4));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
qreal angleAtPercent( qreal t ) const
*/
HB_FUNC_STATIC(QPAINTERPATH_ANGLEATPERCENT)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RQREAL(obj->angleAtPercent(PQREAL(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QPAINTERPATH_ARCMOVETO)
{
  if (ISNUMPAR(2) && ISQRECTF(1) && HB_ISNUM(2))
  {
    /*
    void arcMoveTo( const QRectF &rectangle, qreal angle )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->arcMoveTo(*PQRECTF(1), PQREAL(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(5) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5))
  {
    /*
    void arcMoveTo( qreal x, qreal y, qreal width, qreal height, qreal angle )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->arcMoveTo(PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPAINTERPATH_ARCTO)
{
  if (ISNUMPAR(3) && ISQRECTF(1) && HB_ISNUM(2) && HB_ISNUM(3))
  {
    /*
    void arcTo( const QRectF &rectangle, qreal startAngle, qreal sweepLength )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->arcTo(*PQRECTF(1), PQREAL(2), PQREAL(3));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(6) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && HB_ISNUM(6))
  {
    /*
    void arcTo( qreal x, qreal y, qreal width, qreal height, qreal startAngle, qreal sweepLength )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->arcTo(PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QRectF boundingRect() const
*/
HB_FUNC_STATIC(QPAINTERPATH_BOUNDINGRECT)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QRectF *ptr = new QRectF(obj->boundingRect());
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void closeSubpath()
*/
HB_FUNC_STATIC(QPAINTERPATH_CLOSESUBPATH)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->closeSubpath();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void connectPath( const QPainterPath &path )
*/
HB_FUNC_STATIC(QPAINTERPATH_CONNECTPATH)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPAINTERPATH(1))
    {
#endif
      obj->connectPath(*PQPAINTERPATH(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC(QPAINTERPATH_CONTAINS)
{
  if (ISNUMPAR(1) && ISQPOINTF(1))
  {
    /*
    bool contains( const QPointF &point ) const
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RBOOL(obj->contains(*PQPOINTF(1)));
    }
  }
  else if (ISNUMPAR(1) && ISQRECTF(1))
  {
    /*
    bool contains( const QRectF &rectangle ) const
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RBOOL(obj->contains(*PQRECTF(1)));
    }
  }
  else if (ISNUMPAR(1) && ISQPAINTERPATH(1))
  {
    /*
    bool contains( const QPainterPath &p ) const
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RBOOL(obj->contains(*PQPAINTERPATH(1)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QRectF controlPointRect() const
*/
HB_FUNC_STATIC(QPAINTERPATH_CONTROLPOINTRECT)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QRectF *ptr = new QRectF(obj->controlPointRect());
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QPAINTERPATH_CUBICTO)
{
  if (ISNUMPAR(3) && ISQPOINTF(1) && ISQPOINTF(2) && ISQPOINTF(3))
  {
    /*
    void cubicTo( const QPointF &c1, const QPointF &c2, const QPointF &endPoint )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->cubicTo(*PQPOINTF(1), *PQPOINTF(2), *PQPOINTF(3));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(6) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && HB_ISNUM(6))
  {
    /*
    void cubicTo( qreal c1X, qreal c1Y, qreal c2X, qreal c2Y, qreal endPointX, qreal endPointY )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->cubicTo(PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QPointF currentPosition() const
*/
HB_FUNC_STATIC(QPAINTERPATH_CURRENTPOSITION)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPointF *ptr = new QPointF(obj->currentPosition());
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int elementCount() const
*/
HB_FUNC_STATIC(QPAINTERPATH_ELEMENTCOUNT)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->elementCount());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
Qt::FillRule fillRule() const
*/
HB_FUNC_STATIC(QPAINTERPATH_FILLRULE)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->fillRule());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QPainterPath intersected( const QPainterPath &p ) const
*/
HB_FUNC_STATIC(QPAINTERPATH_INTERSECTED)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPAINTERPATH(1))
    {
#endif
      QPainterPath *ptr = new QPainterPath(obj->intersected(*PQPAINTERPATH(1)));
      Qt5xHb::createReturnClass(ptr, "QPAINTERPATH", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QPAINTERPATH_INTERSECTS)
{
  if (ISNUMPAR(1) && ISQRECTF(1))
  {
    /*
    bool intersects( const QRectF &rectangle ) const
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RBOOL(obj->intersects(*PQRECTF(1)));
    }
  }
  else if (ISNUMPAR(1) && ISQPAINTERPATH(1))
  {
    /*
    bool intersects( const QPainterPath &p ) const
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RBOOL(obj->intersects(*PQPAINTERPATH(1)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool isEmpty() const
*/
HB_FUNC_STATIC(QPAINTERPATH_ISEMPTY)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isEmpty());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
qreal length() const
*/
HB_FUNC_STATIC(QPAINTERPATH_LENGTH)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->length());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QPAINTERPATH_LINETO)
{
  if (ISNUMPAR(1) && ISQPOINTF(1))
  {
    /*
    void lineTo( const QPointF &endPoint )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->lineTo(*PQPOINTF(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    void lineTo( qreal x, qreal y )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->lineTo(PQREAL(1), PQREAL(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPAINTERPATH_MOVETO)
{
  if (ISNUMPAR(1) && ISQPOINTF(1))
  {
    /*
    void moveTo( const QPointF &point )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->moveTo(*PQPOINTF(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    void moveTo( qreal x, qreal y )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->moveTo(PQREAL(1), PQREAL(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
qreal percentAtLength( qreal len ) const
*/
HB_FUNC_STATIC(QPAINTERPATH_PERCENTATLENGTH)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RQREAL(obj->percentAtLength(PQREAL(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QPointF pointAtPercent( qreal t ) const
*/
HB_FUNC_STATIC(QPAINTERPATH_POINTATPERCENT)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      QPointF *ptr = new QPointF(obj->pointAtPercent(PQREAL(1)));
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QPAINTERPATH_QUADTO)
{
  if (ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2))
  {
    /*
    void quadTo( const QPointF &c, const QPointF &endPoint )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->quadTo(*PQPOINTF(1), *PQPOINTF(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
  {
    /*
    void quadTo( qreal cx, qreal cy, qreal endPointX, qreal endPointY )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->quadTo(PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setElementPositionAt( int index, qreal x, qreal y )
*/
HB_FUNC_STATIC(QPAINTERPATH_SETELEMENTPOSITIONAT)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3))
    {
#endif
      obj->setElementPositionAt(PINT(1), PQREAL(2), PQREAL(3));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setFillRule( Qt::FillRule fillRule )
*/
HB_FUNC_STATIC(QPAINTERPATH_SETFILLRULE)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setFillRule((Qt::FillRule)hb_parni(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QPainterPath simplified() const
*/
HB_FUNC_STATIC(QPAINTERPATH_SIMPLIFIED)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPainterPath *ptr = new QPainterPath(obj->simplified());
      Qt5xHb::createReturnClass(ptr, "QPAINTERPATH", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
qreal slopeAtPercent( qreal t ) const
*/
HB_FUNC_STATIC(QPAINTERPATH_SLOPEATPERCENT)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RQREAL(obj->slopeAtPercent(PQREAL(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QPainterPath subtracted( const QPainterPath &p ) const
*/
HB_FUNC_STATIC(QPAINTERPATH_SUBTRACTED)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPAINTERPATH(1))
    {
#endif
      QPainterPath *ptr = new QPainterPath(obj->subtracted(*PQPAINTERPATH(1)));
      Qt5xHb::createReturnClass(ptr, "QPAINTERPATH", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void swap( QPainterPath &other )
*/
HB_FUNC_STATIC(QPAINTERPATH_SWAP)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPAINTERPATH(1))
    {
#endif
      obj->swap(*PQPAINTERPATH(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC(QPAINTERPATH_TOFILLPOLYGON)
{
  if (ISNUMPAR(1) && ISQTRANSFORM(1))
  {
    /*
    QPolygonF toFillPolygon( const QTransform &matrix ) const
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QPolygonF *ptr = new QPolygonF(obj->toFillPolygon(*PQTRANSFORM(1)));
      Qt5xHb::createReturnClass(ptr, "QPOLYGONF", true);
    }
  }
  else if (ISBETWEEN(0, 1) && ISQMATRIX(1))
  {
    /*
    QPolygonF toFillPolygon( const QMatrix &matrix = QMatrix() ) const
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QPolygonF *ptr = new QPolygonF(obj->toFillPolygon(HB_ISNIL(1) ? QMatrix() : *(QMatrix *)Qt5xHb::itemGetPtr(1)));
      Qt5xHb::createReturnClass(ptr, "QPOLYGONF", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QPainterPath toReversed() const
*/
HB_FUNC_STATIC(QPAINTERPATH_TOREVERSED)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPainterPath *ptr = new QPainterPath(obj->toReversed());
      Qt5xHb::createReturnClass(ptr, "QPAINTERPATH", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QPAINTERPATH_TRANSLATE)
{
  if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    void translate( qreal dx, qreal dy )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->translate(PQREAL(1), PQREAL(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && ISQPOINTF(1))
  {
    /*
    void translate( const QPointF &offset )
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->translate(*PQPOINTF(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPAINTERPATH_TRANSLATED)
{
  if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    QPainterPath translated( qreal dx, qreal dy ) const
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QPainterPath *ptr = new QPainterPath(obj->translated(PQREAL(1), PQREAL(2)));
      Qt5xHb::createReturnClass(ptr, "QPAINTERPATH", true);
    }
  }
  else if (ISNUMPAR(1) && ISQPOINTF(1))
  {
    /*
    QPainterPath translated( const QPointF &offset ) const
    */
    QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QPainterPath *ptr = new QPainterPath(obj->translated(*PQPOINTF(1)));
      Qt5xHb::createReturnClass(ptr, "QPAINTERPATH", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QPainterPath united( const QPainterPath &p ) const
*/
HB_FUNC_STATIC(QPAINTERPATH_UNITED)
{
  QPainterPath *obj = (QPainterPath *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPAINTERPATH(1))
    {
#endif
      QPainterPath *ptr = new QPainterPath(obj->united(*PQPAINTERPATH(1)));
      Qt5xHb::createReturnClass(ptr, "QPAINTERPATH", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QPAINTERPATH_NEWFROM)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISOBJECT(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (hb_pcount() == 1 && HB_ISPOINTER(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC(QPAINTERPATH_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QPAINTERPATH_NEWFROM);
}

HB_FUNC_STATIC(QPAINTERPATH_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QPAINTERPATH_NEWFROM);
}

HB_FUNC_STATIC(QPAINTERPATH_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QPAINTERPATH_SETSELFDESTRUCTION)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISLOG(1))
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
