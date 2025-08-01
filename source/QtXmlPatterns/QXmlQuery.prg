//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTMESSAGEHANDLER
REQUEST QABSTRACTURIRESOLVER
REQUEST QNETWORKACCESSMANAGER
REQUEST QXMLNAME
REQUEST QXMLNAMEPOOL
#endif

CLASS QXmlQuery

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bindVariable
   METHOD evaluateTo
   METHOD initialTemplateName
   METHOD isValid
   METHOD messageHandler
   METHOD namePool
   METHOD networkAccessManager
   METHOD queryLanguage
   METHOD setFocus
   METHOD setInitialTemplateName
   METHOD setMessageHandler
   METHOD setNetworkAccessManager
   METHOD setQuery
   METHOD setUriResolver
   METHOD uriResolver

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QXmlQuery
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtXmlPatterns/QXmlQuery>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtXmlPatterns/QXmlQuery>
#endif

#include <QtXmlPatterns/QAbstractMessageHandler>
#include <QtNetwork/QNetworkAccessManager>
#include <QtXmlPatterns/QAbstractUriResolver>

HB_FUNC_STATIC(QXMLQUERY_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QXmlQuery()
    */
    QXmlQuery *obj = new QXmlQuery();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQXMLQUERY(1))
  {
    /*
    QXmlQuery( const QXmlQuery &other )
    */
    QXmlQuery *obj = new QXmlQuery(*PQXMLQUERY(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQXMLNAMEPOOL(1))
  {
    /*
    QXmlQuery( const QXmlNamePool &np )
    */
    QXmlQuery *obj = new QXmlQuery(*PQXMLNAMEPOOL(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (ISQXMLNAMEPOOL(2) || HB_ISNIL(2)))
  {
    /*
    QXmlQuery( QXmlQuery::QueryLanguage queryLanguage, const QXmlNamePool &np = QXmlNamePool() )
    */
    QXmlQuery *obj = new QXmlQuery((QXmlQuery::QueryLanguage)hb_parni(1),
                                   HB_ISNIL(2) ? QXmlNamePool() : *(QXmlNamePool *)Qt5xHb::itemGetPtr(2));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QXMLQUERY_DELETE)
{
  QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

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

HB_FUNC_STATIC(QXMLQUERY_BINDVARIABLE)
{
  if (ISNUMPAR(2) && ISQXMLNAME(1) && ISQXMLITEM(2))
  {
    /*
    void bindVariable( const QXmlName &name, const QXmlItem &value )
    */
    QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->bindVariable(*PQXMLNAME(1), *PQXMLITEM(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && ISQXMLNAME(1) && ISQIODEVICE(2))
  {
    /*
    void bindVariable( const QXmlName &name, QIODevice * device )
    */
    QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->bindVariable(*PQXMLNAME(1), PQIODEVICE(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && ISQXMLNAME(1) && ISQXMLQUERY(2))
  {
    /*
    void bindVariable( const QXmlName &name, const QXmlQuery &query )
    */
    QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->bindVariable(*PQXMLNAME(1), *PQXMLQUERY(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQXMLITEM(2))
  {
    /*
    void bindVariable( const QString &localName, const QXmlItem &value )
    */
    QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->bindVariable(PQSTRING(1), *PQXMLITEM(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQIODEVICE(2))
  {
    /*
    void bindVariable( const QString &localName, QIODevice * device )
    */
    QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->bindVariable(PQSTRING(1), PQIODEVICE(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQXMLQUERY(2))
  {
    /*
    void bindVariable( const QString &localName, const QXmlQuery &query )
    */
    QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->bindVariable(PQSTRING(1), *PQXMLQUERY(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QXMLQUERY_EVALUATETO)
{
  if (ISNUMPAR(1) && ISQXMLRESULTITEMS(1))
  {
    /*
    void evaluateTo( QXmlResultItems * result ) const
    */
    QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->evaluateTo(PQXMLRESULTITEMS(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && ISQABSTRACTXMLRECEIVER(1))
  {
    /*
    bool evaluateTo( QAbstractXmlReceiver * callback ) const
    */
    QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RBOOL(obj->evaluateTo(PQABSTRACTXMLRECEIVER(1)));
    }
  }
  else if (ISNUMPAR(1) && ISQIODEVICE(1))
  {
    /*
    bool evaluateTo( QIODevice * target ) const
    */
    QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RBOOL(obj->evaluateTo(PQIODEVICE(1)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QXmlName initialTemplateName() const
*/
HB_FUNC_STATIC(QXMLQUERY_INITIALTEMPLATENAME)
{
  QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QXmlName *ptr = new QXmlName(obj->initialTemplateName());
      Qt5xHb::createReturnClass(ptr, "QXMLNAME", true);
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
bool isValid() const
*/
HB_FUNC_STATIC(QXMLQUERY_ISVALID)
{
  QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isValid());
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
QAbstractMessageHandler * messageHandler() const
*/
HB_FUNC_STATIC(QXMLQUERY_MESSAGEHANDLER)
{
  QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QAbstractMessageHandler *ptr = obj->messageHandler();
      Qt5xHb::createReturnQObjectClass(ptr, "QABSTRACTMESSAGEHANDLER");
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
QXmlNamePool namePool() const
*/
HB_FUNC_STATIC(QXMLQUERY_NAMEPOOL)
{
  QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QXmlNamePool *ptr = new QXmlNamePool(obj->namePool());
      Qt5xHb::createReturnClass(ptr, "QXMLNAMEPOOL", true);
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
QNetworkAccessManager * networkAccessManager() const
*/
HB_FUNC_STATIC(QXMLQUERY_NETWORKACCESSMANAGER)
{
  QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QNetworkAccessManager *ptr = obj->networkAccessManager();
      Qt5xHb::createReturnQObjectClass(ptr, "QNETWORKACCESSMANAGER");
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
QXmlQuery::QueryLanguage queryLanguage() const
*/
HB_FUNC_STATIC(QXMLQUERY_QUERYLANGUAGE)
{
  QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->queryLanguage());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QXMLQUERY_SETFOCUS)
{
  if (ISNUMPAR(1) && ISQXMLITEM(1))
  {
    /*
    void setFocus( const QXmlItem &item )
    */
    QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->setFocus(*PQXMLITEM(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && ISQURL(1))
  {
    /*
    bool setFocus( const QUrl &documentURI )
    */
    QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RBOOL(obj->setFocus(*PQURL(1)));
    }
  }
  else if (ISNUMPAR(1) && ISQIODEVICE(1))
  {
    /*
    bool setFocus( QIODevice * document )
    */
    QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RBOOL(obj->setFocus(PQIODEVICE(1)));
    }
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    bool setFocus( const QString &focus )
    */
    QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RBOOL(obj->setFocus(PQSTRING(1)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QXMLQUERY_SETINITIALTEMPLATENAME)
{
  if (ISNUMPAR(1) && ISQXMLNAME(1))
  {
    /*
    void setInitialTemplateName( const QXmlName &name )
    */
    QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->setInitialTemplateName(*PQXMLNAME(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    void setInitialTemplateName( const QString &localName )
    */
    QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->setInitialTemplateName(PQSTRING(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setMessageHandler( QAbstractMessageHandler * aMessageHandler )
*/
HB_FUNC_STATIC(QXMLQUERY_SETMESSAGEHANDLER)
{
  QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTMESSAGEHANDLER(1))
    {
#endif
      obj->setMessageHandler(PQABSTRACTMESSAGEHANDLER(1));
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
void setNetworkAccessManager( QNetworkAccessManager * newManager )
*/
HB_FUNC_STATIC(QXMLQUERY_SETNETWORKACCESSMANAGER)
{
  QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQNETWORKACCESSMANAGER(1))
    {
#endif
      obj->setNetworkAccessManager(PQNETWORKACCESSMANAGER(1));
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

HB_FUNC_STATIC(QXMLQUERY_SETQUERY)
{
  if (ISBETWEEN(1, 2) && ISQIODEVICE(1) && (ISQURL(2) || HB_ISNIL(2)))
  {
    /*
    void setQuery( QIODevice * sourceCode, const QUrl &documentURI = QUrl() )
    */
    QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->setQuery(PQIODEVICE(1), HB_ISNIL(2) ? QUrl() : *(QUrl *)Qt5xHb::itemGetPtr(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISBETWEEN(1, 2) && ISQURL(1) && (ISQURL(2) || HB_ISNIL(2)))
  {
    /*
    void setQuery( const QUrl &queryURI, const QUrl &baseURI = QUrl() )
    */
    QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->setQuery(*PQURL(1), HB_ISNIL(2) ? QUrl() : *(QUrl *)Qt5xHb::itemGetPtr(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (ISQURL(2) || HB_ISNIL(2)))
  {
    /*
    void setQuery( const QString &sourceCode, const QUrl &documentURI = QUrl() )
    */
    QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->setQuery(PQSTRING(1), HB_ISNIL(2) ? QUrl() : *(QUrl *)Qt5xHb::itemGetPtr(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setUriResolver( const QAbstractUriResolver * resolver )
*/
HB_FUNC_STATIC(QXMLQUERY_SETURIRESOLVER)
{
  QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTURIRESOLVER(1))
    {
#endif
      obj->setUriResolver(PQABSTRACTURIRESOLVER(1));
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
const QAbstractUriResolver * uriResolver() const
*/
HB_FUNC_STATIC(QXMLQUERY_URIRESOLVER)
{
  QXmlQuery *obj = (QXmlQuery *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      const QAbstractUriResolver *ptr = obj->uriResolver();
      Qt5xHb::createReturnQObjectClass(ptr, "QABSTRACTURIRESOLVER");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QXMLQUERY_NEWFROM)
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

HB_FUNC_STATIC(QXMLQUERY_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QXMLQUERY_NEWFROM);
}

HB_FUNC_STATIC(QXMLQUERY_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QXMLQUERY_NEWFROM);
}

HB_FUNC_STATIC(QXMLQUERY_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QXMLQUERY_SETSELFDESTRUCTION)
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
