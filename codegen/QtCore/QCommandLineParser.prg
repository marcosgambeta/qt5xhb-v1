%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QCommandLineParser()
$constructor=5,2,0|new|

$deleteMethod=5,2,0

$prototype=void setSingleDashWordOptionMode(SingleDashWordOptionMode parsingMode)
$method=5,2,0|void|setSingleDashWordOptionMode|QCommandLineParser::SingleDashWordOptionMode

$prototype=bool addOption(const QCommandLineOption &commandLineOption)
$method=5,2,0|bool|addOption|const QCommandLineOption &

$prototype=QCommandLineOption addVersionOption()
$method=5,2,0|QCommandLineOption|addVersionOption|

$prototype=QCommandLineOption addHelpOption()
$method=5,2,0|QCommandLineOption|addHelpOption|

$prototype=void setApplicationDescription(const QString &description)
$method=5,2,0|void|setApplicationDescription|const QString &

$prototype=QString applicationDescription() const
$method=5,2,0|QString|applicationDescription|

$prototype=void addPositionalArgument(const QString &name, const QString &description, const QString &syntax = QString())
$method=5,2,0|void|addPositionalArgument|const QString &,const QString &,const QString &=QString()

$prototype=void clearPositionalArguments()
$method=5,2,0|void|clearPositionalArguments|

$prototype=void process(const QStringList &arguments)
$internalMethod=5,2,0|void|process,process1|const QStringList &

$prototype=void process(const QCoreApplication &app)
$internalMethod=5,2,0|void|process,process2|const QCoreApplication &

//[1]void process(const QStringList &arguments)
//[2]void process(const QCoreApplication &app)

HB_FUNC_STATIC( QCOMMANDLINEPARSER_PROCESS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QCommandLineParser_process1();
  }
  else if( ISNUMPAR(1) && ISQCOREAPPLICATION(1) )
  {
    QCommandLineParser_process2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=process

$prototype=bool parse(const QStringList &arguments)
$method=5,2,0|bool|parse|const QStringList &

$prototype=QString errorText() const
$method=5,2,0|QString|errorText|

$prototype=bool isSet(const QString &name) const
$internalMethod=5,2,0|bool|isSet,isSet1|const QString &

$prototype=bool isSet(const QCommandLineOption &option) const
$internalMethod=5,2,0|bool|isSet,isSet2|const QCommandLineOption &

//[1]bool isSet(const QString &name) const
//[2]bool isSet(const QCommandLineOption &option) const

HB_FUNC_STATIC( QCOMMANDLINEPARSER_ISSET )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QCommandLineParser_isSet1();
  }
  else if( ISNUMPAR(1) && ISQCOMMANDLINEOPTION(1) )
  {
    QCommandLineParser_isSet2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=isSet

$prototype=QString value(const QString &name) const
$internalMethod=5,2,0|QString|value,value1|const QString &

$prototype=QString value(const QCommandLineOption &option) const
$internalMethod=5,2,0|QString|value,value2|const QCommandLineOption &

//[1]QString value(const QString &name) const
//[2]QString value(const QCommandLineOption &option) const

HB_FUNC_STATIC( QCOMMANDLINEPARSER_VALUE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QCommandLineParser_value1();
  }
  else if( ISNUMPAR(1) && ISQCOMMANDLINEOPTION(1) )
  {
    QCommandLineParser_value2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=value

$prototype=QStringList values(const QString &name) const
$internalMethod=5,2,0|QStringList|values,values1|const QString &

$prototype=QStringList values(const QCommandLineOption &option) const
$internalMethod=5,2,0|QStringList|values,values2|const QCommandLineOption &

//[1]QStringList values(const QString &name) const
//[2]QStringList values(const QCommandLineOption &option) const

HB_FUNC_STATIC( QCOMMANDLINEPARSER_VALUES )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QCommandLineParser_values1();
  }
  else if( ISNUMPAR(1) && ISQCOMMANDLINEOPTION(1) )
  {
    QCommandLineParser_values2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=values

$prototype=QStringList positionalArguments() const
$method=5,2,0|QStringList|positionalArguments|

$prototype=QStringList optionNames() const
$method=5,2,0|QStringList|optionNames|

$prototype=QStringList unknownOptionNames() const
$method=5,2,0|QStringList|unknownOptionNames|

$prototype=Q_NORETURN void showHelp(int exitCode = 0)
$method=5,2,0|void|showHelp|int=0

$prototype=QString helpText() const
$method=5,2,0|QString|helpText|

$extraMethods

#pragma ENDDUMP
