/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QSqlTableModelSlots.h"


static SlotsQSqlTableModel * s = NULL;

SlotsQSqlTableModel::SlotsQSqlTableModel(QObject *parent) : QObject(parent)
{
}

SlotsQSqlTableModel::~SlotsQSqlTableModel()
{
}

void SlotsQSqlTableModel::beforeDelete ( int row )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "beforeDelete(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prow );
    hb_itemRelease( psender );
    hb_itemRelease( prow );
  }
#endif
}

void SlotsQSqlTableModel::beforeInsert ( QSqlRecord & record )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "beforeInsert(QSqlRecord)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM precord = hb_itemPutPtr( NULL, (QSqlRecord *) &record );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, precord );
    hb_itemRelease( psender );
    hb_itemRelease( precord );
  }
#endif
}

void SlotsQSqlTableModel::beforeUpdate ( int row, QSqlRecord & record )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "beforeUpdate(int,QSqlRecord)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    PHB_ITEM precord = hb_itemPutPtr( NULL, (QSqlRecord *) &record );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prow, precord );
    hb_itemRelease( psender );
    hb_itemRelease( prow );
    hb_itemRelease( precord );
  }
#endif
}

void SlotsQSqlTableModel::primeInsert ( int row, QSqlRecord & record )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "primeInsert(int,QSqlRecord)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prow = hb_itemPutNI( NULL, row );
    PHB_ITEM precord = hb_itemPutPtr( NULL, (QSqlRecord *) &record );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prow, precord );
    hb_itemRelease( psender );
    hb_itemRelease( prow );
    hb_itemRelease( precord );
  }
#endif
}

HB_FUNC( QSQLTABLEMODEL_ONBEFOREDELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQSqlTableModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "beforeDelete(int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(beforeDelete(int)), s, SLOT(beforeDelete(int)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "beforeDelete(int)";
    ret = object->disconnect(object, SIGNAL(beforeDelete(int)), s, SLOT(beforeDelete(int)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSQLTABLEMODEL_ONBEFOREINSERT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQSqlTableModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "beforeInsert(QSqlRecord)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(beforeInsert(QSqlRecord)), s, SLOT(beforeInsert(QSqlRecord)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "beforeInsert(QSqlRecord)";
    ret = object->disconnect(object, SIGNAL(beforeInsert(QSqlRecord)), s, SLOT(beforeInsert(QSqlRecord)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSQLTABLEMODEL_ONBEFOREUPDATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQSqlTableModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "beforeUpdate(int,QSqlRecord)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(beforeUpdate(int,QSqlRecord)), s, SLOT(beforeUpdate(int,QSqlRecord)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "beforeUpdate(int,QSqlRecord)";
    ret = object->disconnect(object, SIGNAL(beforeUpdate(int,QSqlRecord)), s, SLOT(beforeUpdate(int,QSqlRecord)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSQLTABLEMODEL_ONPRIMEINSERT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQSqlTableModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "primeInsert(int,QSqlRecord)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(primeInsert(int,QSqlRecord)), s, SLOT(primeInsert(int,QSqlRecord)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "primeInsert(int,QSqlRecord)";
    ret = object->disconnect(object, SIGNAL(primeInsert(int,QSqlRecord)), s, SLOT(primeInsert(int,QSqlRecord)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}

