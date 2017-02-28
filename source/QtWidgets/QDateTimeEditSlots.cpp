/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QDateTimeEditSlots.h"


static SlotsQDateTimeEdit * s = NULL;

SlotsQDateTimeEdit::SlotsQDateTimeEdit(QObject *parent) : QObject(parent)
{
}

SlotsQDateTimeEdit::~SlotsQDateTimeEdit()
{
}

void SlotsQDateTimeEdit::dateChanged ( const QDate & date )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dateChanged(QDate)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdate = hb_itemPutPtr( NULL, (QDate *) &date );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdate );
    hb_itemRelease( psender );
    hb_itemRelease( pdate );
  }
}

void SlotsQDateTimeEdit::dateTimeChanged ( const QDateTime & datetime )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dateTimeChanged(QDateTime)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdatetime = hb_itemPutPtr( NULL, (QDateTime *) &datetime );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdatetime );
    hb_itemRelease( psender );
    hb_itemRelease( pdatetime );
  }
}

void SlotsQDateTimeEdit::timeChanged ( const QTime & time )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "timeChanged(QTime)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptime = hb_itemPutPtr( NULL, (QTime *) &time );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptime );
    hb_itemRelease( psender );
    hb_itemRelease( ptime );
  }
}

HB_FUNC( QDATETIMEEDIT_ONDATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDateTimeEdit(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "dateChanged(QDate)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(dateChanged(QDate)), s, SLOT(dateChanged(QDate)) );
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
    QString signal = "dateChanged(QDate)";
    ret = object->disconnect(object, SIGNAL(dateChanged(QDate)), s, SLOT(dateChanged(QDate)) );
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
}

HB_FUNC( QDATETIMEEDIT_ONDATETIMECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDateTimeEdit(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "dateTimeChanged(QDateTime)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(dateTimeChanged(QDateTime)), s, SLOT(dateTimeChanged(QDateTime)) );
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
    QString signal = "dateTimeChanged(QDateTime)";
    ret = object->disconnect(object, SIGNAL(dateTimeChanged(QDateTime)), s, SLOT(dateTimeChanged(QDateTime)) );
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
}

HB_FUNC( QDATETIMEEDIT_ONTIMECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDateTimeEdit(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "timeChanged(QTime)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(timeChanged(QTime)), s, SLOT(timeChanged(QTime)) );
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
    QString signal = "timeChanged(QTime)";
    ret = object->disconnect(object, SIGNAL(timeChanged(QTime)), s, SLOT(timeChanged(QTime)) );
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
}
