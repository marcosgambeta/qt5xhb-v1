%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=5,2,0|editingFinished()

void SlotsQKeySequenceEdit::keySequenceChanged(const QKeySequence &keySequence)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "keySequenceChanged(QKeySequence)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pkeySequence = hb_itemPutPtr( NULL, (QKeySequence *) &keySequence );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pkeySequence );
    hb_itemRelease( psender );
    hb_itemRelease( pkeySequence );
  }
#endif
}

$signalMethod=5,2,0|editingFinished()
$signalMethod=5,2,0|keySequenceChanged(QKeySequence)

$endSlotsClass
