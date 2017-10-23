/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QDoubleSpinBoxSlots.h"


static SlotsQDoubleSpinBox * s = NULL;

SlotsQDoubleSpinBox::SlotsQDoubleSpinBox(QObject *parent) : QObject(parent)
{
}

SlotsQDoubleSpinBox::~SlotsQDoubleSpinBox()
{
}

void SlotsQDoubleSpinBox::valueChanged ( double d )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged(double)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pd = hb_itemPutND( NULL, d );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pd );
    hb_itemRelease( psender );
    hb_itemRelease( pd );
  }
}

void SlotsQDoubleSpinBox::valueChanged ( const QString & text )
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

HB_FUNC( QDOUBLESPINBOX_ONVALUECHANGED1 )
{
  if( s == NULL )
  {
    s = new SlotsQDoubleSpinBox(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "valueChanged(double)", "valueChanged(double)" ) );
}

HB_FUNC( QDOUBLESPINBOX_ONVALUECHANGED2 )
{
  if( s == NULL )
  {
    s = new SlotsQDoubleSpinBox(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "valueChanged(QString)", "valueChanged(QString)" ) );
}
