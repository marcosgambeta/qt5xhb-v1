%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQCamera::captureModeChanged(QCamera::CaptureModes mode)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "captureModeChanged(QCamera::CaptureModes)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmode = hb_itemPutNI( NULL, (int) mode );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmode );
    hb_itemRelease( psender );
    hb_itemRelease( pmode );
  }
}

void SlotsQCamera::error(QCamera::Error value)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QCamera::Error)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, (int) value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

$slot=|lockFailed()

void SlotsQCamera::lockStatusChanged(QCamera::LockStatus status, QCamera::LockChangeReason reason)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "lockStatusChanged(QCamera::LockStatus,QCamera::LockChangeReason)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );
    PHB_ITEM preason = hb_itemPutNI( NULL, (int) reason );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pstatus, preason );
    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
    hb_itemRelease( preason );
  }
}

void SlotsQCamera::lockStatusChanged(QCamera::LockType lock, QCamera::LockStatus status, QCamera::LockChangeReason reason)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "lockStatusChanged(QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plock = hb_itemPutNI( NULL, (int) lock );
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );
    PHB_ITEM preason = hb_itemPutNI( NULL, (int) reason );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, plock, pstatus, preason );
    hb_itemRelease( psender );
    hb_itemRelease( plock );
    hb_itemRelease( pstatus );
    hb_itemRelease( preason );
  }
}

$slot=|locked()

void SlotsQCamera::stateChanged(QCamera::State state)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QCamera::State)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

void SlotsQCamera::statusChanged(QCamera::Status status)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "statusChanged(QCamera::Status)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstatus );
    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
  }
}

$signalMethod=|captureModeChanged(QCamera::CaptureModes)
$signalMethod=|error(QCamera::Error)
$signalMethod=|lockFailed()
$signalMethod=|lockStatusChanged(QCamera::LockStatus,QCamera::LockChangeReason)
$signalMethod=|lockStatusChanged(QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason)
$signalMethod=|locked()
$signalMethod=|stateChanged(QCamera::State)
$signalMethod=|statusChanged(QCamera::Status)

$endSlotsClass
