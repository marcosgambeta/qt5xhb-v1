%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPROCESSENVIRONMENT
REQUEST QBYTEARRAY
#endif

CLASS QProcess INHERIT QIODevice

   METHOD new
   METHOD delete

   METHOD closeReadChannel
   METHOD closeWriteChannel
   METHOD environment
   METHOD error
   METHOD exitCode
   METHOD exitStatus
   METHOD nativeArguments
   METHOD processChannelMode
   METHOD processEnvironment
   METHOD readAllStandardError
   METHOD readAllStandardOutput
   METHOD readChannel
   METHOD setEnvironment
   METHOD setNativeArguments
   METHOD setProcessChannelMode
   METHOD setProcessEnvironment
   METHOD setReadChannel
   METHOD setStandardErrorFile
   METHOD setStandardInputFile
   METHOD setStandardOutputFile
   METHOD setStandardOutputProcess
   METHOD setWorkingDirectory
   METHOD start
   METHOD state
   METHOD waitForFinished
   METHOD waitForStarted
   METHOD workingDirectory
   METHOD atEnd
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD isSequential
   METHOD waitForBytesWritten
   METHOD waitForReadyRead
   METHOD kill
   METHOD terminate
   METHOD execute
   METHOD startDetached
   METHOD systemEnvironment
   METHOD open
   METHOD program
   METHOD setProgram
   METHOD arguments
   METHOD setArguments
   METHOD readChannelMode
   METHOD setReadChannelMode
   METHOD inputChannelMode
   METHOD setInputChannelMode
   METHOD processId
   METHOD nullDevice
%%   METHOD createProcessArgumentsModifier

   METHOD onError
   METHOD onErrorOccurred
   METHOD onFinished
   METHOD onReadyReadStandardError
   METHOD onReadyReadStandardOutput
   METHOD onStarted
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QProcess ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void closeReadChannel ( ProcessChannel channel )
$method=|void|closeReadChannel|QProcess::ProcessChannel

$prototype=void closeWriteChannel ()
$method=|void|closeWriteChannel|

$prototype=QStringList environment () const
$method=|QStringList|environment|

$prototype=QProcess::ProcessError error () const
$method=|QProcess::ProcessError|error|

$prototype=int exitCode () const
$method=|int|exitCode|

$prototype=QProcess::ExitStatus exitStatus () const
$method=|QProcess::ExitStatus|exitStatus|

$prototype=QString nativeArguments () const
$method=|QString|nativeArguments||#if defined(Q_OS_WIN)

$prototype=ProcessChannelMode processChannelMode () const
$method=|QProcess::ProcessChannelMode|processChannelMode|

$prototype=QProcessEnvironment processEnvironment () const
$method=|QProcessEnvironment|processEnvironment|

$prototype=QByteArray readAllStandardError ()
$method=|QByteArray|readAllStandardError|

$prototype=QByteArray readAllStandardOutput ()
$method=|QByteArray|readAllStandardOutput|

$prototype=ProcessChannel readChannel () const
$method=|QProcess::ProcessChannel|readChannel|

$prototype=void setEnvironment ( const QStringList & environment )
$method=|void|setEnvironment|const QStringList &

$prototype=void setNativeArguments ( const QString & arguments )
$method=|void|setNativeArguments|const QString &|#if defined(Q_OS_WIN)

$prototype=void setProcessChannelMode ( ProcessChannelMode mode )
$method=|void|setProcessChannelMode|QProcess::ProcessChannelMode

$prototype=void setProcessEnvironment ( const QProcessEnvironment & environment )
$method=|void|setProcessEnvironment|const QProcessEnvironment &

$prototype=void setReadChannel ( ProcessChannel channel )
$method=|void|setReadChannel|QProcess::ProcessChannel

$prototype=void setStandardErrorFile ( const QString & fileName, OpenMode mode = Truncate )
$method=|void|setStandardErrorFile|const QString &,QIODevice::OpenMode=QIODevice::Truncate

$prototype=void setStandardInputFile ( const QString & fileName )
$method=|void|setStandardInputFile|const QString &

$prototype=void setStandardOutputFile ( const QString & fileName, OpenMode mode = Truncate )
$method=|void|setStandardOutputFile|const QString &,QIODevice::OpenMode=QIODevice::Truncate

$prototype=void setStandardOutputProcess ( QProcess * destination )
$method=|void|setStandardOutputProcess|QProcess *

$prototype=void setWorkingDirectory ( const QString & dir )
$method=|void|setWorkingDirectory|const QString &

$prototype=void start(const QString &program, const QStringList &arguments, OpenMode mode = ReadWrite)
$internalMethod=|void|start,start1|const QString &,const QStringList &,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void start(const QString &command, OpenMode mode = ReadWrite)
$internalMethod=|void|start,start2|const QString &,QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=void start(OpenMode mode = ReadWrite)
$internalMethod=5,1,0|void|start,start3|QIODevice::OpenMode=QIODevice::ReadWrite

//[1]void start(const QString &program, const QStringList &arguments, OpenMode mode = ReadWrite)
//[2]void start(const QString &command, OpenMode mode = ReadWrite)
//[3]void start(OpenMode mode = ReadWrite)

HB_FUNC_STATIC( QPROCESS_START )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISARRAY(2) && ISOPTNUM(3) )
  {
    QProcess_start1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QProcess_start2();
  }
  else if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QProcess_start3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QProcess::ProcessState state () const
$method=|QProcess::ProcessState|state|

$prototype=bool waitForFinished ( int msecs = 30000 )
$method=|bool|waitForFinished|int=30000

$prototype=bool waitForStarted ( int msecs = 30000 )
$method=|bool|waitForStarted|int=30000

$prototype=QString workingDirectory () const
$method=|QString|workingDirectory|

$prototype=bool atEnd () const
$method=|bool|atEnd|

$prototype=qint64 bytesAvailable () const
$method=|qint64|bytesAvailable|

$prototype=qint64 bytesToWrite () const
$method=|qint64|bytesToWrite|

$prototype=bool canReadLine () const
$method=|bool|canReadLine|

$prototype=void close ()
$method=|void|close|

$prototype=bool isSequential () const
$method=|bool|isSequential|

$prototype=virtual bool waitForBytesWritten ( int msecs = 30000 )
$virtualMethod=|bool|waitForBytesWritten|int=30000

$prototype=virtual bool waitForReadyRead ( int msecs = 30000 )
$virtualMethod=|bool|waitForReadyRead|int=30000

$prototype=void kill ()
$method=|void|kill|

$prototype=void terminate ()
$method=|void|terminate|

$prototype=static int execute ( const QString & program, const QStringList & arguments )
$internalStaticMethod=|int|execute,execute1|const QString &,const QStringList &

$prototype=static int execute ( const QString & command )
$internalStaticMethod=|int|execute,execute2|const QString &

//[1]int execute ( const QString & program, const QStringList & arguments )
//[2]int execute ( const QString & program )

HB_FUNC_STATIC( QPROCESS_EXECUTE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QProcess_execute1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QProcess_execute2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static bool startDetached ( const QString & program, const QStringList & arguments, const QString & workingDirectory, qint64 * pid = 0 )
%% TODO: implementar 'qint64 *=0'
%% $staticMethod=|bool|startDetached,startDetached1|const QString &,const QStringList &,const QString &,qint64 *=0
$internalStaticMethod=|bool|startDetached,startDetached1|const QString &,const QStringList &,const QString &

$prototype=static bool startDetached ( const QString & program, const QStringList & arguments )
$internalStaticMethod=|bool|startDetached,startDetached2|const QString &,const QStringList &

$prototype=static bool startDetached ( const QString & program )
$internalStaticMethod=|bool|startDetached,startDetached3|const QString &

$prototype=bool QProcess::startDetached(qint64 *pid = nullptr) Require 5.10.0
%% TODO: implementar

//[1]bool startDetached ( const QString & program, const QStringList & arguments, const QString & workingDirectory, qint64 * pid = 0 )
//[2]bool startDetached ( const QString & program, const QStringList & arguments )
//[3]bool startDetached ( const QString & program )

HB_FUNC_STATIC( QPROCESS_STARTDETACHED )
{
  if( ISBETWEEN(3,4) && ISCHAR(1) && ISARRAY(2) && ISCHAR(3) && ISOPTNUM(4) )
  {
    QProcess_startDetached1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QProcess_startDetached2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QProcess_startDetached3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QStringList systemEnvironment ()
$staticMethod=|QStringList|systemEnvironment|

$prototype=bool open(OpenMode mode = ReadWrite) Q_DECL_OVERRIDE
$method=|bool|open|QIODevice::OpenMode=QIODevice::ReadWrite

$prototype=QString program() const
$method=|QString|program|

$prototype=void setProgram(const QString &program)
$method=5,1,0|void|setProgram|const QString &

$prototype=QStringList arguments() const
$method=|QStringList|arguments|

$prototype=void setArguments(const QStringList & arguments)
$method=5,1,0|void|setArguments|const QStringList &

$prototype=ProcessChannelMode readChannelMode() const
$method=|QProcess::ProcessChannelMode|readChannelMode|

$prototype=void setReadChannelMode(ProcessChannelMode mode)
$method=|void|setReadChannelMode|QProcess::ProcessChannelMode

$prototype=InputChannelMode inputChannelMode() const
$method=5,2,0|QProcess::InputChannelMode|inputChannelMode|

$prototype=void setInputChannelMode(InputChannelMode mode)
$method=5,2,0|void|setInputChannelMode|QProcess::InputChannelMode

$prototype=qint64 processId() const
$method=5,3,0|qint64|processId|

$prototype=static QString nullDevice()
$staticMethod=5,2,0|QString|nullDevice|

$prototype=CreateProcessArgumentModifier QProcess::createProcessArgumentsModifier() const
%% TODO: implementar
%% $method=5,7,0|CreateProcessArgumentModifier|createProcessArgumentsModifier|

$prototype=void QProcess::setCreateProcessArgumentsModifier(CreateProcessArgumentModifier modifier) Require 5.7.0 Win C++11

$beginSignals
$signalMethod=|error(QProcess::ProcessError)
$signalMethod=|finished(int,QProcess::ExitStatus)
$signalMethod=|readyReadStandardError()
$signalMethod=|readyReadStandardOutput()
$signalMethod=|started()
$signalMethod=|stateChanged(QProcess::ProcessState)
$signalMethod=5,6,0|errorOccurred(QProcess::ProcessError)
$endSignals

#pragma ENDDUMP
