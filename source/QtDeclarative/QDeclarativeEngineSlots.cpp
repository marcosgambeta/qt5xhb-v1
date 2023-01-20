/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDeclarativeEngineSlots.h"

QDeclarativeEngineSlots::QDeclarativeEngineSlots( QObject *parent ) : QObject( parent )
{
}

QDeclarativeEngineSlots::~QDeclarativeEngineSlots()
{
}

void QDeclarativeEngineSlots::quit()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "quit()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDECLARATIVEENGINE");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QDeclarativeEngineSlots::warnings( const QList<QDeclarativeError> & warnings )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "warnings(QList<QDeclarativeError>)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDECLARATIVEENGINE");
    PHB_DYNS pDynSym = hb_dynsymFindName("QDECLARATIVEERROR");
    PHB_ITEM pwarnings = hb_itemArrayNew(0);
    if( pDynSym != NULL )
    {
      for( int i = 0; i < warnings.count(); i++ )
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemPutPtr( NULL, new QDeclarativeError( warnings [i] ) );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( pwarnings, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QDECLARATIVEERROR", HB_ERR_ARGS_BASEPARAMS);
    }

    hb_vmEvalBlockV(cb, 2, psender, pwarnings);

    hb_itemRelease(psender);
    hb_itemRelease( pwarnings );
  }
}

void QDeclarativeEngineSlots_connect_signal(const QString & signal, const QString & slot)
{
  QDeclarativeEngine * obj = (QDeclarativeEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QDeclarativeEngineSlots * s = QCoreApplication::instance()->findChild<QDeclarativeEngineSlots*>();

    if( s == NULL )
    {
      s = new QDeclarativeEngineSlots();
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
