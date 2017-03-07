/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QQmlExpressionSlots.h"


static SlotsQQmlExpression * s = NULL;

SlotsQQmlExpression::SlotsQQmlExpression(QObject *parent) : QObject(parent)
{
}

SlotsQQmlExpression::~SlotsQQmlExpression()
{
}

void SlotsQQmlExpression::valueChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QQMLEXPRESSION_ONVALUECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQQmlExpression(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "valueChanged()", "valueChanged()" ) );
}
