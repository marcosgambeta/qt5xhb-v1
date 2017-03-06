/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QRegularExpressionValidatorSlots.h"


static SlotsQRegularExpressionValidator * s = NULL;

SlotsQRegularExpressionValidator::SlotsQRegularExpressionValidator(QObject *parent) : QObject(parent)
{
}

SlotsQRegularExpressionValidator::~SlotsQRegularExpressionValidator()
{
}

void SlotsQRegularExpressionValidator::regularExpressionChanged(const QRegularExpression &re)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "regularExpressionChanged(QRegularExpression)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pre = hb_itemPutPtr( NULL, (QRegularExpression *) &re );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pre );
    hb_itemRelease( psender );
    hb_itemRelease( pre );
  }
}

HB_FUNC( QREGULAREXPRESSIONVALIDATOR_ONREGULAREXPRESSIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRegularExpressionValidator(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "regularExpressionChanged(QRegularExpression)", "regularExpressionChanged(QRegularExpression)" ) );

}
