$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOMMANDLINEOPTION
#endif

CLASS QCommandLineParser

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setSingleDashWordOptionMode
   METHOD addOption
   METHOD addVersionOption
   METHOD addHelpOption
   METHOD setApplicationDescription
   METHOD applicationDescription
   METHOD addPositionalArgument
   METHOD clearPositionalArguments
   METHOD process
   METHOD parse
   METHOD errorText
   METHOD isSet
   METHOD value
   METHOD values
   METHOD positionalArguments
   METHOD optionNames
   METHOD unknownOptionNames
   METHOD showHelp
   METHOD helpText

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
QCommandLineParser()
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * o = new QCommandLineParser ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

$deleteMethod=5,2,0

/*
void setSingleDashWordOptionMode(SingleDashWordOptionMode parsingMode)
*/
$method=5,2,0|void|setSingleDashWordOptionMode|QCommandLineParser::SingleDashWordOptionMode

/*
bool addOption(const QCommandLineOption &commandLineOption)
*/
$method=5,2,0|bool|addOption|const QCommandLineOption &

/*
QCommandLineOption addVersionOption()
*/
$method=5,2,0|QCommandLineOption|addVersionOption|

/*
QCommandLineOption addHelpOption()
*/
$method=5,2,0|QCommandLineOption|addHelpOption|

/*
void setApplicationDescription(const QString &description)
*/
$method=5,2,0|void|setApplicationDescription|const QString &

/*
QString applicationDescription() const
*/
$method=5,2,0|QString|applicationDescription|

/*
void addPositionalArgument(const QString &name, const QString &description, const QString &syntax = QString())
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_ADDPOSITIONALARGUMENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCommandLineParser * obj = (QCommandLineParser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISCHAR(2) && ISOPTCHAR(3) )
    {
      obj->addPositionalArgument ( PQSTRING(1), PQSTRING(2), OPQSTRING(3,QString()) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void clearPositionalArguments()
*/
$method=5,2,0|void|clearPositionalArguments|

/*
void process(const QStringList &arguments)
*/
$internalMethod=5,2,0|void|process,process1|const QStringList &

/*
void process(const QCoreApplication &app)
*/
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

/*
bool parse(const QStringList &arguments)
*/
$method=5,2,0|bool|parse|const QStringList &

/*
QString errorText() const
*/
$method=5,2,0|QString|errorText|

/*
bool isSet(const QString &name) const
*/
$internalMethod=5,2,0|bool|isSet,isSet1|const QString &

/*
bool isSet(const QCommandLineOption &option) const
*/
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

/*
QString value(const QString &name) const
*/
$internalMethod=5,2,0|QString|value,value1|const QString &

/*
QString value(const QCommandLineOption &option) const
*/
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

/*
QStringList values(const QString &name) const
*/
$internalMethod=5,2,0|QStringList|values,values1|const QString &

/*
QStringList values(const QCommandLineOption &option) const
*/
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

/*
QStringList positionalArguments() const
*/
$method=5,2,0|QStringList|positionalArguments|

/*
QStringList optionNames() const
*/
$method=5,2,0|QStringList|optionNames|

/*
QStringList unknownOptionNames() const
*/
$method=5,2,0|QStringList|unknownOptionNames|

/*
Q_NORETURN void showHelp(int exitCode = 0)
*/
$method=5,2,0|void|showHelp|int=0

/*
QString helpText() const
*/
$method=5,2,0|QString|helpText|

$extraMethods

#pragma ENDDUMP
