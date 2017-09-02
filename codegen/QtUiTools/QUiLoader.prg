$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QACTIONGROUP
REQUEST QLAYOUT
REQUEST QWIDGET
REQUEST QDIR
#endif

CLASS QUiLoader INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addPluginPath
   METHOD availableLayouts
   METHOD availableWidgets
   METHOD clearPluginPaths
   METHOD createAction
   METHOD createActionGroup
   METHOD createLayout
   METHOD createWidget
   METHOD isLanguageChangeEnabled
   METHOD load
   METHOD pluginPaths
   METHOD setLanguageChangeEnabled
   METHOD setWorkingDirectory
   METHOD workingDirectory

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>
#include <QDir>

/*
QUiLoader ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
void addPluginPath ( const QString & path )
*/
$method=|void|addPluginPath|const QString &

/*
QStringList availableLayouts () const
*/
$method=|QStringList|availableLayouts|

/*
QStringList availableWidgets () const
*/
$method=|QStringList|availableWidgets|

/*
void clearPluginPaths ()
*/
$method=|void|clearPluginPaths|

/*
virtual QAction * createAction ( QObject * parent = 0, const QString & name = QString() )
*/
$method=|QAction *|createAction|QObject *=0,const QString &=QString()

/*
virtual QActionGroup * createActionGroup ( QObject * parent = 0, const QString & name = QString() )
*/
$method=|QActionGroup *|createActionGroup|QObject *=0,const QString &=QString()

/*
virtual QLayout * createLayout ( const QString & className, QObject * parent = 0, const QString & name = QString() )
*/
$method=|QLayout *|createLayout|const QString &,QObject *=0,const QString &=QString()

/*
virtual QWidget * createWidget ( const QString & className, QWidget * parent = 0, const QString & name = QString() )
*/
$method=|QWidget *|createWidget|const QString &,QWidget *=0,const QString &=QString()

/*
bool isLanguageChangeEnabled () const
*/
$method=|bool|isLanguageChangeEnabled|

/*
QWidget * load ( QIODevice * device, QWidget * parentWidget = 0 )
*/
$method=|QWidget *|load|QIODevice *,QWidget *=0

/*
QStringList pluginPaths () const
*/
$method=|QStringList|pluginPaths|

/*
void setLanguageChangeEnabled ( bool enabled )
*/
$method=|void|setLanguageChangeEnabled|bool

/*
void setWorkingDirectory ( const QDir & dir )
*/
$method=|void|setWorkingDirectory|const QDir &

/*
QDir workingDirectory () const
*/
$method=|QDir|workingDirectory|

#pragma ENDDUMP
