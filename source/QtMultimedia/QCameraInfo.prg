//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QCameraInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD deviceName
   METHOD description
   METHOD position
   METHOD orientation
   METHOD defaultCamera
   METHOD availableCameras

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
#include <QtMultimedia/QCameraInfo>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
#include <QtMultimedia/QCameraInfo>
#endif
#endif

HB_FUNC_STATIC(QCAMERAINFO_NEW)
{
  if (ISBETWEEN(0, 1) && ISQBYTEARRAY(1))
  {
    /*
    QCameraInfo( const QByteArray &name = QByteArray() )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    QCameraInfo *obj = new QCameraInfo(HB_ISNIL(1) ? QByteArray() : *(QByteArray *)Qt5xHb::itemGetPtr(1));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(1) && ISQCAMERA(1))
  {
    /*
    QCameraInfo( const QCamera &camera )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    QCameraInfo *obj = new QCameraInfo(*PQCAMERA(1));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(1) && ISQCAMERAINFO(1))
  {
    /*
    QCameraInfo( const QCameraInfo &other )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    QCameraInfo *obj = new QCameraInfo(*PQCAMERAINFO(1));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QCameraInfo()
*/
HB_FUNC_STATIC(QCAMERAINFO_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QCameraInfo *obj = (QCameraInfo *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool isNull() const
*/
HB_FUNC_STATIC(QCAMERAINFO_ISNULL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QCameraInfo *obj = (QCameraInfo *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isNull());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QString deviceName() const
*/
HB_FUNC_STATIC(QCAMERAINFO_DEVICENAME)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QCameraInfo *obj = (QCameraInfo *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->deviceName());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QString description() const
*/
HB_FUNC_STATIC(QCAMERAINFO_DESCRIPTION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QCameraInfo *obj = (QCameraInfo *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->description());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QCamera::Position position() const
*/
HB_FUNC_STATIC(QCAMERAINFO_POSITION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QCameraInfo *obj = (QCameraInfo *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->position());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
int orientation() const
*/
HB_FUNC_STATIC(QCAMERAINFO_ORIENTATION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QCameraInfo *obj = (QCameraInfo *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->orientation());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
static QCameraInfo defaultCamera()
*/
HB_FUNC_STATIC(QCAMERAINFO_DEFAULTCAMERA)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    QCameraInfo *ptr = new QCameraInfo(QCameraInfo::defaultCamera());
    Qt5xHb::createReturnClass(ptr, "QCAMERAINFO", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static QList<QCameraInfo> availableCameras( QCamera::Position position = QCamera::UnspecifiedPosition )
*/
HB_FUNC_STATIC(QCAMERAINFO_AVAILABLECAMERAS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(0, 1) && ISNUMORNIL(1))
  {
#endif
    QList<QCameraInfo> list = QCameraInfo::availableCameras(
        HB_ISNIL(1) ? (QCamera::Position)QCamera::UnspecifiedPosition : (QCamera::Position)hb_parni(1));
    PHB_DYNS pDynSym = hb_dynsymFindName("QCAMERAINFO");
    PHB_ITEM pArray = hb_itemArrayNew(0);
    if (pDynSym != NULL)
    {
      for (int i = 0; i < list.count(); i++)
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        PHB_ITEM pObject = hb_itemNew(NULL);
        hb_itemCopy(pObject, hb_stackReturnItem());
        PHB_ITEM pItem = hb_itemPutPtr(NULL, new QCameraInfo(list[i]));
        hb_objSendMsg(pObject, "_POINTER", 1, pItem);
        hb_itemRelease(pItem);
        PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
        hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
        hb_itemRelease(pDestroy);
        hb_arrayAddForward(pArray, pObject);
        hb_itemRelease(pObject);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QCAMERAINFO", HB_ERR_ARGS_BASEPARAMS);
    }
    hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

#pragma ENDDUMP
