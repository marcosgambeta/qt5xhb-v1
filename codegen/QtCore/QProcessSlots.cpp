%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QProcessSlots.h"

static SlotsQProcess * s = NULL;

SlotsQProcess::SlotsQProcess(QObject *parent) : QObject(parent)
{
}

SlotsQProcess::~SlotsQProcess()
{
}

void SlotsQProcess::error ( QProcess::ProcessError error )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QProcess::ProcessError)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}

void SlotsQProcess::finished ( int exitCode, QProcess::ExitStatus exitStatus )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished(int,QProcess::ExitStatus)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pexitCode = hb_itemPutNI( NULL, exitCode );
    PHB_ITEM pexitStatus = hb_itemPutNI( NULL, (int) exitStatus );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pexitCode, pexitStatus );
    hb_itemRelease( psender );
    hb_itemRelease( pexitCode );
    hb_itemRelease( pexitStatus );
  }
}

void SlotsQProcess::readyReadStandardError ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "readyReadStandardError()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQProcess::readyReadStandardOutput ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "readyReadStandardOutput()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQProcess::started ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "started()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQProcess::stateChanged ( QProcess::ProcessState newState )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QProcess::ProcessState)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pnewState = hb_itemPutNI( NULL, (int) newState );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewState );
    hb_itemRelease( psender );
    hb_itemRelease( pnewState );
  }
}

HB_FUNC( QPROCESS_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQProcess(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QProcess::ProcessError)", "error(QProcess::ProcessError)" ) );
}

HB_FUNC( QPROCESS_ONFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQProcess(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "finished(int,QProcess::ExitStatus)", "finished(int,QProcess::ExitStatus)" ) );
}

HB_FUNC( QPROCESS_ONREADYREADSTANDARDERROR )
{
  if( s == NULL )
  {
    s = new SlotsQProcess(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "readyReadStandardError()", "readyReadStandardError()" ) );
}

HB_FUNC( QPROCESS_ONREADYREADSTANDARDOUTPUT )
{
  if( s == NULL )
  {
    s = new SlotsQProcess(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "readyReadStandardOutput()", "readyReadStandardOutput()" ) );
}

HB_FUNC( QPROCESS_ONSTARTED )
{
  if( s == NULL )
  {
    s = new SlotsQProcess(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "started()", "started()" ) );
}

HB_FUNC( QPROCESS_ONSTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQProcess(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stateChanged(QProcess::ProcessState)", "stateChanged(QProcess::ProcessState)" ) );
}
