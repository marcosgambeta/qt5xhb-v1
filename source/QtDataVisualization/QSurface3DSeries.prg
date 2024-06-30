/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QPOINT
REQUEST QSURFACEDATAPROXY
#endif

CLASS QSurface3DSeries INHERIT QAbstract3DSeries

   METHOD new
   METHOD delete
   METHOD dataProxy
   METHOD setDataProxy
   METHOD selectedPoint
   METHOD setSelectedPoint
   METHOD isFlatShadingEnabled
   METHOD setFlatShadingEnabled
   METHOD isFlatShadingSupported
   METHOD drawMode
   METHOD setDrawMode
   METHOD texture
   METHOD setTexture
   METHOD textureFile
   METHOD setTextureFile
   METHOD invalidSelectionPosition

   METHOD onDataProxyChanged
   METHOD onDrawModeChanged
   METHOD onFlatShadingEnabledChanged
   METHOD onFlatShadingSupportedChanged
   METHOD onSelectedPointChanged
   METHOD onTextureChanged
   METHOD onTextureFileChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSurface3DSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/QSurface3DSeries>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtDataVisualization/QSurface3DSeries>
#endif

    using namespace QtDataVisualization;

HB_FUNC_STATIC(QSURFACE3DSERIES_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    /*
    QSurface3DSeries( QObject * parent = nullptr )
    */
    QSurface3DSeries *obj = new QSurface3DSeries(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 2) && ISQSURFACEDATAPROXY(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    /*
    QSurface3DSeries( QSurfaceDataProxy * dataProxy, QObject * parent = nullptr )
    */
    QSurface3DSeries *obj = new QSurface3DSeries(PQSURFACEDATAPROXY(1), OPQOBJECT(2, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~QSurface3DSeries()
*/
HB_FUNC_STATIC(QSURFACE3DSERIES_DELETE)
{
  QSurface3DSeries *obj = (QSurface3DSeries *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSurfaceDataProxy * dataProxy() const
*/
HB_FUNC_STATIC(QSURFACE3DSERIES_DATAPROXY)
{
  QSurface3DSeries *obj = (QSurface3DSeries *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSurfaceDataProxy *ptr = obj->dataProxy();
      Qt5xHb::createReturnQObjectClass(ptr, "QSURFACEDATAPROXY");
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
void setDataProxy( QSurfaceDataProxy * proxy )
*/
HB_FUNC_STATIC(QSURFACE3DSERIES_SETDATAPROXY)
{
  QSurface3DSeries *obj = (QSurface3DSeries *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSURFACEDATAPROXY(1))
    {
#endif
      obj->setDataProxy(PQSURFACEDATAPROXY(1));
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
QPoint selectedPoint() const
*/
HB_FUNC_STATIC(QSURFACE3DSERIES_SELECTEDPOINT)
{
  QSurface3DSeries *obj = (QSurface3DSeries *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPoint *ptr = new QPoint(obj->selectedPoint());
      Qt5xHb::createReturnClass(ptr, "QPOINT", true);
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
void setSelectedPoint( const QPoint & position )
*/
HB_FUNC_STATIC(QSURFACE3DSERIES_SETSELECTEDPOINT)
{
  QSurface3DSeries *obj = (QSurface3DSeries *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPOINT(1))
    {
#endif
      obj->setSelectedPoint(*PQPOINT(1));
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
bool isFlatShadingEnabled() const
*/
HB_FUNC_STATIC(QSURFACE3DSERIES_ISFLATSHADINGENABLED)
{
  QSurface3DSeries *obj = (QSurface3DSeries *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isFlatShadingEnabled());
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
void setFlatShadingEnabled( bool enabled )
*/
HB_FUNC_STATIC(QSURFACE3DSERIES_SETFLATSHADINGENABLED)
{
  QSurface3DSeries *obj = (QSurface3DSeries *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setFlatShadingEnabled(PBOOL(1));
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
bool isFlatShadingSupported() const
*/
HB_FUNC_STATIC(QSURFACE3DSERIES_ISFLATSHADINGSUPPORTED)
{
  QSurface3DSeries *obj = (QSurface3DSeries *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isFlatShadingSupported());
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
QSurface3DSeries::DrawFlags drawMode() const
*/
HB_FUNC_STATIC(QSURFACE3DSERIES_DRAWMODE)
{
  QSurface3DSeries *obj = (QSurface3DSeries *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->drawMode());
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
void setDrawMode( QSurface3DSeries::DrawFlags mode )
*/
HB_FUNC_STATIC(QSURFACE3DSERIES_SETDRAWMODE)
{
  QSurface3DSeries *obj = (QSurface3DSeries *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setDrawMode((QSurface3DSeries::DrawFlags)hb_parni(1));
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
QImage texture() const
*/
HB_FUNC_STATIC(QSURFACE3DSERIES_TEXTURE)
{
  QSurface3DSeries *obj = (QSurface3DSeries *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QImage *ptr = new QImage(obj->texture());
      Qt5xHb::createReturnClass(ptr, "QIMAGE", true);
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
void setTexture( const QImage & texture )
*/
HB_FUNC_STATIC(QSURFACE3DSERIES_SETTEXTURE)
{
  QSurface3DSeries *obj = (QSurface3DSeries *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQIMAGE(1))
    {
#endif
      obj->setTexture(*PQIMAGE(1));
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
QString textureFile() const
*/
HB_FUNC_STATIC(QSURFACE3DSERIES_TEXTUREFILE)
{
  QSurface3DSeries *obj = (QSurface3DSeries *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->textureFile());
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
void setTextureFile( const QString & filename )
*/
HB_FUNC_STATIC(QSURFACE3DSERIES_SETTEXTUREFILE)
{
  QSurface3DSeries *obj = (QSurface3DSeries *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setTextureFile(PQSTRING(1));
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
static QPoint invalidSelectionPosition()
*/
HB_FUNC_STATIC(QSURFACE3DSERIES_INVALIDSELECTIONPOSITION)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    QPoint *ptr = new QPoint(QSurface3DSeries::invalidSelectionPosition());
    Qt5xHb::createReturnClass(ptr, "QPOINT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

void QSurface3DSeriesSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QSURFACE3DSERIES_ONDATAPROXYCHANGED)
{
  QSurface3DSeriesSlots_connect_signal("dataProxyChanged(QSurfaceDataProxy*)", "dataProxyChanged(QSurfaceDataProxy*)");
}

HB_FUNC_STATIC(QSURFACE3DSERIES_ONDRAWMODECHANGED)
{
  QSurface3DSeriesSlots_connect_signal("drawModeChanged(QSurface3DSeries::DrawFlags)",
                                       "drawModeChanged(QSurface3DSeries::DrawFlags)");
}

HB_FUNC_STATIC(QSURFACE3DSERIES_ONFLATSHADINGENABLEDCHANGED)
{
  QSurface3DSeriesSlots_connect_signal("flatShadingEnabledChanged(bool)", "flatShadingEnabledChanged(bool)");
}

HB_FUNC_STATIC(QSURFACE3DSERIES_ONFLATSHADINGSUPPORTEDCHANGED)
{
  QSurface3DSeriesSlots_connect_signal("flatShadingSupportedChanged(bool)", "flatShadingSupportedChanged(bool)");
}

HB_FUNC_STATIC(QSURFACE3DSERIES_ONSELECTEDPOINTCHANGED)
{
  QSurface3DSeriesSlots_connect_signal("selectedPointChanged(QPoint)", "selectedPointChanged(QPoint)");
}

HB_FUNC_STATIC(QSURFACE3DSERIES_ONTEXTURECHANGED)
{
  QSurface3DSeriesSlots_connect_signal("textureChanged(QImage)", "textureChanged(QImage)");
}

HB_FUNC_STATIC(QSURFACE3DSERIES_ONTEXTUREFILECHANGED)
{
  QSurface3DSeriesSlots_connect_signal("textureFileChanged(QString)", "textureFileChanged(QString)");
}

#pragma ENDDUMP
