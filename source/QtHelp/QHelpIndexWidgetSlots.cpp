/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QHelpIndexWidgetSlots.h"


static SlotsQHelpIndexWidget * s = NULL;

SlotsQHelpIndexWidget::SlotsQHelpIndexWidget(QObject *parent) : QObject(parent)
{
}

SlotsQHelpIndexWidget::~SlotsQHelpIndexWidget()
{
}

void SlotsQHelpIndexWidget::linkActivated ( const QUrl & link, const QString & keyword )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "linkActivated(QUrl,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plink = hb_itemPutPtr( NULL, (QUrl *) &link );
    PHB_ITEM pkeyword = hb_itemPutC( NULL, (const char *) keyword.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, plink, pkeyword );
    hb_itemRelease( psender );
    hb_itemRelease( plink );
    hb_itemRelease( pkeyword );
  }
}

HB_FUNC( QHELPINDEXWIDGET_ONLINKACTIVATED )
{
  if( s == NULL )
  {
    s = new SlotsQHelpIndexWidget(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "linkActivated(QUrl,QString)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(linkActivated(QUrl,QString)), s, SLOT(linkActivated(QUrl,QString)) );
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
    QString signal = "linkActivated(QUrl,QString)";
    ret = object->disconnect(object, SIGNAL(linkActivated(QUrl,QString)), s, SLOT(linkActivated(QUrl,QString)) );
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
