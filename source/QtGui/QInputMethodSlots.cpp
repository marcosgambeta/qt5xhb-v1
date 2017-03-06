/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QInputMethodSlots.h"


static SlotsQInputMethod * s = NULL;

SlotsQInputMethod::SlotsQInputMethod(QObject *parent) : QObject(parent)
{
}

SlotsQInputMethod::~SlotsQInputMethod()
{
}

void SlotsQInputMethod::animatingChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "animatingChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQInputMethod::cursorRectangleChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cursorRectangleChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQInputMethod::inputDirectionChanged(Qt::LayoutDirection newDirection)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "inputDirectionChanged(Qt::LayoutDirection)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pnewDirection = hb_itemPutNI( NULL, (int) newDirection );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewDirection );
    hb_itemRelease( psender );
    hb_itemRelease( pnewDirection );
  }
}

void SlotsQInputMethod::keyboardRectangleChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "keyboardRectangleChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQInputMethod::localeChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "localeChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQInputMethod::visibleChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "visibleChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QINPUTMETHOD_ONANIMATINGCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQInputMethod(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "animatingChanged()", "animatingChanged()" ) );

}

HB_FUNC( QINPUTMETHOD_ONCURSORRECTANGLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQInputMethod(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "cursorRectangleChanged()", "cursorRectangleChanged()" ) );

}

HB_FUNC( QINPUTMETHOD_ONINPUTDIRECTIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQInputMethod(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "inputDirectionChanged(Qt::LayoutDirection)", "inputDirectionChanged(Qt::LayoutDirection)" ) );

}

HB_FUNC( QINPUTMETHOD_ONKEYBOARDRECTANGLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQInputMethod(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "keyboardRectangleChanged()", "keyboardRectangleChanged()" ) );

}

HB_FUNC( QINPUTMETHOD_ONLOCALECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQInputMethod(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "localeChanged()", "localeChanged()" ) );

}

HB_FUNC( QINPUTMETHOD_ONVISIBLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQInputMethod(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "visibleChanged()", "visibleChanged()" ) );

}
