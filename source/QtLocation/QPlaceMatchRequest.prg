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

CLASS QPlaceMatchRequest

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setResults
   METHOD clear

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPlaceMatchRequest
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
#include <QtLocation/QPlaceMatchRequest>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
#include <QtLocation/QPlaceMatchRequest>
#endif
#endif

HB_FUNC_STATIC(QPLACEMATCHREQUEST_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QPlaceMatchRequest()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
    QPlaceMatchRequest *obj = new QPlaceMatchRequest();
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(1) && ISQPLACEMATCHREQUEST(1))
  {
    /*
    QPlaceMatchRequest( const QPlaceMatchRequest &other )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
    QPlaceMatchRequest *obj = new QPlaceMatchRequest(*PQPLACEMATCHREQUEST(1));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPLACEMATCHREQUEST_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QPlaceMatchRequest *obj = (QPlaceMatchRequest *)Qt5xHb::itemGetPtrStackSelfItem();

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
void setResults( const QList<QPlaceSearchResult> &results )
*/
HB_FUNC_STATIC(QPLACEMATCHREQUEST_SETRESULTS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QPlaceMatchRequest *obj = (QPlaceMatchRequest *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISARRAY(1))
    {
#endif
      QList<QPlaceSearchResult> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int nLen1 = hb_arrayLen(aList1);
      for (int i1 = 0; i1 < nLen1; i1++)
      {
        par1 << *(QPlaceSearchResult *)hb_itemGetPtr(hb_objSendMsg(hb_arrayGetItemPtr(aList1, i1 + 1), "POINTER", 0));
      }
      obj->setResults(par1);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void clear()
*/
HB_FUNC_STATIC(QPLACEMATCHREQUEST_CLEAR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 4, 0))
  QPlaceMatchRequest *obj = (QPlaceMatchRequest *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clear();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

HB_FUNC_STATIC(QPLACEMATCHREQUEST_NEWFROM)
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

HB_FUNC_STATIC(QPLACEMATCHREQUEST_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QPLACEMATCHREQUEST_NEWFROM);
}

HB_FUNC_STATIC(QPLACEMATCHREQUEST_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QPLACEMATCHREQUEST_NEWFROM);
}

HB_FUNC_STATIC(QPLACEMATCHREQUEST_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QPLACEMATCHREQUEST_SETSELFDESTRUCTION)
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
