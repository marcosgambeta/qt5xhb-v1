%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQProcess: public QObject
{
  Q_OBJECT
  public:
  SlotsQProcess(QObject *parent = 0);
  ~SlotsQProcess();
  public slots:
  void error ( QProcess::ProcessError error );
  void finished ( int exitCode, QProcess::ExitStatus exitStatus );
  void readyReadStandardError ();
  void readyReadStandardOutput ();
  void started ();
  void stateChanged ( QProcess::ProcessState newState );
};
