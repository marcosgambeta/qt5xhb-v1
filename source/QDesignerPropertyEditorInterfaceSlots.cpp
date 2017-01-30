/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QDesignerPropertyEditorInterfaceSlots.h"


static SlotsQDesignerPropertyEditorInterface * s = NULL;

SlotsQDesignerPropertyEditorInterface::SlotsQDesignerPropertyEditorInterface(QObject *parent) : QObject(parent)
{
}

SlotsQDesignerPropertyEditorInterface::~SlotsQDesignerPropertyEditorInterface()
{
}

void SlotsQDesignerPropertyEditorInterface::propertyChanged ( const QString & name, const QVariant & value )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "propertyChanged(QString,QVariant)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pname = hb_itemPutC( NULL, (const char *) name.toLatin1().data() );
    PHB_ITEM pvalue = hb_itemPutPtr( NULL, (QVariant *) &value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pname, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
    hb_itemRelease( pvalue );
  }
#endif
}

HB_FUNC( QDESIGNERPROPERTYEDITORINTERFACE_ONPROPERTYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQDesignerPropertyEditorInterface(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "propertyChanged(QString,QVariant)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(propertyChanged(QString,QVariant)), s, SLOT(propertyChanged(QString,QVariant)) );
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
    QString signal = "propertyChanged(QString,QVariant)";
    ret = object->disconnect(object, SIGNAL(propertyChanged(QString,QVariant)), s, SLOT(propertyChanged(QString,QVariant)) );
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

