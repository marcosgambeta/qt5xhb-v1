%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQAxScript::entered ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "entered()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAxScript::error ( int code, const QString & description, int sourcePosition, const QString & sourceText )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(int,QString,int,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcode = hb_itemPutNI( NULL, code );
    PHB_ITEM pdescription = hb_itemPutC( NULL, QSTRINGTOSTRING(description) );
    PHB_ITEM psourcePosition = hb_itemPutNI( NULL, sourcePosition );
    PHB_ITEM psourceText = hb_itemPutC( NULL, QSTRINGTOSTRING(sourceText) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 5, psender, pcode, pdescription, psourcePosition, psourceText );
    hb_itemRelease( psender );
    hb_itemRelease( pcode );
    hb_itemRelease( pdescription );
    hb_itemRelease( psourcePosition );
    hb_itemRelease( psourceText );
  }
}

void SlotsQAxScript::finished ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAxScript::finished ( const QVariant & result )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished(QVariant)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM presult = hb_itemPutPtr( NULL, (QVariant *) &result );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, presult );
    hb_itemRelease( psender );
    hb_itemRelease( presult );
  }
}

void SlotsQAxScript::finished ( int code, const QString & source, const QString & description, const QString & help )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished(int,QString,QString,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcode = hb_itemPutNI( NULL, code );
    PHB_ITEM psource = hb_itemPutC( NULL, QSTRINGTOSTRING(source) );
    PHB_ITEM pdescription = hb_itemPutC( NULL, QSTRINGTOSTRING(description) );
    PHB_ITEM phelp = hb_itemPutC( NULL, QSTRINGTOSTRING(help) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 5, psender, pcode, psource, pdescription, phelp );
    hb_itemRelease( psender );
    hb_itemRelease( pcode );
    hb_itemRelease( psource );
    hb_itemRelease( pdescription );
    hb_itemRelease( phelp );
  }
}

void SlotsQAxScript::stateChanged ( int state )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstate = hb_itemPutNI( NULL, state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

$signalMethod=|entered|entered()
$signalMethod=|error|error(int,QString,int,QString)
$beginGroup
$signalMethod=|finished()
$signalMethod=|finished(QVariant)
$signalMethod=|finished(int,QString,QString,QString)
$endGroup
$signalMethod=|stateChanged(int)

$endSlotsClass
