/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QSpinBoxSlots.h"


static SlotsQSpinBox * s = NULL;

SlotsQSpinBox::SlotsQSpinBox(QObject *parent) : QObject(parent)
{
}

SlotsQSpinBox::~SlotsQSpinBox()
{
}

void SlotsQSpinBox::valueChanged ( int value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

void SlotsQSpinBox::valueChanged ( const QString & text )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptext );
    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}

HB_FUNC( QSPINBOX_ONVALUECHANGED1 )
{
  if( s == NULL )
  {
    s = new SlotsQSpinBox(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "valueChanged(int)", "valueChanged(int)" ) );
}

HB_FUNC( QSPINBOX_ONVALUECHANGED2 )
{
  if( s == NULL )
  {
    s = new SlotsQSpinBox(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "valueChanged(QString)", "valueChanged(QString)" ) );
}
