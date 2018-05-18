%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QObject

   METHOD new
   METHOD delete

   METHOD injectionPoint
   METHOD name
   METHOD runOnSubframes
   METHOD setInjectionPoint
   METHOD setName
   METHOD setRunOnSubframes
   METHOD setSourceCode
   METHOD setSourceUrl
   METHOD setWorldId
   METHOD sourceCode
   METHOD sourceUrl
   METHOD toString
   METHOD worldId

   METHOD onInjectionPointChanged
   METHOD onNameChanged
   METHOD onRunOnSubframesChanged
   METHOD onSourceCodeChanged
   METHOD onSourceUrlChanged
   METHOD onWorldIdChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,9,0

$prototype=explicit QQuickWebEngineScript(QObject *parent = Q_NULLPTR)
$constructor=5,9,0|new|QObject *=Q_NULLPTR

$prototype=~QQuickWebEngineScript()
$deleteMethod=5,9,0

%%
%% Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged FINAL)
%%

$prototype=QString name() const
$method=5,9,0|QString|name|

$prototype=Q_INVOKABLE void setName(const QString &name)
$method=5,9,0|void|setName|const QString &

%%
%% Q_PROPERTY(QUrl sourceUrl READ sourceUrl WRITE setSourceUrl NOTIFY sourceUrlChanged FINAL)
%%

$prototype=QUrl sourceUrl() const
$method=5,9,0|QUrl|sourceUrl|

$prototype=Q_INVOKABLE void setSourceUrl(const QUrl &url)
$method=5,9,0|void|setSourceUrl|const QUrl &

%%
%% Q_PROPERTY(QString sourceCode READ sourceCode WRITE setSourceCode NOTIFY sourceCodeChanged FINAL)
%%

$prototype=QString sourceCode() const
$method=5,9,0|QString|sourceCode|

$prototype=Q_INVOKABLE void setSourceCode(const QString &code)
$method=5,9,0|void|setSourceCode|const QString &

%%
%% Q_PROPERTY(InjectionPoint injectionPoint READ injectionPoint WRITE setInjectionPoint NOTIFY injectionPointChanged FINAL)
%%

$prototype=InjectionPoint injectionPoint() const
$method=5,9,0|QQuickWebEngineScript::InjectionPoint|injectionPoint|

$prototype=Q_INVOKABLE void setInjectionPoint(InjectionPoint injectionPoint)
$method=5,9,0|void|setInjectionPoint|QQuickWebEngineScript::InjectionPoint

%%
%% Q_PROPERTY(ScriptWorldId worldId READ worldId WRITE setWorldId NOTIFY worldIdChanged FINAL)
%%

$prototype=ScriptWorldId worldId() const
$method=5,9,0|QQuickWebEngineScript::ScriptWorldId|worldId|

$prototype=Q_INVOKABLE void setWorldId(ScriptWorldId scriptWorldId)
$method=5,9,0|void|setWorldId|QQuickWebEngineScript::ScriptWorldId

%%
%% Q_PROPERTY(bool runOnSubframes READ runOnSubframes WRITE setRunOnSubframes NOTIFY runOnSubframesChanged FINAL)
%%

$prototype=bool runOnSubframes() const
$method=5,9,0|bool|runOnSubframes|

$prototype=Q_INVOKABLE void setRunOnSubframes(bool on)
$method=5,9,0|void|setRunOnSubframes|bool

%%
%%
%%

$prototype=Q_INVOKABLE QString toString() const
$method=5,9,0|QString|toString|

$beginSignals
$signal=|injectionPointChanged(QQuickWebEngineScript::InjectionPoint)
$signal=|nameChanged(QString)
$signal=|runOnSubframesChanged(bool)
$signal=|sourceCodeChanged(QString)
$signal=|sourceUrlChanged(QUrl)
$signal=|worldIdChanged(QQuickWebEngineScript::ScriptWorldId)
$endSignals

#pragma ENDDUMP
