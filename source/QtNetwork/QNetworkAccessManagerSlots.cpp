//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QNetworkAccessManagerSlots.hpp"

QNetworkAccessManagerSlots::QNetworkAccessManagerSlots(QObject *parent) : QObject(parent)
{
}

QNetworkAccessManagerSlots::~QNetworkAccessManagerSlots()
{
}

void QNetworkAccessManagerSlots::proxyAuthenticationRequired(const QNetworkProxy &proxy, QAuthenticator *authenticator)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QNETWORKACCESSMANAGER");
    PHB_ITEM pproxy = Qt5xHb::Signals_return_object((void *)&proxy, "QNETWORKPROXY");
    PHB_ITEM pauthenticator = Qt5xHb::Signals_return_object((void *)authenticator, "QAUTHENTICATOR");

    hb_vmEvalBlockV(cb, 3, psender, pproxy, pauthenticator);

    hb_itemRelease(psender);
    hb_itemRelease(pproxy);
    hb_itemRelease(pauthenticator);
  }
}

void QNetworkAccessManagerSlots::authenticationRequired(QNetworkReply *reply, QAuthenticator *authenticator)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "authenticationRequired(QNetworkReply*,QAuthenticator*)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QNETWORKACCESSMANAGER");
    PHB_ITEM preply = Qt5xHb::Signals_return_qobject(reply, "QNETWORKREPLY");
    PHB_ITEM pauthenticator = Qt5xHb::Signals_return_object((void *)authenticator, "QAUTHENTICATOR");

    hb_vmEvalBlockV(cb, 3, psender, preply, pauthenticator);

    hb_itemRelease(psender);
    hb_itemRelease(preply);
    hb_itemRelease(pauthenticator);
  }
}

void QNetworkAccessManagerSlots::finished(QNetworkReply *reply)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "finished(QNetworkReply*)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QNETWORKACCESSMANAGER");
    PHB_ITEM preply = Qt5xHb::Signals_return_qobject(reply, "QNETWORKREPLY");

    hb_vmEvalBlockV(cb, 2, psender, preply);

    hb_itemRelease(psender);
    hb_itemRelease(preply);
  }
}

#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
void QNetworkAccessManagerSlots::encrypted(QNetworkReply *reply)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "encrypted(QNetworkReply*)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QNETWORKACCESSMANAGER");
    PHB_ITEM preply = Qt5xHb::Signals_return_qobject(reply, "QNETWORKREPLY");

    hb_vmEvalBlockV(cb, 2, psender, preply);

    hb_itemRelease(psender);
    hb_itemRelease(preply);
  }
}
#endif

void QNetworkAccessManagerSlots::sslErrors(QNetworkReply *reply, const QList<QSslError> &errors)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "sslErrors(QNetworkReply*,QList<QSslError>)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QNETWORKACCESSMANAGER");
    PHB_ITEM preply = Qt5xHb::Signals_return_qobject(reply, "QNETWORKREPLY");
    PHB_DYNS pDynSym = hb_dynsymFindName("QSSLERROR");
    PHB_ITEM perrors = hb_itemArrayNew(0);
    if (pDynSym != NULL)
    {
      for (int i = 0; i < errors.count(); i++)
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        PHB_ITEM pTempObject = hb_itemNew(NULL);
        hb_itemCopy(pTempObject, hb_stackReturnItem());
        PHB_ITEM pTempItem = hb_itemPutPtr(NULL, new QSslError(errors[i]));
        hb_objSendMsg(pTempObject, "NEWFROMPOINTER", 1, pTempItem);
        hb_arrayAddForward(perrors, pTempObject);
        hb_itemRelease(pTempObject);
        hb_itemRelease(pTempItem);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QSSLERROR", HB_ERR_ARGS_BASEPARAMS);
    }

    hb_vmEvalBlockV(cb, 3, psender, preply, perrors);

    hb_itemRelease(psender);
    hb_itemRelease(preply);
    hb_itemRelease(perrors);
  }
}

#if (QT_VERSION >= QT_VERSION_CHECK(5, 5, 0))
void QNetworkAccessManagerSlots::preSharedKeyAuthenticationRequired(QNetworkReply *reply,
                                                                    QSslPreSharedKeyAuthenticator *authenticator)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(
      object, "preSharedKeyAuthenticationRequired(QNetworkReply*,QSslPreSharedKeyAuthenticator*)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QNETWORKACCESSMANAGER");
    PHB_ITEM preply = Qt5xHb::Signals_return_qobject(reply, "QNETWORKREPLY");
    PHB_ITEM pauthenticator = Qt5xHb::Signals_return_object((void *)authenticator, "QSSLPRESHAREDKEYAUTHENTICATOR");

    hb_vmEvalBlockV(cb, 3, psender, preply, pauthenticator);

    hb_itemRelease(psender);
    hb_itemRelease(preply);
    hb_itemRelease(pauthenticator);
  }
}
#endif

void QNetworkAccessManagerSlots::networkSessionConnected()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "networkSessionConnected()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QNETWORKACCESSMANAGER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QNetworkAccessManagerSlots::networkAccessibleChanged(QNetworkAccessManager::NetworkAccessibility accessible)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb =
      Qt5xHb::Signals_return_codeblock(object, "networkAccessibleChanged(QNetworkAccessManager::NetworkAccessibility)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QNETWORKACCESSMANAGER");
    PHB_ITEM paccessible = hb_itemPutNI(NULL, static_cast<int>(accessible));

    hb_vmEvalBlockV(cb, 2, psender, paccessible);

    hb_itemRelease(psender);
    hb_itemRelease(paccessible);
  }
}

void QNetworkAccessManagerSlots_connect_signal(const QString &signal, const QString &slot)
{
  QNetworkAccessManager *obj = (QNetworkAccessManager *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QNetworkAccessManagerSlots *s = QCoreApplication::instance()->findChild<QNetworkAccessManagerSlots *>();

    if (s == NULL)
    {
      s = new QNetworkAccessManagerSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
