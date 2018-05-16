%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

   METHOD new
   METHOD delete
   METHOD swap
   METHOD names
   METHOD setValueName
   METHOD valueName
   METHOD setDescription
   METHOD description
   METHOD setDefaultValue
   METHOD setDefaultValues
   METHOD defaultValues

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCommandLineOption(const QString &name, const QString &description = QString(),const QString &valueName = QString(),const QString &defaultValue = QString())
$internalConstructor=|new1|const QString &,const QString &=QString(),const QString &=QString(),const QString &=QString()

$prototype=QCommandLineOption(const QStringList &names, const QString &description = QString(),const QString &valueName = QString(),const QString &defaultValue = QString())
$internalConstructor=|new2|const QStringList &,const QString &=QString(),const QString &=QString(),const QString &=QString()

$prototype=QCommandLineOption(const QCommandLineOption &other)
$internalConstructor=|new3|const QCommandLineOption &

//[1]QCommandLineOption(const QString &name, const QString &description = QString(),const QString &valueName = QString(),const QString &defaultValue = QString())
//[2]QCommandLineOption(const QStringList &names, const QString &description = QString(),const QString &valueName = QString(),const QString &defaultValue = QString())
//[3]QCommandLineOption(const QCommandLineOption &other)

HB_FUNC_STATIC( QCOMMANDLINEOPTION_NEW )
{
  if( ISBETWEEN(1,4) && ISCHAR(1) && ISOPTCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) )
  {
    QCommandLineOption_new1();
  }
  else if( ISBETWEEN(1,4) && ISARRAY(1) && ISOPTCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) )
  {
    QCommandLineOption_new2();
  }
  else if( ISNUMPAR(1) && ISQCOMMANDLINEOPTION(1) )
  {
    QCommandLineOption_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void swap(QCommandLineOption &other)
$method=|void|swap|QCommandLineOption &

$prototype=QStringList names() const
$method=|QStringList|names|

$prototype=void setValueName(const QString &name)
$method=|void|setValueName|const QString &

$prototype=QString valueName() const
$method=|QString|valueName|

$prototype=void setDescription(const QString &description)
$method=|void|setDescription|const QString &

$prototype=QString description() const
$method=|QString|description|

$prototype=void setDefaultValue(const QString &defaultValue)
$method=|void|setDefaultValue|const QString &

$prototype=void setDefaultValues(const QStringList &defaultValues)
$method=|void|setDefaultValues|const QStringList &

$prototype=QStringList defaultValues() const
$method=|QStringList|defaultValues|

$extraMethods

#pragma ENDDUMP
