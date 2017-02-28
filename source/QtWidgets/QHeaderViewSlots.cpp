/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QHeaderViewSlots.h"


static SlotsQHeaderView * s = NULL;

SlotsQHeaderView::SlotsQHeaderView(QObject *parent) : QObject(parent)
{
}

SlotsQHeaderView::~SlotsQHeaderView()
{
}

void SlotsQHeaderView::geometriesChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "geometriesChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
     hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQHeaderView::sectionAutoResize ( int logicalIndex, QHeaderView::ResizeMode mode )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionAutoResize(int,QHeaderView::ResizeMode)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    PHB_ITEM pmode = hb_itemPutNI( NULL, (int) mode );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, plogicalIndex, pmode );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
    hb_itemRelease( pmode );
  }
}

void SlotsQHeaderView::sectionClicked ( int logicalIndex )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionClicked(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plogicalIndex );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
  }
}

void SlotsQHeaderView::sectionCountChanged ( int oldCount, int newCount )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionCountChanged(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM poldCount = hb_itemPutNI( NULL, oldCount );
    PHB_ITEM pnewCount = hb_itemPutNI( NULL, newCount );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, poldCount, pnewCount );
    hb_itemRelease( psender );
    hb_itemRelease( poldCount );
    hb_itemRelease( pnewCount );
  }
}

void SlotsQHeaderView::sectionDoubleClicked ( int logicalIndex )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionDoubleClicked(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plogicalIndex );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
  }
}

void SlotsQHeaderView::sectionEntered ( int logicalIndex )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionEntered(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plogicalIndex );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
  }
}

void SlotsQHeaderView::sectionHandleDoubleClicked ( int logicalIndex )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionHandleDoubleClicked(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plogicalIndex );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
  }
}

void SlotsQHeaderView::sectionMoved ( int logicalIndex, int oldVisualIndex, int newVisualIndex )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionMoved(int,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    PHB_ITEM poldVisualIndex = hb_itemPutNI( NULL, oldVisualIndex );
    PHB_ITEM pnewVisualIndex = hb_itemPutNI( NULL, newVisualIndex );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, plogicalIndex, poldVisualIndex, pnewVisualIndex );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
    hb_itemRelease( poldVisualIndex );
    hb_itemRelease( pnewVisualIndex );
  }
}

void SlotsQHeaderView::sectionPressed ( int logicalIndex )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionPressed(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plogicalIndex );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
  }
}

void SlotsQHeaderView::sectionResized ( int logicalIndex, int oldSize, int newSize )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sectionResized(int,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    PHB_ITEM poldSize = hb_itemPutNI( NULL, oldSize );
    PHB_ITEM pnewSize = hb_itemPutNI( NULL, newSize );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, plogicalIndex, poldSize, pnewSize );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
    hb_itemRelease( poldSize );
    hb_itemRelease( pnewSize );
  }
}

void SlotsQHeaderView::sortIndicatorChanged ( int logicalIndex, Qt::SortOrder order )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sortIndicatorChanged(int,Qt::SortOrder)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    PHB_ITEM porder = hb_itemPutNI( NULL, (int) order );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, plogicalIndex, porder );
    hb_itemRelease( psender );
    hb_itemRelease( plogicalIndex );
    hb_itemRelease( porder );
  }
}

HB_FUNC( QHEADERVIEW_ONGEOMETRIESCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "geometriesChanged()";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(geometriesChanged()), s, SLOT(geometriesChanged()) );
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
    QString signal = "geometriesChanged()";
    ret = object->disconnect(object, SIGNAL(geometriesChanged()), s, SLOT(geometriesChanged()) );
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

HB_FUNC( QHEADERVIEW_ONSECTIONAUTORESIZE )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "sectionAutoResize(int,QHeaderView::ResizeMode)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(sectionAutoResize(int,QHeaderView::ResizeMode)), s, SLOT(sectionAutoResize(int,QHeaderView::ResizeMode)) );
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
    QString signal = "sectionAutoResize(int,QHeaderView::ResizeMode)";
    ret = object->disconnect(object, SIGNAL(sectionAutoResize(int,QHeaderView::ResizeMode)), s, SLOT(sectionAutoResize(int,QHeaderView::ResizeMode)) );
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

HB_FUNC( QHEADERVIEW_ONSECTIONCLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "sectionClicked(int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(sectionClicked(int)), s, SLOT(sectionClicked(int)) );
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
    QString signal = "sectionClicked(int)";
    ret = object->disconnect(object, SIGNAL(sectionClicked(int)), s, SLOT(sectionClicked(int)) );
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

HB_FUNC( QHEADERVIEW_ONSECTIONCOUNTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "sectionCountChanged(int,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(sectionCountChanged(int,int)), s, SLOT(sectionCountChanged(int,int)) );
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
    QString signal = "sectionCountChanged(int,int)";
    ret = object->disconnect(object, SIGNAL(sectionCountChanged(int,int)), s, SLOT(sectionCountChanged(int,int)) );
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

HB_FUNC( QHEADERVIEW_ONSECTIONDOUBLECLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "sectionDoubleClicked(int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(sectionDoubleClicked(int)), s, SLOT(sectionDoubleClicked(int)) );
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
    QString signal = "sectionDoubleClicked(int)";
    ret = object->disconnect(object, SIGNAL(sectionDoubleClicked(int)), s, SLOT(sectionDoubleClicked(int)) );
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

HB_FUNC( QHEADERVIEW_ONSECTIONENTERED )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "sectionEntered(int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(sectionEntered(int)), s, SLOT(sectionEntered(int)) );
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
    QString signal = "sectionEntered(int)";
    ret = object->disconnect(object, SIGNAL(sectionEntered(int)), s, SLOT(sectionEntered(int)) );
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

HB_FUNC( QHEADERVIEW_ONSECTIONHANDLEDOUBLECLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "sectionHandleDoubleClicked(int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(sectionHandleDoubleClicked(int)), s, SLOT(sectionHandleDoubleClicked(int)) );
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
    QString signal = "sectionHandleDoubleClicked(int)";
    ret = object->disconnect(object, SIGNAL(sectionHandleDoubleClicked(int)), s, SLOT(sectionHandleDoubleClicked(int)) );
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

HB_FUNC( QHEADERVIEW_ONSECTIONMOVED )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "sectionMoved(int,int,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(sectionMoved(int,int,int)), s, SLOT(sectionMoved(int,int,int)) );
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
    QString signal = "sectionMoved(int,int,int)";
    ret = object->disconnect(object, SIGNAL(sectionMoved(int,int,int)), s, SLOT(sectionMoved(int,int,int)) );
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

HB_FUNC( QHEADERVIEW_ONSECTIONPRESSED )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "sectionPressed(int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(sectionPressed(int)), s, SLOT(sectionPressed(int)) );
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
    QString signal = "sectionPressed(int)";
    ret = object->disconnect(object, SIGNAL(sectionPressed(int)), s, SLOT(sectionPressed(int)) );
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

HB_FUNC( QHEADERVIEW_ONSECTIONRESIZED )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "sectionResized(int,int,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(sectionResized(int,int,int)), s, SLOT(sectionResized(int,int,int)) );
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
    QString signal = "sectionResized(int,int,int)";
    ret = object->disconnect(object, SIGNAL(sectionResized(int,int,int)), s, SLOT(sectionResized(int,int,int)) );
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

HB_FUNC( QHEADERVIEW_ONSORTINDICATORCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQHeaderView(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "sortIndicatorChanged(int,Qt::SortOrder)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(sortIndicatorChanged(int,Qt::SortOrder)), s, SLOT(sortIndicatorChanged(int,Qt::SortOrder)) );
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
    QString signal = "sortIndicatorChanged(int,Qt::SortOrder)";
    ret = object->disconnect(object, SIGNAL(sortIndicatorChanged(int,Qt::SortOrder)), s, SLOT(sortIndicatorChanged(int,Qt::SortOrder)) );
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
