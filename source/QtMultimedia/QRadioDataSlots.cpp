/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QRadioDataSlots.h"


static SlotsQRadioData * s = NULL;

SlotsQRadioData::SlotsQRadioData(QObject *parent) : QObject(parent)
{
}

SlotsQRadioData::~SlotsQRadioData()
{
}

void SlotsQRadioData::stationIdChanged(QString stationId)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stationIdChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstationId = hb_itemPutC( NULL, (const char *) stationId.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstationId );
    hb_itemRelease( psender );
    hb_itemRelease( pstationId );
  }
}

void SlotsQRadioData::programTypeChanged(QRadioData::ProgramType programType)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "programTypeChanged(QRadioData::ProgramType)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pprogramType = hb_itemPutNI( NULL, (int) programType );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pprogramType );
    hb_itemRelease( psender );
    hb_itemRelease( pprogramType );
  }
}

void SlotsQRadioData::programTypeNameChanged(QString programTypeName)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "programTypeNameChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pprogramTypeName = hb_itemPutC( NULL, (const char *) programTypeName.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pprogramTypeName );
    hb_itemRelease( psender );
    hb_itemRelease( pprogramTypeName );
  }
}

void SlotsQRadioData::stationNameChanged(QString stationName)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stationNameChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstationName = hb_itemPutC( NULL, (const char *) stationName.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstationName );
    hb_itemRelease( psender );
    hb_itemRelease( pstationName );
  }
}

void SlotsQRadioData::radioTextChanged(QString radioText)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "radioTextChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pradioText = hb_itemPutC( NULL, (const char *) radioText.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pradioText );
    hb_itemRelease( psender );
    hb_itemRelease( pradioText );
  }
}

void SlotsQRadioData::alternativeFrequenciesEnabledChanged(bool enabled)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "alternativeFrequenciesEnabledChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM penabled = hb_itemPutL( NULL, enabled );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, penabled );
    hb_itemRelease( psender );
    hb_itemRelease( penabled );
  }
}

void SlotsQRadioData::error(QRadioData::Error error)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QRadioData::Error)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}

HB_FUNC( QRADIODATA_ONSTATIONIDCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRadioData(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "stationIdChanged(QString)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(stationIdChanged(QString)), s, SLOT(stationIdChanged(QString)) );
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
    QString signal = "stationIdChanged(QString)";
    ret = object->disconnect(object, SIGNAL(stationIdChanged(QString)), s, SLOT(stationIdChanged(QString)) );
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

HB_FUNC( QRADIODATA_ONPROGRAMTYPECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRadioData(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "programTypeChanged(QRadioData::ProgramType)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(programTypeChanged(QRadioData::ProgramType)), s, SLOT(programTypeChanged(QRadioData::ProgramType)) );
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
    QString signal = "programTypeChanged(QRadioData::ProgramType)";
    ret = object->disconnect(object, SIGNAL(programTypeChanged(QRadioData::ProgramType)), s, SLOT(programTypeChanged(QRadioData::ProgramType)) );
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

HB_FUNC( QRADIODATA_ONPROGRAMTYPENAMECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRadioData(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "programTypeNameChanged(QString)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(programTypeNameChanged(QString)), s, SLOT(programTypeNameChanged(QString)) );
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
    QString signal = "programTypeNameChanged(QString)";
    ret = object->disconnect(object, SIGNAL(programTypeNameChanged(QString)), s, SLOT(programTypeNameChanged(QString)) );
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

HB_FUNC( QRADIODATA_ONSTATIONNAMECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRadioData(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "stationNameChanged(QString)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(stationNameChanged(QString)), s, SLOT(stationNameChanged(QString)) );
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
    QString signal = "stationNameChanged(QString)";
    ret = object->disconnect(object, SIGNAL(stationNameChanged(QString)), s, SLOT(stationNameChanged(QString)) );
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

HB_FUNC( QRADIODATA_ONRADIOTEXTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRadioData(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "radioTextChanged(QString)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(radioTextChanged(QString)), s, SLOT(radioTextChanged(QString)) );
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
    QString signal = "radioTextChanged(QString)";
    ret = object->disconnect(object, SIGNAL(radioTextChanged(QString)), s, SLOT(radioTextChanged(QString)) );
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

HB_FUNC( QRADIODATA_ONALTERNATIVEFREQUENCIESENABLEDCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRadioData(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "alternativeFrequenciesEnabledChanged(bool)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(alternativeFrequenciesEnabledChanged(bool)), s, SLOT(alternativeFrequenciesEnabledChanged(bool)) );
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
    QString signal = "alternativeFrequenciesEnabledChanged(bool)";
    ret = object->disconnect(object, SIGNAL(alternativeFrequenciesEnabledChanged(bool)), s, SLOT(alternativeFrequenciesEnabledChanged(bool)) );
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

HB_FUNC( QRADIODATA_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQRadioData(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "error(QRadioData::Error)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(error(QRadioData::Error)), s, SLOT(error(QRadioData::Error)) );
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
    QString signal = "error(QRadioData::Error)";
    ret = object->disconnect(object, SIGNAL(error(QRadioData::Error)), s, SLOT(error(QRadioData::Error)) );
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
