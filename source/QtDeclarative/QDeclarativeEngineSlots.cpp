/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QDeclarativeEngineSlots.h"


static SlotsQDeclarativeEngine * s = NULL;

SlotsQDeclarativeEngine::SlotsQDeclarativeEngine(QObject *parent) : QObject(parent)
{
}

SlotsQDeclarativeEngine::~SlotsQDeclarativeEngine()
{
}

void SlotsQDeclarativeEngine::quit ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "quit()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQDeclarativeEngine::warnings ( const QList<QDeclarativeError> & warnings )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "warnings(QList<QDeclarativeError>)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QDECLARATIVEERROR" );
    #else
    pDynSym = hb_dynsymFindName( "QDECLARATIVEERROR" );
    #endif
    PHB_ITEM pwarnings = hb_itemArrayNew(0);
    int i;
    for(i=0;i<warnings.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QDeclarativeError *) new QDeclarativeError ( warnings [i] ) );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( pwarnings, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
    }
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pwarnings );
    hb_itemRelease( psender );
    hb_itemRelease( pwarnings );
  }
}

HB_FUNC( QDECLARATIVEENGINE_ONQUIT )
{
  if( s == NULL )
  {
    s = new SlotsQDeclarativeEngine(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "quit()", "quit()" ) );
}

HB_FUNC( QDECLARATIVEENGINE_ONWARNINGS )
{
  if( s == NULL )
  {
    s = new SlotsQDeclarativeEngine(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "warnings(QList<QDeclarativeError>)", "warnings(QList<QDeclarativeError>)" ) );
}
