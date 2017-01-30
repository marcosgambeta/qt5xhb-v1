/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QTreeWidgetSlots.h"


static SlotsQTreeWidget * s = NULL;

SlotsQTreeWidget::SlotsQTreeWidget(QObject *parent) : QObject(parent)
{
}

SlotsQTreeWidget::~SlotsQTreeWidget()
{
}

void SlotsQTreeWidget::currentItemChanged ( QTreeWidgetItem * current, QTreeWidgetItem * previous )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentItemChanged(QTreeWidgetItem*,QTreeWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcurrent = hb_itemPutPtr( NULL, (QTreeWidgetItem *) current );
    PHB_ITEM pprevious = hb_itemPutPtr( NULL, (QTreeWidgetItem *) previous );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcurrent, pprevious );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
    hb_itemRelease( pprevious );
  }
#endif
}

void SlotsQTreeWidget::itemActivated ( QTreeWidgetItem * item, int column )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemActivated(QTreeWidgetItem*,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTreeWidgetItem *) item );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pitem, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
    hb_itemRelease( pcolumn );
  }
#endif
}

void SlotsQTreeWidget::itemChanged ( QTreeWidgetItem * item, int column )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemChanged(QTreeWidgetItem*,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTreeWidgetItem *) item );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pitem, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
    hb_itemRelease( pcolumn );
  }
#endif
}

void SlotsQTreeWidget::itemClicked ( QTreeWidgetItem * item, int column )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemClicked(QTreeWidgetItem*,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTreeWidgetItem *) item );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pitem, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
    hb_itemRelease( pcolumn );
  }
#endif
}

void SlotsQTreeWidget::itemCollapsed ( QTreeWidgetItem * item )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemCollapsed(QTreeWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTreeWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
#endif
}

void SlotsQTreeWidget::itemDoubleClicked ( QTreeWidgetItem * item, int column )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemDoubleClicked(QTreeWidgetItem*,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTreeWidgetItem *) item );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pitem, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
    hb_itemRelease( pcolumn );
  }
#endif
}

void SlotsQTreeWidget::itemEntered ( QTreeWidgetItem * item, int column )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemEntered(QTreeWidgetItem*,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTreeWidgetItem *) item );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pitem, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
    hb_itemRelease( pcolumn );
  }
#endif
}

void SlotsQTreeWidget::itemExpanded ( QTreeWidgetItem * item )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemExpanded(QTreeWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTreeWidgetItem *) item );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
#endif
}

void SlotsQTreeWidget::itemPressed ( QTreeWidgetItem * item, int column )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemPressed(QTreeWidgetItem*,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitem = hb_itemPutPtr( NULL, (QTreeWidgetItem *) item );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pitem, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
    hb_itemRelease( pcolumn );
  }
#endif
}

void SlotsQTreeWidget::itemSelectionChanged ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemSelectionChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
     hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

HB_FUNC( QTREEWIDGET_ONCURRENTITEMCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQTreeWidget(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "currentItemChanged(QTreeWidgetItem*,QTreeWidgetItem*)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(currentItemChanged(QTreeWidgetItem*,QTreeWidgetItem*)), s, SLOT(currentItemChanged(QTreeWidgetItem*,QTreeWidgetItem*)) );
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
    QString signal = "currentItemChanged(QTreeWidgetItem*,QTreeWidgetItem*)";
    ret = object->disconnect(object, SIGNAL(currentItemChanged(QTreeWidgetItem*,QTreeWidgetItem*)), s, SLOT(currentItemChanged(QTreeWidgetItem*,QTreeWidgetItem*)) );
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

HB_FUNC( QTREEWIDGET_ONITEMACTIVATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQTreeWidget(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "itemActivated(QTreeWidgetItem*,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(itemActivated(QTreeWidgetItem*,int)), s, SLOT(itemActivated(QTreeWidgetItem*,int)) );
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
    QString signal = "itemActivated(QTreeWidgetItem*,int)";
    ret = object->disconnect(object, SIGNAL(itemActivated(QTreeWidgetItem*,int)), s, SLOT(itemActivated(QTreeWidgetItem*,int)) );
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

HB_FUNC( QTREEWIDGET_ONITEMCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQTreeWidget(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "itemChanged(QTreeWidgetItem*,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(itemChanged(QTreeWidgetItem*,int)), s, SLOT(itemChanged(QTreeWidgetItem*,int)) );
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
    QString signal = "itemChanged(QTreeWidgetItem*,int)";
    ret = object->disconnect(object, SIGNAL(itemChanged(QTreeWidgetItem*,int)), s, SLOT(itemChanged(QTreeWidgetItem*,int)) );
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

HB_FUNC( QTREEWIDGET_ONITEMCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQTreeWidget(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "itemClicked(QTreeWidgetItem*,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(itemClicked(QTreeWidgetItem*,int)), s, SLOT(itemClicked(QTreeWidgetItem*,int)) );
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
    QString signal = "itemClicked(QTreeWidgetItem*,int)";
    ret = object->disconnect(object, SIGNAL(itemClicked(QTreeWidgetItem*,int)), s, SLOT(itemClicked(QTreeWidgetItem*,int)) );
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

HB_FUNC( QTREEWIDGET_ONITEMCOLLAPSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQTreeWidget(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "itemCollapsed(QTreeWidgetItem*)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(itemCollapsed(QTreeWidgetItem*)), s, SLOT(itemCollapsed(QTreeWidgetItem*)) );
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
    QString signal = "itemCollapsed(QTreeWidgetItem*)";
    ret = object->disconnect(object, SIGNAL(itemCollapsed(QTreeWidgetItem*)), s, SLOT(itemCollapsed(QTreeWidgetItem*)) );
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

HB_FUNC( QTREEWIDGET_ONITEMDOUBLECLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQTreeWidget(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "itemDoubleClicked(QTreeWidgetItem*,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(itemDoubleClicked(QTreeWidgetItem*,int)), s, SLOT(itemDoubleClicked(QTreeWidgetItem*,int)) );
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
    QString signal = "itemDoubleClicked(QTreeWidgetItem*,int)";
    ret = object->disconnect(object, SIGNAL(itemDoubleClicked(QTreeWidgetItem*,int)), s, SLOT(itemDoubleClicked(QTreeWidgetItem*,int)) );
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

HB_FUNC( QTREEWIDGET_ONITEMENTERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQTreeWidget(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "itemEntered(QTreeWidgetItem*,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(itemEntered(QTreeWidgetItem*,int)), s, SLOT(itemEntered(QTreeWidgetItem*,int)) );
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
    QString signal = "itemEntered(QTreeWidgetItem*,int)";
    ret = object->disconnect(object, SIGNAL(itemEntered(QTreeWidgetItem*,int)), s, SLOT(itemEntered(QTreeWidgetItem*,int)) );
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

HB_FUNC( QTREEWIDGET_ONITEMEXPANDED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQTreeWidget(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "itemExpanded(QTreeWidgetItem*)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(itemExpanded(QTreeWidgetItem*)), s, SLOT(itemExpanded(QTreeWidgetItem*)) );
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
    QString signal = "itemExpanded(QTreeWidgetItem*)";
    ret = object->disconnect(object, SIGNAL(itemExpanded(QTreeWidgetItem*)), s, SLOT(itemExpanded(QTreeWidgetItem*)) );
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

HB_FUNC( QTREEWIDGET_ONITEMPRESSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQTreeWidget(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "itemPressed(QTreeWidgetItem*,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(itemPressed(QTreeWidgetItem*,int)), s, SLOT(itemPressed(QTreeWidgetItem*,int)) );
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
    QString signal = "itemPressed(QTreeWidgetItem*,int)";
    ret = object->disconnect(object, SIGNAL(itemPressed(QTreeWidgetItem*,int)), s, SLOT(itemPressed(QTreeWidgetItem*,int)) );
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

HB_FUNC( QTREEWIDGET_ONITEMSELECTIONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQTreeWidget(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "itemSelectionChanged()";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(itemSelectionChanged()), s, SLOT(itemSelectionChanged()) );
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
    QString signal = "itemSelectionChanged()";
    ret = object->disconnect(object, SIGNAL(itemSelectionChanged()), s, SLOT(itemSelectionChanged()) );
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

